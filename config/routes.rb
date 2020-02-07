Rails.application.routes.draw do
  
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
# Prefix Verb   URI Pattern           Controller#Action
# new_songs GET    /songs/new(.:format)  songs#new
# edit_songs GET    /songs/edit(.:format) songs#edit
#     songs GET    /songs(.:format)      songs#show
#           PATCH  /songs(.:format)      songs#update
#           PUT    /songs(.:format)      songs#update
#           DELETE /songs(.:format)      songs#destroy
#           POST   /songs(.:format)      songs#create