# == Route Map
#
#            Prefix Verb URI Pattern  Controller#Action
# komachi_heartbeat      /healthcheck KomachiHeartbeat::Engine
#
# Routes for KomachiHeartbeat::Engine:
#    heartbeat GET  /heartbeat(.:format)    komachi_heartbeat/heartbeat#index {:format=>"txt"}
#      version GET  /version(.:format)      komachi_heartbeat/heartbeat#version
# stats_worker GET  /stats/worker(.:format) komachi_heartbeat/stats#worker
#

Rails.application.routes.draw do
  mount KomachiHeartbeat::Engine => '/healthcheck'
end
