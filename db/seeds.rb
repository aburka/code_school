require "faker"

15.times do
  name = Faker::HarryPotter.character
  Student.create!(name: name, email: "#{name.downcase.gsub(" ", "_")}@hogwarts.#{Faker::HarryPotter.house.downcase.gsub(" ", "_")}.com")
end
