Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #

  namespace :api do
    namespace :v1 do
      %w[below_freezing above_freezing].each do |scope|
        get "recordings/#{scope}", to: 'recordings#index', scope: "#{scope}"
      end
      # get 'recordings/below_freezing', to: 'recordings#index', scope: 'below_freezing'
      # get 'recordings/above_freezing', to: 'recordings#index', scope: 'above_freezing'
      resources :locations do
        resources :recordings
      end
    end
  end

  resources :locations
end
