# encoding: utf-8
puts 'Seeding database with a single poem.'

user = User.create!(
  login: 'yaymukund',
  password: 'test12',
  password_confirmation: 'test12'
)

poem = Poem.create!(
  user: user,
  title: 'The Coming of War: Actæon'
)

stanzas = [
  [
    'An image of Lethe,',
    '                and the fields',
    'Full of faint light',
    '              but golden,',
    'Gray cliffs,',
    '        and beneath them',
    'A sea',
    'Harsher than granite,',
    '        unstill, never ceasing;'
  ], [
    'High forms',
    '        with the movement of gods,',
    'Perilous aspect;',
    '            And one said:',
    '“This is Actaeon.”',
    '              Actaeon of golden greaves!'
  ], [
    'Over fair meadows,',
    'Over the cool face of that field,',
    'Unstill, ever moving,',
    'Host of an ancient people,',
    'The silent cortège.'
  ]
].each_with_index do |lines, stanza_rank|
  stanza = Stanza.create!(
    poem: poem,
    rank: stanza_rank
  )

  lines.each_with_index do |line, line_rank|
    Line.create!(
      stanza: stanza,
      text: line,
      rank: line_rank
    )
  end
end
