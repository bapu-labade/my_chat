# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Delete all data
Country.delete_all
State.delete_all
City.delete_all



cntry = Country.first_or_create!(name: "India")
states = [{ name: 'Maharasthra'},{ name: 'Karnatka'}]
states.each do |st|
  cntry.states.create!(st)
end

st = State.where(name: 'Maharasthra').first
st.cities.create!([{name: 'Pune'}, {name: 'Ahmednagar'}, {name: 'Mumbai'}, {name: 'nagpur'}])



