# README

Welcome to teslazonda's Rails GraphQL API. This is a basic GraphQL API implemented with the help of the Ruby on Rails framework. 

This repository was inspired by [this](https://www.honeybadger.io/blog/graphql-apis-for-rails/) blog post. Thanks to the author [David Sanchez](https://twitter.com/SanchezDav90).  

### How to use

The API has two models in which it stores data: `users` and `movies`.

Through GraphQL we can fetch data on all users, a single user, or create a new user all through the same endpoint.  

After starting the server, you can test queries at `http://localhost:3000/graphiql` with a friendly graphical interface.  

### Sample queries: 

To fetch all users:
```query {
  users {
    firstName
    lastName
    email
    moviesCount
  }
}
```

To fetch a single user based on their ID:
```
query {
  user(id: 1) {
    firstName
    lastName
    email
    moviesCount
    movies {
      title
      year
      genre
    }
  }
}
```

A mutation to create a new user: 

```
mutation {
  createUser(input: {
    firstName: "Peter",
    lastName: "Parker",
    email: "spiderman@mail.com"
  }) {
    user {
      id
      firstName
      email
    }
    errors
  }
}
```



* Ruby version=2.7.3

* System dependencies=`graphql` gem and `graphiql-rails` gem for a graphical interface for testing queries.
