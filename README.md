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

You can then access the documentation at [developers.lvh.me:3000](http://developers.lvh.me:3000).
This documentation is auto-generated from the API itself and you can use it to send requests to test
the API (request will also show you how to launch the request using `curl`).

