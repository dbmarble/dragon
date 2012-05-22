root = "/home/deployer/apps/dragon/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.meetingfix.sock"
worker_processes 2
timeout 30