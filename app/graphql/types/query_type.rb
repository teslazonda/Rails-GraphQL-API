module Types
  class QueryType < Types::BaseObject
    # Get all users
    field :users, [Types::UserType], null: false
    def users
      User.all
    end

    # Get a specific user
    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end
    def user(id:)
      User.find(id)
    end
  end
end


# Query to get all users:
# query {
#   user(id: 1) {
#     firstName
#     lastName
#     email
#     moviesCount
#     movies {
#       title
#       year
#       genre
#     }
#   }
# }


# Query to get a single user:

# query {
#   user(id: 1) {
#     firstName
#     lastName
#     email
#     moviesCount
#     movies {
#       title
#       year
#       genre
#     }
#   }
# }
