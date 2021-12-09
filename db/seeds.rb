# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "cleaning db..."
EventParticipation.destroy_all
Event.destroy_all
User.destroy_all

puts "db cleaned!"

puts "User creations..."

puts "Admin1 creation"

admin1 = User.create!(
  first_name: "Jeremie",
  last_name: "Sourty",
  email: "jeremie@mail.fr",
  password: "secret",
  phone_number: "0606060606",
  role: "city_hall_agent",
  city_hall_admin: true
)

puts "Admin2 creation"

admin2 = User.create!(
  first_name: "Mélia",
  last_name: "Mazouzi",
  email: "melia@mail.fr",
  password: "secret",
  phone_number: "0606060606",
  role: "city_hall_agent",
  city_hall_admin: true
)

puts "Agent1 creation"

agent1 = User.create!(
  first_name: "Jean",
  last_name: "Dupont",
  email: "dupont@mail.fr",
  password: "secret",
  phone_number: "0606060606",
  role: "city_hall_agent",
  city_hall_admin: false
)

puts "Agent2 creation"

agent2 = User.create!(
  first_name: "Marie",
  last_name: "durant",
  email: "marie@mail.fr",
  password: "secret",
  phone_number: "0606060606",
  role: "city_hall_agent",
  city_hall_admin: false
)

puts "Agent3 creation"

agent3 = User.create!(
  first_name: "Jeanne",
  last_name: "Moreau",
  email: "jeanne@mail.fr",
  password: "secret",
  phone_number: "0606060606",
  role: "city_hall_agent",
  city_hall_admin: false
)

puts "Resident1 creation"

resident1 = User.create!(
  first_name: "Louis",
  last_name: "Dumas",
  email: "louis@mail.fr",
  password: "secret",
  phone_number: "0606060606",
  role: "resident"
)

puts "Resident2 creation"

resident2 = User.create!(
  first_name: "Laura",
  last_name: "Pinot",
  email: "laura@mail.fr",
  password: "secret",
  phone_number: "0606060606",
  role: "resident"
)

puts "Organization1 creation"

organization1 = User.create!(
  first_name: "Edgar",
  last_name: "Azerty",
  main_organization_name: "L'asso des rezéens",
  email: "edgar@mail.fr",
  password: "secret",
  phone_number: "0606060606",
  role: "organization"
)

puts "Organization2 creation"

organization2 = User.create!(
  first_name: "Philippe",
  last_name: "Blanc",
  main_organization_name: "Club de foot de Rezé",
  email: "blanc@mail.fr",
  password: "secret",
  phone_number: "0606060606",
  role: "organization"
)

puts "Events creation"

puts "event1 creation"

event1 = Event.create!(
  user: resident1,
  name: "Fête des voisins",
  public_description: "Fête des voisins de La Blordière",
  district: "La Blordière",
  address: "Rue Georges Boutin, 44000 Rezé",
  category: "Autre",
  start_at: Time.new(2022, 1, 7, 20, 30),
  end_at: Time.new(2022, 1, 7, 23, 30),
  contact_first_name: resident1.first_name,
  contact_last_name: resident1.last_name,
  contact_email: resident1.email,
  contact_phone_number: resident1.phone_number,
  required_safety_level: "Niveau 1 - Manifestation de moins de 1500 personnes",
  pricing_description: "Gratuit, pensez à ramener un plat à partager",
  equipment_requested: true,
  requested_equipment_description: "6 tables, et 40 chaises, si possible une sonorisation",
  general_comment: "Comme tous les ans, merci à la mairie de nous permettre de partager ce moment de convivialité",
  status: "pending"
)

puts "event 1 body done"
puts "event 1 picture creation"


file = File.open(Rails.root.join('db/neighboors.jpg'))
event1.photo.attach(io: file, filename: 'neighboors.jpg', content_type: 'image/jpg')
event1.save!

puts "event 1 picture done"

puts "event2 creation"

