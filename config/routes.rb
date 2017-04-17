Spnet2016::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  root to: "page#home"
  resources :journal_entries, :gardens, :posts

    get 'admin/manage_blog', to: 'admin#posts'
    get 'admin/manage_garden_journal', to: 'admin#garden_journal'

end
