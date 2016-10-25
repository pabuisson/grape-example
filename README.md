# Grape example

A quick project to test several aspect of the ruby gem grape and several gems among its ecosystem for easily building and documenting APIs.

## Gems involved:

* [grape](https://github.com/ruby-grape/grape)
* [grape-entity](https://github.com/ruby-grape/grape-entity)
* [grape-swagger](https://github.com/ruby-grape/grape-swagger)
* [grape-swagger-rails](https://github.com/ruby-grape/grape-swagger-rails)


## Getting started

    rake db:create
    rake db:migrate
    rake db:seed
    rails server

The database is now ready, the server is running, we just need to launch some requests:

    curl -X POST -H "X-Api-Key: 565d34efaf32" -H "Content-type: application/json" -d '{"singer": {"first_name":"John", "last_name":"Lennon"}}' http://api.lvh.me:3000/v1/singers
    curl -H "X-Api-Key: 565d34efaf32" -H "Content-type: application/json" http://api.lvh.me:3000/v1/singers
