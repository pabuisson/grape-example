Rails.application.routes.draw do
  constraints subdomain: 'api' do
    mount Music::Base => '/'
  end
end
