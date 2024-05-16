
# frozen_string_literal: true

namespace :graphql do
  namespace :federation do
    task dump: :environment do
      File.write('schema.graphql', GraphqlDemoSchema.federation_sdl)
    end
  end
end
