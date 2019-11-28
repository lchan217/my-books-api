Rails.application.routes.draw do
  resources :users
  scope '/api' do
    get :books, to: 'book#index'
    get :books, to: 'book#create'
    get :authors, to: 'author#index'
    post :authors, to: 'author#create'
  end
end
