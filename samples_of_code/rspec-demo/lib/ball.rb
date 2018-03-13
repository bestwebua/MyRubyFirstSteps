class Ball

  attr_reader :x, :y

  def initialize(*args)
    @x, @y = args
  end

  def move_to(action)
    actions = [:right, :left, :up, :down]
    raise 'Invalid action!' unless actions.include?(action)
    
    case action
      when :left  then @x-=1
      when :right then @x+=1
      when :up    then @y+=1
      when :down  then @y-=1
    end
  end

end
