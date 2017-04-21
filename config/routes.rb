# frozen_string_literal: true
Rails.application.routes.draw do
  resources :orders
  resources :records
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  resources :blogs, only: [:create, :update, :destroy]
  resources :blogs, except: [:new, :edit]
  resources :comments, only: [:create, :update, :destroy]
  resources :comments, except: [:new, :edit]
  resources :records, only: [:create, :update, :destroy]
  resources :records, except: [:new, :edit]
  resources :orders, only: [:create, :update, :destroy]
  resources :orders, except: [:new, :edit]
  resources :blogs do
    resources :comments
  end
end
