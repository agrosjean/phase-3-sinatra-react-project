puts "🌱 Seeding spices..."

puts "Deleting old data..."
Vet.destroy_all
Dog.destroy_all
Appointment.destroy_all

puts "Creating dogs..."
dog1 = Dog.create(name: "Rex", breed:"Labrador")
dog2 = Dog.create(name: "Milo", breed:"Jack Russell")
dog3 = Dog.create(name: "Luna", breed:"Yorkshire terrier")
dog4 = Dog.create(name: "Molly", breed:"American Cocker Spaniel")



puts "Creating vets..."
vet1 = Vet.create(name: Faker::Name.name, information: Faker::Lorem.paragraph(rand(3)))
vet2 = Vet.create(name: Faker::Name.name, information: Faker::Lorem.paragraph(rand(3)))
vet3 = Vet.create(name: Faker::Name.name, information: Faker::Lorem.paragraph(rand(3)))
vet4 = Vet.create(name: Faker::Name.name, information: Faker::Lorem.paragraph(rand(3)))
vet5 = Vet.create(name: Faker::Name.name, information: Faker::Lorem.paragraph(rand(3)))



puts "Creating appointments..."
appoint1 = Appointment.create(
    date: Faker::Date.between(from: '2022-01-01', to: '2022-01-30'),
    time: "10:00",
    
    dog_id: dog1.id, 
    vet_id: vet2.id, 
)
appoint2 = Appointment.create(
    date: Faker::Date.between(from: '2022-01-01', to: '2022-01-30'),
    time: "13:00",
    
    dog_id: dog3.id, 
    vet_id: vet1.id, 
)
appoint3 = Appointment.create(
    date: Faker::Date.between(from: '2022-01-01', to: '2022-01-30'),
    time: "15:00",
    
    dog_id: dog2.id, 
    vet_id: vet5.id, 
)
appoint4 = Appointment.create(
    date: Faker::Date.between(from: '2022-01-01', to: '2022-01-30'),
    time: "11:00",
    
    dog_id: dog4.id, 
    vet_id: vet2.id, 
)
appoint5 = Appointment.create(
    date: Faker::Date.between(from: '2022-01-01', to: '2022-01-30'),
    time: "17:00",
    
    dog_id: dog2.id, 
    vet_id: vet4.id, 
)

puts "✅ Done seeding!"