event2 = Event.create!(
  user: organization2,
  name: "Match de football",
  public_description: "Finale départementale U-12. Rezé Football Club reçoit pour la première fois l'équipe U-12 du Saint-Nazaire FC",
  district: "Château La Houssais",
  address: "Stade léo lagrange, Rezé",
  category: "Sport",
  start_at: Time.new(2021, 12, 12, 10, 30),
  end_at: Time.new(2021, 12, 12, 13),
  contact_first_name: organization2.first_name,
  contact_last_name: organization2.last_name,
  contact_email: organization2.email,
  contact_phone_number: organization2.phone_number,
  required_safety_level: 'Niveau 1 - Manifestation de moins de 1500 personnes',
  pricing_description: "Accès au stade gratuit, buvette payante",
  equipment_requested: true,
  requested_equipment_description: "Un podium et une sono pour la remise des prix",
  status: "pending"
)


puts "event 2 body done"
puts "event 2 picture creation"


file = File.open(Rails.root.join('db/football.jpg'))
event2.photo.attach(io: file, filename: 'football.jpg', content_type: 'image/jpg')
event2.save!

puts "event 2 picture done"

puts "event3 creation"

event3 = Event.create!(
  user: admin1,
  name: "Débat sur le réchauffement climatique",
  public_description: "Echange animé par les élus autour sur les mesures de lutte contre le réchauffement climatique à l'échelle municipale.",
  district: "Pont-Rousseau",
  address: "Avenue des treilles, 44000 Rezé",
  category: "Developpement durable",
  start_at: Time.new(2021, 12, 17, 7, 15),
  end_at: Time.new(2021, 12, 17, 10),

  contact_first_name: admin1.first_name,
  contact_last_name: admin1.last_name,
  contact_email: admin1.email,
  contact_phone_number: admin1.phone_number,
  required_safety_level: 'Niveau 1 - Manifestation de moins de 1500 personnes',
  pricing_description: "Gratuit",
  status: "pending",
  equipment_requested: true,
  requested_equipment_description: "Un barnum, 5 tables et 18 chaises"
)


puts "event 3 body done"
puts "event 3 picture creation"


file = File.open(Rails.root.join('db/climat.jpeg'))
event3.photo.attach(io: file, filename: 'climat.jpeg', content_type: 'image/jpeg')
event3.save!

puts "event 3 picture done"
puts "event4 creation"

event4 = Event.create!(
  user: agent2,
  name: "Education pour tous",
  public_description: "Atelier d'éducation populaire avec des intervenants de l'association Éduc'Pop Nantes. Ouvert à tous à partir de 4 ans, accès PMR",
  district: "Trentemoult-les Isles",
  address: "Rue Jean Louis, 44000 Rezé",
  category: "Education-Jeunesse",
  start_at: Time.new(2021, 12, 10, 11),
  end_at: Time.new(2021, 12, 12, 22),
  contact_first_name: agent2.first_name,
  contact_last_name: agent2.last_name,
  contact_email: agent2.email,
  contact_phone_number: agent2.phone_number,
  required_safety_level: "Niveau 1 - Manifestation de moins de 1500 personnes",
  pricing_description: "Gratuit, dons bienvenus pour l'association",
  status: "pending"
)



puts "event 4 body done"
puts "event 4 picture creation"


file = File.open(Rails.root.join('db/education.jpeg'))
event4.photo.attach(io: file, filename: 'education.jpeg', content_type: 'image/jpeg')
event4.save!

puts "event 4 picture done"

puts "event5 creation"


event5 = Event.create!(
  user: admin1,
  name: "Marathon de Rezé",
  public_description: "Marathon annuel de la ville de Rezé. Le circuit part du Quartier Pont-Rousseau et passe par les 7 quartiers de Rezé. Prix pour les 20 premiers coureurs.",
  district: "Pont-Rousseau",
  address: "Pont-Rousseau 44000 Rezé",
  category: "Sport",
  start_at: Time.new(2021, 12, 19, 8, 30),
  end_at: Time.new(2021, 12, 19, 12, 30),

  contact_first_name: admin1.first_name,
  contact_last_name: admin1.last_name,
  contact_email: admin1.email,
  contact_phone_number: admin1.phone_number,
  required_safety_level: 'Niveau 3 - Manifestation de plus de 5000 personnes',
  pricing_description: "Coureurs : 25€ le dossard. Gratuit pour les spectateurs. Buvette au départ et à l'arrivée.",
  status: "pending",
  equipment_requested: true,
  requested_equipment_description: "Barrières de sécurité, podium, barnums, tables et chaises",
  general_comment: "Merci de faire le point en interne sur le matériel nécessaire"
)


