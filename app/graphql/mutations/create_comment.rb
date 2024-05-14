class Mutations::CreateComment < Mutations::BaseMutation
  null true
  argument :body, String
  argument :post_id, ID, loads: Types::PostType, as: :post# works only with global_id (take a look at GraphqlDemoSchema#object_from_id)

  # in next case resolver will be "resolve(body:, post_id:)". And manually we could find a post "Post.find(post_id)"
  # argument :post_id, ID

  field :comment, Types::CommentType
  field :errors, [String], null: false

  # The #resolve method should return a hash whose symbols match the field names.
  def resolve(body:, post:)
    comment = post.comments.build(body: body)
    if comment.save
      {
        comment: comment,
        errors: [],
      }
    else
      {
        comment: nil,
        errors: comment.errors.full_messages
      }
    end
  end
end
