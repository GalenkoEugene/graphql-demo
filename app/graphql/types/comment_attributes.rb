# frozen_string_literal: true

module Types
  class CommentAttributes < Types::BaseInputObject
    description 'Attributes for creating or updating a comment'

    argument :body, String, 'The body of the comment', required: true
    argument :post_id, ID, 'The ID of the post to which the comment belongs',
             required: true,
             validates: { format: { with: /\d/ } }
  end
end
