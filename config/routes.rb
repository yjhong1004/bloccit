Rails.application.routes.draw do
  # get 'advertisements/index'
  # get 'advertisements/show'
  # get 'advertisements/new'
  # get 'advertisements/create'
  resources :advertisements
  resources :posts
  get 'about' => 'welcome#about'
  get 'welcome/contact'
  get 'welcome/faq'

  root 'welcome#index'
end
