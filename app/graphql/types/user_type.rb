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
                                           description: "User's comments on posts",
                                           resolver: Resolvers::UserCommentsResolver
  end
end
