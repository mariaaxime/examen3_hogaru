50.times do |n|
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  goal = rand(1000..30000)
  u = User.create(email: email,
               password: password,
               password_confirmation: password,
               goal: goal)
  4.months.ago.to_date.upto(Date.today) do |date|
    5.times do
      quantity =  rand(100..1000)
      registry_type = ["Gained", "Burned"][rand(0..1)]
      comment = ('a'..'z').to_a.sample(15).join
      CaloriesRegistry.create!(quantity: quantity,
                              day: date,
                              registry_type: registry_type,
                              comment: comment,
                              user_id: u.id)
    end
  end
end