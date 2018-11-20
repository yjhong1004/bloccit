Rails.application.routes.draw do
  resources :topics do
     resources :posts, except: [:index]
     resources :sponsored_posts, except: [:index]
  end

  resources :posts, only: [] do
     resources :comments, only: [:create, :destroy]
   end
   
  resources :questions
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  get 'about' => 'welcome#about'
  get 'welcome/contact'
  get 'welcome/faq'

  root 'welcome#index'
end
