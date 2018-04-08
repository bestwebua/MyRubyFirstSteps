=begin
Rock Paper Scissors! by Vladislav Trotsenko.

=end



def rps(p1, p2)
  winner, players = [['paper', 'rock'], ['rock', 'scissors'], ['scissors', 'paper']], [p1, p2] 
    case
      when winner.include?(players) then 'Player 1 won!'
      when winner.map(&:reverse).include?(players) then 'Player 2 won!'
      else 'Draw!'
    end
end

rps('paper', 'paper')


=begin

=end