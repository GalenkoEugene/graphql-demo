module Resolvers
  class UserCommentsResolver < BaseResolver
    type [Types::CommentType], null: false

    def resolve
      Comment.where(post_id: object[:id])
    end
  end
end
