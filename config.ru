# This file is used by Rack-based servers to start the application.

require 'rack/cors'

# Needed to avoid CORS error for the documentation. There are other ways of doing this
use Rack::Cors do
  allow do
    origins '*'
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :delete, :options]
  end
end


require ::File.expand_path('../config/environment', __FILE__)
run Rails.application

