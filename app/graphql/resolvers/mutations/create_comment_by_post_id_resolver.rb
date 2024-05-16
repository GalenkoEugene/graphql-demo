# frozen_string_literal: true

module Resolvers
  module Mutations
    class CreateCommentByPostIdResolver
      def self.call(...)
        new.call(...)
      end

      def call(body:, post_id:)
        post = Post.find(post_id)
        comment = post.comments.build(body:)

        if comment.save
          {
            comment:,
            errors: []
          }
        else
          {
            comment: nil,
            errors: comment.errors.full_messages
          }
        end
      end
    end
  end
end
