current_customers = 2340

SCHEDULER.every '2s' do
  last_customers     = current_customers
  current_customers     = current_customers + rand(50) + 30

  send_event('customers', { current: current_customers, last: last_customers })
end
