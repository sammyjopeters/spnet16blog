Spnet2016::Application.routes.draw do
  resources :posts
  root to: "page#home"
  resources :journal_entries
  resources :gardens

end
