Rails.application.routes.draw do
  root 'welcome#index'

  get 'tell', controller: 'jokes'
end
