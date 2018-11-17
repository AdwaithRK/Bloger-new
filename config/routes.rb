Rails.application.routes.draw do
  get 'features/search_user'
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root new_user_session_url
  get '/logged_in', to: 'users/logged_in#index'
  get '/features/edit_pro_pic'
  post '/features/save_new_pro_pic'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
   
  root to: redirect('/register/cmon_let_me_in')
end
