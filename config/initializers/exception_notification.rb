require 'exception_notification/rails'

ExceptionNotification.configure do |config|
  # do not notify in development env and test env
  config.ignore_if do
    Rails.env.development? || Rails.env.test?
  end

  # notification to Slack
  config.add_notifier(
    :slack, webhook_url: Settings.slack.webhook_url,
            channel:     Settings.slack.channel,
            username:    Settings.slack.username,
            additional_parameters: { icon_emoji: Settings.slack.icon },
            http_options: { proxy_address: Settings.proxy.address,
                            proxy_port:    Settings.proxy.port }
  )
end
