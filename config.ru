# Unicorn self-process killer
require 'unicorn/worker_killer'

# Max requests per worker
max_request_min = (ENV['UNICORN_MAX_REQUEST_MIN'] || 3072).to_i
max_request_max = (ENV['UNICORN_MAX_REQUEST_MAX'] || 4096).to_i
use Unicorn::WorkerKiller::MaxRequests, max_request_min, max_request_max

# Max memory size (RSS) per worker
oom_min = (ENV['UNICORN_OOM_MIN'] || 192).to_i * (1024**2)
oom_max = (ENV['UNICORN_OOM_MAX'] || 256).to_i * (1024**2)
use Unicorn::WorkerKiller::Oom, oom_min, oom_max

# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application
