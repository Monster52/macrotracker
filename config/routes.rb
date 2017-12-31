Rails.application.routes.draw do
  get 'calendar/index'

  get 'profiles/index'

	resources :goals
	resources :trackers

  devise_for :users
	root to: "home#index"
end
