Rails.application.routes.draw do
  mount KomachiHeartbeat::Engine => '/healthcheck'
end
