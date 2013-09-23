Fabricator(:stanza) do
  lines(count: 2)
  rank { sequence(:rank) }
end
