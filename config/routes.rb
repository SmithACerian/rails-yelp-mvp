Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/new', to: 'restaurants#new', as: :restaurant_new
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :restaurant_review_new
  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create', as: :restaurant_reviews
end

# '/restaurants/:restaurant_id/reviews/new'
# '/restaurants/:restaurant_id/reviews'
