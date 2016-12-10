         Prefix Verb   URI Pattern                     Controller#Action
          users GET    /users(.:format)                users#index
                POST   /users(.:format)                users#create
       new_user GET    /users/new(.:format)            users#new
      edit_user GET    /users/:id/edit(.:format)       users#edit
           user GET    /users/:id(.:format)            users#show
                PATCH  /users/:id(.:format)            users#update
                PUT    /users/:id(.:format)            users#update
                DELETE /users/:id(.:format)            users#destroy
          posts GET    /posts(.:format)                posts#index
                POST   /posts(.:format)                posts#create
       new_post GET    /posts/new(.:format)            posts#new
      edit_post GET    /posts/:id/edit(.:format)       posts#edit
           post GET    /posts/:id(.:format)            posts#show
                PATCH  /posts/:id(.:format)            posts#update
                PUT    /posts/:id(.:format)            posts#update
                DELETE /posts/:id(.:format)            posts#destroy
       comments GET    /comments(.:format)             comments#index
                POST   /comments(.:format)             comments#create
    new_comment GET    /comments/new(.:format)         comments#new
   edit_comment GET    /comments/:id/edit(.:format)    comments#edit
        comment GET    /comments/:id(.:format)         comments#show
                PATCH  /comments/:id(.:format)         comments#update
                PUT    /comments/:id(.:format)         comments#update
                DELETE /comments/:id(.:format)         comments#destroy
    userfriends GET    /userfriends(.:format)          userfriends#index
                POST   /userfriends(.:format)          userfriends#create
 new_userfriend GET    /userfriends/new(.:format)      userfriends#new
edit_userfriend GET    /userfriends/:id/edit(.:format) userfriends#edit
     userfriend GET    /userfriends/:id(.:format)      userfriends#show
                PATCH  /userfriends/:id(.:format)      userfriends#update
                PUT    /userfriends/:id(.:format)      userfriends#update
                DELETE /userfriends/:id(.:format)      userfriends#destroy
          login GET    /login(.:format)                sessions#new
                POST   /login(.:format)                sessions#create
         logout GET    /logout(.:format)               sessions#destroy