              Prefix Verb   URI Pattern                                    Controller#Action
          user_posts GET    /users/:user_id/posts(.:format)                posts#index
                     POST   /users/:user_id/posts(.:format)                posts#create
       new_user_post GET    /users/:user_id/posts/new(.:format)            posts#new
      edit_user_post GET    /users/:user_id/posts/:id/edit(.:format)       posts#edit
           user_post GET    /users/:user_id/posts/:id(.:format)            posts#show
                     PATCH  /users/:user_id/posts/:id(.:format)            posts#update
                     PUT    /users/:user_id/posts/:id(.:format)            posts#update
                     DELETE /users/:user_id/posts/:id(.:format)            posts#destroy
       user_comments GET    /users/:user_id/comments(.:format)             comments#index
                     POST   /users/:user_id/comments(.:format)             comments#create
    new_user_comment GET    /users/:user_id/comments/new(.:format)         comments#new
   edit_user_comment GET    /users/:user_id/comments/:id/edit(.:format)    comments#edit
        user_comment GET    /users/:user_id/comments/:id(.:format)         comments#show
                     PATCH  /users/:user_id/comments/:id(.:format)         comments#update
                     PUT    /users/:user_id/comments/:id(.:format)         comments#update
                     DELETE /users/:user_id/comments/:id(.:format)         comments#destroy
    user_userfriends GET    /users/:user_id/userfriends(.:format)          userfriends#index
                     POST   /users/:user_id/userfriends(.:format)          userfriends#create
 new_user_userfriend GET    /users/:user_id/userfriends/new(.:format)      userfriends#new
edit_user_userfriend GET    /users/:user_id/userfriends/:id/edit(.:format) userfriends#edit
     user_userfriend GET    /users/:user_id/userfriends/:id(.:format)      userfriends#show
                     PATCH  /users/:user_id/userfriends/:id(.:format)      userfriends#update
                     PUT    /users/:user_id/userfriends/:id(.:format)      userfriends#update
                     DELETE /users/:user_id/userfriends/:id(.:format)      userfriends#destroy
               users GET    /users(.:format)                               users#index
                     POST   /users(.:format)                               users#create
            new_user GET    /users/new(.:format)                           users#new
           edit_user GET    /users/:id/edit(.:format)                      users#edit
                user GET    /users/:id(.:format)                           users#show
                     PATCH  /users/:id(.:format)                           users#update
                     PUT    /users/:id(.:format)                           users#update
                     DELETE /users/:id(.:format)                           users#destroy
               login GET    /login(.:format)                               sessions#new
                     POST   /login(.:format)                               sessions#create
              logout GET    /logout(.:format)                              sessions#destroy