Rails.application.routes.draw do
 devise_for :users
  as :user  do
  	get "signin" => 'devise/sessions#new'
  	get "signup" => 'devise/registrations#new'
  	delete "signout" => 'devise/registrations#destroy'
  end

  root 'pages#home'
  get 'about' => 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


  

  
