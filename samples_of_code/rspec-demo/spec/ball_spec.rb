require 'spec_helper'
require_relative '../lib/ball'

describe Ball do
  it 'instance of class Ball' do
    ball = Ball.new
    expect(ball).to be_an_instance_of(Ball)
  end

  it 'store and read x, y' do
    ball = Ball.new(1,2)
    expect(ball.x).to eq(1)
    expect(ball.y).to eq(2)
  end

  context "#move_to" do
    it "direction right - correlate x+1" do
      ball = Ball.new(1,2)
      ball.move_to :right
      expect(ball.x).to eq(2)
      expect(ball.y).to eq(2)
    end
  end
end