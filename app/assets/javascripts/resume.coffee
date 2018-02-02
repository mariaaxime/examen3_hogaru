jQuery ->
  Morris.Line
    element: 'resume_chart'
    data: $('#resume_chart').data('registries')
    xkey: 'date'
    ykeys: ['total_gained', 'total_burned']
    labels: ['Calories Gained', 'Calories Burned']
