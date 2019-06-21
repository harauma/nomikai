Rails.application.routes.draw do

  get '/' => 'zaseki#index'
  post 'zaseki/new' => 'zaseki#new'
  get 'zaseki/shuffle' => 'zaseki#shuffle'
  delete 'zaseki/delete' => 'zaseki#delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
