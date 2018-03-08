Rails.application.routes.draw do
  resources :images
  root "images#index"
  post '/scrape' => 'images#scrape'
  get '/show_images' => 'images#show_images'
end
