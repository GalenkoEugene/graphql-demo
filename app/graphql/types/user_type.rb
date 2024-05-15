# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    description "User entity from 'accounts' service"
    key fields: :id
    graphql_name 'User'
    extend_type

    field :id, ID, external: true,
                   description: "User's ID"
    field :comments, [Types::CommentType], null: false,
                                           description: "User's comments on posts"

    def comments
      Comment.where(post_id: object.id) # TODO: should be user_id
    end
  end
end
