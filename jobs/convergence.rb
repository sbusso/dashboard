# Populate the graph with some random points
points = []
actual_points = 50
(1..5).each do |i|

  points << { x: i, y: actual_points }
  actual_points -= rand(20)
end
last_x = points.last[:x]
send_event('convergence', points: points)
SCHEDULER.every '60s' do
  send_event('convergence', points: points)
end
