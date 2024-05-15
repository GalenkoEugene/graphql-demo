module Types
  class CommentType < Types::BaseObject
    key fields: :id

    field :id, ID, null: false
    field :body, String, null: false
    field :post_id, ID, null: false
  end
end
