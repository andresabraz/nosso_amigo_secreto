Sidekiq.configure_server do |config|
  #localhost://redis:6379/0   no exemplo chama REDIS por causa do docker. 
  config.redis = { url: 'redis://redis:6379/0' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://redis:6379/0' }
end