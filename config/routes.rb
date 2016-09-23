Rails.application.routes.draw do
  resources :quadrants
  resources :tasks

 	resources :quadrants do
	  resources :tasks, only: [:index, :new, :create]
	end
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
