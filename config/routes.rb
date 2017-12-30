Rails.application.routes.draw do
  get 'calendar/index'

  get 'profiles/index'

	resources :goals

  devise_for :users
	root to: "home#index"
end
