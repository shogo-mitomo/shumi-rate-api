# == Route Map
#
#            Prefix Verb URI Pattern                                  Controller#Action
# komachi_heartbeat      /healthcheck                                 KomachiHeartbeat::Engine
# hobby_prefectures GET  /hobbies/:hobby_id/prefectures(.:format)     prefectures#index
#  hobby_prefecture GET  /hobbies/:hobby_id/prefectures/:id(.:format) prefectures#show
#        hobby_city GET  /hobbies/:hobby_id/cities/:id(.:format)      cities#show
#           hobbies GET  /hobbies(.:format)                           hobbies#index
#
# Routes for KomachiHeartbeat::Engine:
#    heartbeat GET  /heartbeat(.:format)    komachi_heartbeat/heartbeat#index {:format=>"txt"}
#      version GET  /version(.:format)      komachi_heartbeat/heartbeat#version
# stats_worker GET  /stats/worker(.:format) komachi_heartbeat/stats#worker
#

Rails.application.routes.draw do
  mount KomachiHeartbeat::Engine => '/healthcheck'

  resources :hobbies, only: %i(index) do
    resources :prefectures, only: %i(index show)
    resources :cities,      only: %i(index show)
  end
end
