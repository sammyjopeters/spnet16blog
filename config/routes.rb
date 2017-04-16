Spnet2016::Application.routes.draw do
  root to: "page#home"
  resources :journal_entries
  resources :gardens

end
