Rails.application.routes.draw do
  resources :users
  scope '/api' do
    get :books, to: 'book#index'
    post :books, to: 'book#create'
    get :authors, to: 'author#index'
    post :authors, to: 'author#create'
    get :users, to: 'user#index'
    post :users, to: 'user#create'
    post 'user_token' => 'user_token#create'
  end
end
