30.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    job: Faker::Job.position
  )
end

puts "#{User.count} users created!"