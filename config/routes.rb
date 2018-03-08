Rails.application.routes.draw do
  resources :images
  root "images#index"
  post '/scrape' => 'images#scrape'
  post '/show_images' => 'images#show_images'
end
