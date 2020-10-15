require 'slack-notify'
require 'clockwork'
require 'active_support/time'

module Clockwork
  handler do |task|
    puts "Doing #{task}"
  end

  client = SlackNotify::Client.new(
    webhook_url: 'https://hooks.slack.com/services/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',
    channel: '#mentoring',
    username: 'thethmuueinsoe'
  )

  every(3.minutes, client.notify('Message Sent from Slack Notify!'))
end
