# Populate the graph with some random points
points = []
actual_points = 50
(1..5).each do |i|

  points << { x: i, y: actual_points }
  actual_points -= rand(20)
end
last_x = points.last[:x]

SCHEDULER.every '60s', :first_in => 0 do
  send_event('convergence', points: points)
end
