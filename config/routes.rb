Rails.application.routes.draw do
  namespace :api do
    get '/google/redirect', to: 'examples#redirect', as: 'redirect'
    get '/google/callback', to: 'examples#callback', as: 'callback'
    get '/google/calendars', to: 'examples#calendars', as: 'calendars'
    get '/google/events/:calendar_id', to: 'examples#events', as: 'events', calendar_id: /[^\/]+/
    post '/google/events/:calendar_id', to: 'examples#new_event', as: 'new_event', calendar_id: /[^\/]+/
  end
end
