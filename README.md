# README

### Add graphql-ruby boilerplate and mount graphiql in development
```bash
rails g graphql:install
```
### You may need to run bundle install again, as by default graphiql-rails is added on installation.
```bash
bundle install
```
### Make your first object type
```bash
rails g graphql:object Post title:String rating:Int comments:[Comment]
```
w
