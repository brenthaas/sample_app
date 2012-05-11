SampleApp::Application.routes.draw do
  get "static_pages/home"
  match 'about', to: "static_pages#about"
  match 'help', to: "static_pages#help"
  match 'contact', to: "static_pages#contact"
  
  root to: "static_pages#home"

end
