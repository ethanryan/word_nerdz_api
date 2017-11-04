# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#below sorts all files in db/seeds folder alphabetically and loads each seed file into the database
#thus seeding the database with screenplays


Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each do |seed|
  load seed
end

###### make below load all files in seeds/01_plots_horror
Dir[File.join(Rails.root, 'db', 'seeds/01_plots_horror', '*.rb')].sort.each do |seed|
  load seed
end
