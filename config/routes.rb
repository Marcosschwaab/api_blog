Rails.application.routes.draw do

  namespace :api, constraints: lambda { |req| req.format == :json} do
    namespace :v1 do
     resources :articles, only: :index
    end
  end# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
