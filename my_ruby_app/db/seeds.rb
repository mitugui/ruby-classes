# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Post.create!([
  { title: "First Post", context: "This is the body of the first post." },
  { title: "Second Post", context: "This is the body of the second post." },
  { title: "Third Post", context: "This is the body of the third post." }
])

Comment.create!([
    { content: "Great post!", post_id: Post.find_by(title: "First Post").id },
    { content: "Very informative.", post_id: Post.find_by(title: "First Post").id }
])