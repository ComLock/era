Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'application#root'
  match '/auth/:provider/callback' => 'sessions#create', via: [:get, :post]
  get '/auth/failure' => redirect('/')
  get '/signout' => 'sessions#destroy', as: :signout

end
