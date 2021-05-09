Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  # resources :listings do                  # have to place this route at top for id to not equal to main_page
  #   collection do
  #     get 'main_page', to: '/listings/main_page'
  #   end
  # end
  
  

  resources :users, only: [:new, :create, :show, :index] do
    resources :listings, only: [:index, :new]
  end
  
  resources :listings, only: [:create, :show, :edit, :update, :destroy]
  
  resource :session, only: [:new, :create, :destroy]    # user having only one session at a time
  
end
