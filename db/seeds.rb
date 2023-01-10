# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Project.destroy_all

puts "Creating projects..."
guild_terminal = { title: "Wake The Tiger Guild Terminal", description: "JavaScript functioanlity for Wake The Tiger's Guild Terminal", image_url: "guild_terminal_img.png"}
a_white = { title: "A White Workshop", description: "Website design for carpenter and furniture maker Alexander White", image_url: "awhite_img.png"}
rechair =  { title: "Rechair", description: "Final project on Le Wagon's web development course. A web app that allows users to book spaces in university lecture theatres", image_url: "rechair_img.png"}
replay = { title: "Replay", description: "First project on Le Wagon's web development course. A web app modelled on Air BnB that allows users to borrow board games", image_url: "replay_img.png"}
carly =  { title: "Carly Sandland", description: "Website built on Wordpress for doula and birth practitioner Carly Sandland", image_url: "carly_img.png"}

[ guild_terminal, a_white, rechair, replay, carly].each do |attributes|
  project = Project.create!(attributes)
  puts "Created #{project.title}"
end
puts "Finished!"
