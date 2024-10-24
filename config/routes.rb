Rails.application.routes.draw do
  get "authors/:id", to: "authors#show", as: "author"
end
