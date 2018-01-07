Rails.application.routes.draw do
  put 'article/create_input'

  put 'article/create_confirm'

  put 'article/create_do'

  get 'article/list'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
