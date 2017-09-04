=begin
  Instagram Hash Tag Converter by Vladislav Trotsenko.
=end

def to_instagram_hash_tag(string)
  string.split(', ').map { |i| '#' + i.tr(' ', '') }.join(' ')
end

to_instagram_hash_tag(' teddy camel, ooak camel, artist camel, mini teddy camel')