puts "event5 body done"
puts "event5 picture creation"


file = File.open(Rails.root.join('db/marathon.jpeg'))
event5.photo.attach(io: file, filename: 'marathon.jpeg', content_type: 'image/jpeg')
event5.save!

puts "event 5 picture done"

puts "event6 creation"


event6 = Event.create!(
  user: admin1,
  name: "Distribution de repas",
  public_description: "Distribution de repas chauds pour les plus démunis. Les bénévoles de l'association Rezé Solidaire cuisinerons avec les légumes invendus du marché",
  district: "Pont-Rousseau",
  address: "Rue Bessac, 44000 Rezé",
  category: "Solidarité",
  start_at: Time.new(2021, 12, 28, 13),
  end_at: Time.new(2021, 12, 28, 15),

  contact_first_name: admin1.first_name,
  contact_last_name: admin1.last_name,
  contact_email: admin1.email,
  contact_phone_number: admin1.phone_number,
  required_safety_level: 'Niveau 1 - Manifestation de moins de 1500 personnes',
  pricing_description: "Gratuit",
  status: "pending",
  accepted_at: Date.today
)

puts "event 6 body done"
puts "event 6 picture creation"


file = File.open(Rails.root.join('db/food.jpeg'))
event6.photo.attach(io: file, filename: 'food.jpeg', content_type: 'image/jpeg')
event6.save!

puts "event 6 picture done"

puts "event7 creation"

event7 = Event.create!(
  user: admin1,
  name: "Bal d'hiver zumba",
  public_description: "Venez danser jusqu'au bout de la nuit! Costumé, masqué. Maquillage sur place pour les enfants.",
  district: "Pont-Rousseau",
  address: "Rue viau, 44000 Rezé",
  category: "Culture",
  start_at: Time.new(2021, 12, 31, 22),
  end_at: Time.new(2022, 1, 1, 5),
  contact_first_name: admin1.first_name,
  contact_last_name: admin1.last_name,
  contact_email: admin1.email,
  contact_phone_number: admin1.phone_number,
  required_safety_level: 'Niveau 1 - Manifestation de moins de 1500 personnes',
  pricing_description: "5€ l'entrée",
  status: "pending",
  accepted_at: Date.today
)

puts "event 7 body done"
puts "event 7 picture creation"


file = File.open(Rails.root.join('db/zumba.jpg'))
event7.photo.attach(io: file, filename: 'zumba.jpeg', content_type: 'image/jpg')
event7.save!

puts "event 7 picture done"

puts "event8 creation"

event8 = Event.create!(
  user: admin1,
  name: "Atelier maman et bébé",
  public_description: "Partage autour de l'accompagnement du nourrisson. Allaitement, sommeil, premiers pas",
  district: "Pont-Rousseau",
  address: "Rue Viau, 44000 Rezé",
  category: "Petite enfance",
  start_at: Time.new(2021, 1, 4, 16),
  end_at: Time.new(2021, 1, 4, 18),

  contact_first_name: admin1.first_name,
  contact_last_name: admin1.last_name,
  contact_email: admin1.email,
  contact_phone_number: admin1.phone_number,
  required_safety_level: 'Niveau 1 - Manifestation de moins de 1500 personnes',
  pricing_description: "7 euros, adhésion à l'association Maman sereine",
  status: "pending",
  accepted_at: Date.today
)

puts "event 8 body done"
puts "event 8 picture creation"


file = File.open(Rails.root.join('db/maman.jpg'))
event8.photo.attach(io: file, filename: 'maman.jpeg', content_type: 'image/jpg')
event8.save!

puts "event 8 picture done"

puts "Finished seeding"
