jQuery ->
  if $('#resume_chart').length > 0
    Morris.Line
      element: 'resume_chart'
      data: $('#resume_chart').data('registries')
      xkey: 'date'
      ykeys: ['total_gained', 'total_burned']
      labels: ['Calories Gained', 'Calories Burned']
    
  if $('#goal_chart').length > 0
    Morris.Line
      element: 'goal_chart'
      data: $('#goal_chart').data('registries')
      xkey: 'date'
      ykeys: ['total', 'goal']
      labels: ['Calories Consumed', 'Your goal!']
    

