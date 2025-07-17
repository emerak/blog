# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
   [{lang: :en, title: "Hello word", content: "Lorem ipsum dolor"}, {lang: :es, title: "Hola mundo", content: "Dolor ipsum lorem"}].each do |e|
     puts e[:lang]
     Mobility.locale = e[:lang]
     p = Post.new
     p.title= e[:title]
     p.content = e[:content]
     p.published_at = Time.now
     p.save
   end
