Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :contacts, only: :create # crea muchos routes para create, edit, view, destroy
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
