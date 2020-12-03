Rails.application.routes.draw do
  resources :todo, only: %i[create index]
end
