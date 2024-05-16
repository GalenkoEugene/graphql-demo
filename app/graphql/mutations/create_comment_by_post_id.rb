# frozen_string_literal: true

module Mutations
  class CreateCommentByPostId < Mutations::BaseMutation
    argument :attributes, Types::CommentAttributes

    field :comment, Types::CommentType
    field :errors, [String], null: false

    def resolve(attributes:)
      Resolvers::Mutations::CreateCommentByPostIdResolver.call(body: attributes.body, post_id: attributes.post_id)
    end
  end
end
