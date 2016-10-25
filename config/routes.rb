Rails.application.routes.draw do
  constraints subdomain: 'api' do
    mount Music::Base => '/'
  end

  constraints subdomain: 'developers' do
    mount GrapeSwaggerRails::Engine => '/'
  end
end
