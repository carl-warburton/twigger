Rails.application.routes.draw do
  resources :tweets do
  member do
    put "like", to: "tweets#upvote"
    put "dislike", to: "tweets#downvote"
  end
end

root 'pages#feed'
    #changed 'get' to 'root'and added a # in between to make feed the home page
devise_for :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
