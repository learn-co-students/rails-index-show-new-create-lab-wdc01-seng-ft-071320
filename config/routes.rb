Rails.application.routes.draw do
resources :coupons, except: [:destroy]
end
