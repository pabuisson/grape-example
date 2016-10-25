require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GrapeExample
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true

    # Auto-load API and its subdirectories
    # config.paths.add File.join('app', 'api'), glob: File.join('**', '*.rb')
    # config.eager_load_paths += Dir[ Rails.root.join('app', 'api', '*') ]
  end
end
