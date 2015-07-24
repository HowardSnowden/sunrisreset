Rails.application.routes.draw do
 
  
  

devise_for :admins, :skip => [:sessions]
  as :admin do
    get 'mcp_is_dead_long_live_mcp' => 'devise/sessions#new', :as => :new_admin_session
    post 'signin' => 'devise/sessions#create', :as => :admin_session
    delete 'signout' => 'devise/sessions#destroy', :as => :destroy_admin_session
  end
    
   root 'pages#home'

  
  get 'index' 	=> 'pages#home' 
  get 'see'		=> 'pages#see'
  get 'hear'	=> 'pages#hear'
  get 'about'		=> 'pages#about'
  get 'contact' =>  'pages#contact'
  get 'songs/dynamic_index' => 'songs#dynamic_index'
  get 'sitemap', :to => redirect('/sitemap.xml')
    
  resources :posts
  resources :videos
  resources :songs
  resources :email_props
  resources :shows
  get 'abouts/edit' => 'abouts#edit'
  patch 'about' => 'abouts#update'

end
