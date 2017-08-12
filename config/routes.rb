Rails.application.routes.draw do
  resources :cards do
    collection do
      get :incremental
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
