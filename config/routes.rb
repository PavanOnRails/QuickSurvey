Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'sessions#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/survey_admin/:id/dashboard', to: 'dashboards#suvey_admin_dashboard', as: 'survey_admin_dashboard'
  get '/survey_taker/:id/dashboard', to: 'dashboards#suvey_taker_dashboard', as: 'survey_taker_dashboard'
end
