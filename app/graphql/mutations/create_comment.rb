class Mutations::CreateComment < Mutations::BaseMutation
  null true
  argument :body, String
  argument :post_id, ID

  field :comment, Types::CommentType
  field :errors, [String], null: false

  # The #resolve method should return a hash whose symbols match the field names.
  def resolve(body:, post_id:)
    {
      comment: OpenStruct.new(id: 2, body: "new comment created", post_id: 1),
      errors: [],
    }
  end
  # def resolve(body:, post_id:)
  #   post = Post.find(post_id)
  #   comment = post.comments.build(body: body, author: context[:current_user])
  #   if comment.save
  #     # Successful creation, return the created object with no errors
  #     {
  #       comment: comment,
  #       errors: [],
  #     }
  #   else
  #     # Failed save, return the errors to the client
  #     {
  #       comment: nil,
  #       errors: comment.errors.full_messages
  #     }
  #   end
  # end
end
