Fabricator(:poem) do
  stanzas(count: 2)
  title { sequence(:title) { |i| "Poem #{i}" }}
end
