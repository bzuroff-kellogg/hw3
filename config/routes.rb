Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get("/travel_log", { :controller => "travel_log", :action => "index" })
   get("/travel_log/new", { :controller => "travel_log", :action => "new" })
  post("/travel_log", { :controller => "travel_log", :action => "create" })
    get("/travel_log/show", { :controller => "travel_log", :action => "show" })

end
