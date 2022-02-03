Rails.application.routes.draw do
  get 'tasks/index'
  post 'tasks/create'
  root to: 'tasks#index'
end
