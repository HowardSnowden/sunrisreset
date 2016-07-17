Rails.application.routes.draw do
 
  
  

devise_for :admins, :skip => [:sessions]
  as :admin do
    get 'sunrise_admin' => 'devise/sessions#new', :as => :new_admin_session
    post 'signin' => 'devise/sessions#create', :as => :admin_session
    delete 'signout' => 'devise/sessions#destroy', :as => :destroy_admin_session
  end
    
   root 'pages#home'

  
  get 'index' 	=> 'pages#home' 
  get 'see'		=> 'pages#see'
  get 'hear'	=> 'pages#hear'
  get 'shows' => 'pages#shows'
  get 'contact' =>  'pages#contact'
  get 'songs/dynamic_index' => 'songs#dynamic_index'
  get 'sitemap', :to => redirect('/sitemap.xml')
    
  resources :posts
  resources :videos
  resources :songs
  resources :email_props
  resources :shows
  resources :site_settings
  resources :backgrounds, only: [:new, :create]
  resources :band_photos, only: [:new, :create]
  resources :albums
  
  get 'bio/edit' => 'abouts#edit'
  patch 'abouts' => 'abouts#update'

end
