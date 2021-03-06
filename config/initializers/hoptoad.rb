HoptoadNotifier.configure do |config|
  config.ignore_only = []

  if Configuration.hoptoad_enabled?
    config.api_key = Configuration.hoptoad_key
    config.secure = Configuration.hoptoad_ssl?
  else
    # seems to be official way to disable notifier
    config.environment_name = config.development_environments.first
  end
end
