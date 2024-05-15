# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Comment.destroy_all
Post.destroy_all

Post.create(title: 'This is the first post.', truncated_preview: 'First Post', comments: [
              Comment.new(body: 'Nice demo post!')
            ])
Post.create(title: 'This is the second post.', truncated_preview: 'Second Post', comments: [
              Comment.new(body: 'Nice post! Like it!'),
              Comment.new(body: 'Great post!')
            ])
