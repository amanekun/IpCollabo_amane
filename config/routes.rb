Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "/blogs_controller" => "blogs_controller#index" 
  #get[URL]：[URL]を受け取ったら => コントローラー#アクション
  resources :blogs
end