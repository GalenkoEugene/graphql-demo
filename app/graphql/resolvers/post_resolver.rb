module Resolvers
  class PostResolver < BaseResolver
    type Types::PostType, null: false
    argument :id, ID

    def resolve(id:)
      # ::Post.find(id)
      OpenStruct.new(id: 1, title: "Hello, title", truncated_preview: "Demo graphql query", comments: [OpenStruct.new(id: 1)])
    end
  end
end
