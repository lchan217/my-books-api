Rails.application.routes.draw do
  scope '/api' do
    get :books, to: 'book#index'
    get :books, to: 'book#create'
    get :authors, to: 'author#index'
    post :authors, to: 'author#create'
  end
end
