Misadventure::Application.routes.draw do
  devise_for :users

  resources :books, :default=> { :format => 'json' }
 
#  authenticated :user do
    root :to => 'books#index'
#  end
#  root :to => 'home#index'
  #mount JasmineRails::Engine => "/specs" unless Rails.env.production?
  #match '*path', :to => 'backbone#hashify_path'
end
