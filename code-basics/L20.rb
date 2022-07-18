#!/usr/bin/env ruby

data = {
    'Queen' => [
      'Bohemian Rhapsody',
      "Don't Stop Me Now"
    ],
    'Metallica' => [
      'Nothing Else Matters'
    ],
    "Guns N' Roses" => [
      'Paradise City',
      'November Rain'
    ],
    'AC/DC' => [
      'Thunderstruck',
      'Back In Black',
      'Shoot to Thrill'
    ]
  }

def plainify(hash)
  result=[]
  hash.each do |group, songs|
    songs.each do |sng|
      record={band: group, song: sng}
      result << record
    end
  end
  puts result
end

result = plainify data
result.map {|r| puts "#{r}"}
# [
#   { band: 'Queen', song: 'Bohemian Rhapsody' },
#   { band: 'Queen', song: "Don't Stop Me Now" },
#   { band: 'Metallica', song: 'Nothing Else Matters' },
#   { band: "Guns N' Roses", song: 'Paradise City' },
#   { band: "Guns N' Roses", song: 'November Rain' },
#   { band: 'AC/DC', song: 'Thunderstruck' },
#   { band: 'AC/DC', song: 'Back In Black' },
#   { band: 'AC/DC', song: 'Shoot to Thrill' }
# ]