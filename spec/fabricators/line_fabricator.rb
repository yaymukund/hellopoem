Fabricator(:line) do
  text { sequence(:text) { |i| "This is line #{i}" }}
  rank { sequence(:rank) }
end
