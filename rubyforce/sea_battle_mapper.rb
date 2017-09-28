=begin
Sea Battle Mapper by Vladislav Trotsenko.
Little bit of code from RubyForce tasks.

Write a method that will check out ships coords and print out them as a map.
Your fleet should consist: 1 of four-deck, 2 of three-deck, 3 of two-deck and
4 of single-deck ships.

Coordinates should be in a range a-j and 0-9.
=end

def sea_battle_mapper(locations)
  coords = locations.scan(/\w+/)
  error1, error2, error3 = ['You have incorrect coordinates!',
                      "Your fleet is not completed or have wrong amount of ships.",
                      "For one or more ships your coordinates isn't unique!"
                      ]

  abort error1 unless coords.all? { |coord| coord[/\A([a-j]([1-9]|10)){1,4}\z/i] }

  fleet = {}
  (1..4).reverse_each { |item| fleet[item] = [] }
    coords.each { |coord| fleet[coord.delete('0-9').size] << coord }
      type_test, total_test = 4, 1
        fleet.each do |type, total|
          abort error2 if [type, total.size] != [type_test, total_test]
          type_test-=1; total_test+=1
        end

  map_points, stack = [], []
  locations.scan(/[a-j]{1}|\d+/i)
    .map { |char| char =~ /\d/ ? char.to_i : char.downcase }
      .each.with_index do |char, index|
          stack << char
        map_points << stack.clone and stack.clear if index.odd?
      end

  abort error3 unless map_points == map_points.uniq

  map, coords_row, white, black = [], ('a'..'j').to_a, "\u2B1C", "\u2B1B"
    coords_column = (0..10).to_a.map { |number| number < 10 ? ' ' + number.to_s : number.to_s }
      map << coords_row
        10.times { map << [white]*10 }
      map_points.each do |point|
        letters, numbers = point
          map[numbers][coords_row.index(letters)] = black
      end
    map.map.with_index { |item, index| index.zero? ? item.unshift('  ') : item.unshift(coords_column[index]) }
  puts  map.map { |item| item.join(' ') }.join("\n")

end

sea_battle_mapper('a1b1c1d1, a3b3c3, d3e3f3, i3j3, i5j5, i7j7, a10, c10, e10, g10')