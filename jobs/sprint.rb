require 'date'
current_valuation = 0
current_karma = 0

SCHEDULER.every '5s' do
  send_event('sprint',   { value: Date.today.wday })
end
