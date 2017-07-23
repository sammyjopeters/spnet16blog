Spnet2016::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks', registrations: 'registrations' }
  root to: 'page#home'
  resources :journal_entries, :gardens
  resources :posts, path: 'blog'

    get 'admin/manage_blog', to: 'admin#posts'
    get 'admin/manage_garden_journal', to: 'admin#garden_journal'

end
