Rails.application.routes.draw do
  scope '/api' do
    get :books, to: 'books#index'
    get :books, to: 'books#create'
    get :authors, to: 'author#index'
    post :authors, to: 'author#create'
  end
end
