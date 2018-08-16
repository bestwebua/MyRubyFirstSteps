require 'rack'
require 'json'
require 'pry'
require 'mustermann'

class Router
  class App
    attr_reader :resolver

    def initialize(resolver)
      @resolver = resolver
    end

    def call(env)
      request_path = env['PATH_INFO']
      path_route = resolver.path_route(request_path)
      params = resolver.params
      route = [env['REQUEST_METHOD'], path_route]
      method_to_call = resolver.fetch(route)

      result =
        if !params.empty?
          Object.public_send(method_to_call, params)
        else
          Object.public_send(method_to_call)
        end

      ['200', {}, [result]]
    end
  end
end

class Router
  class Resolver
    attr_reader :params
    attr_accessor :routes, :patterns

    def initialize
      @routes = {}
      @patterns = []
    end

    def push(key, value)
      routes[key] = value
      patterns << Mustermann.new(key.last, type: :rails)
    end

    def fetch(route)
      routes[route]
    end

    def path_route(request_path)
      patterns.find do |pattern|
        pattern === request_path
        @params = pattern.params(request_path)
      end.to_s
    end
  end
end

class Router
  attr_accessor :resolver

  def initialize(&block)
    @resolver = Resolver.new
    instance_eval(&block) if block_given?
  end

  def get(path_route, **args)
    add_route('GET', path_route, args)
  end

  def post(path_route, **args)
    add_route('POST', path_route, args)
  end

  def add_route(request_method, path_route, **args)
    return unless args[:to]
    method_to_call = args[:to]
    resolver.push([request_method, path_route], method_to_call)
  end

  def resolve(request_method, path_route)
    resolver.fetch([request_method, path_route])
  end

  def to_app
    App.new(resolver)
  end
end

# lib/router.rb
# lib/router/app.rb

router = Router.new do
  get '/', to: :home
  get '/hello/:name', to: :hello
  post '/auth', to: :create_session
end

public

def home
  'Hello world'
end

def hello(params)
  # "Hello #{params[:id]}"
  params.to_json
end

puts router.resolve('GET', '/') # => :home
puts router.resolve('POST', '/auth') # => :create_session

Rack::Handler::WEBrick.run router.to_app
