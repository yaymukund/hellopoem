Fabricator(:user) do
  login { sequence(:login) { |i| "user#{i}" }}
  password { |u| "password for #{u[:login]}" }
  password_confirmation { |u| u[:password] }
end
