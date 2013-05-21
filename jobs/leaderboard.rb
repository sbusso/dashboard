developpers = ['Pin', 'Paul', 'Chor', 'Guy', 'Girl']
scores = Hash.new({ value: 0 })

SCHEDULER.every '2s' do
  random_dev = developpers.sample
  scores[random_dev] = { label: random_dev, value: (scores[random_dev][:value] + 1) % 30 }
  send_event('leaderboard', { items: scores.values.sort{|a, b| b[:value] <=> a[:value]} })
end
