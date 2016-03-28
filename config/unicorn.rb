worker_processes Integer(ENV["WEB_CONCURRENCY"] || 3)
timeout 120
listen Integer(ENV["PORT"] || 3000), tcp_nopush: false
