Rails.application.routes.draw do
  root 'billboards#index'
  resources :billboards do
    resources :artists
  end

 scope 'artists/:artist_id', as: 'artist' do
    resources :songs
  end
  
end