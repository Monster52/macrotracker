Rails.application.routes.draw do
  get 'calendar/index'

  get 'profiles/index'
  get 'trackers/highlight'

	resources :goals
	resources :trackers

  devise_for :users
	root to: "home#index"
end
