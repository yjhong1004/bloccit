Rails.application.routes.draw do
  resources :topics do
     resources :posts, except: [:index]
     resources :sponsored_posts, except: [:index]
  end
  resources :questions
  resources :users, only: [:new, :create]

  get 'about' => 'welcome#about'
  get 'welcome/contact'
  get 'welcome/faq'

  root 'welcome#index'
end
