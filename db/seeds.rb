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

start_time = (3..5).to_a.sample
end_time = (1..3).to_a.sample

puts "event1 creation"

event1 = Event.create!(
  user: resident1,
  name: "Fête des voisins",
  public_description: "Fête des voisins de La Blordière",
  district: "La Blordière",
  address: "Rue Georges Boutin, 44000 Rezé",
  category: "Autre",
  start_at: Date.today - start_time.days,
  end_at: Date.today - end_time.days,
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

puts "event2 creation"

event2 = Event.create!(
  user: organization2,
  name: "Match de football",
  public_description: "Finale départementale",
  district: "Château La Houssais",
  address: "Stade léo lagrange, rezé",
  category: "Sport",
  start_at: Date.today - start_time.days,
  end_at: Date.today - end_time.days,
  contact_first_name: organization2.first_name,
  contact_last_name: organization2.last_name,
  contact_email: organization2.email,
  contact_phone_number: organization2.phone_number,
  required_safety_level: 'Niveau 1 - Manifestation de moins de 1500 personnes',
  pricing_description: "Accès au stade gratuit, buvette payante",
  equipment_requested: true,
  requested_equipment_description: "Un podium pour la remise des prix",
  status: "pending"
)

puts "event3 creation"

event3 = Event.create!(
  user: admin1,
  name: "Débat sur le réchauffement climatique",
  public_description: "Echange animé par les élus autour des améliorations possible",
  district: "Pont-Rousseau",
  address: "Avenue des treilles, 44000 Rezé",
  category: "Developpement durable",
  start_at: Date.today - start_time.days,
  end_at: Date.today - end_time.days,
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

puts "event4 creation"

event4 = Event.create!(
  user: agent2,
  name: "Education pour tous",
  public_description: "Atelier autour de l'éducation",
  district: "Trentemoult-les Isles",
  address: "Rue Jean Louis, 44000 Rezé",
  category: "Education-Jeunesse",
  start_at: Date.today - start_time.days,
  end_at: Date.today - end_time.days,
  contact_first_name: agent2.first_name,
  contact_last_name: agent2.last_name,
  contact_email: agent2.email,
  contact_phone_number: agent2.phone_number,
  required_safety_level: "Niveau 1 - Manifestation de moins de 1500 personnes",
  pricing_description: "Gratuit",
  status: "pending"
)

event5 = Event.create!(
  user: admin1,
  name: "Marathon de Rezé",
  public_description: "Marathon annuel de la ville de Rezé",
  district: "Pont-Rousseau",
  address: "Pont-Rousseau 44000 Rezé",
  category: "Sport",
  start_at: Date.today - start_time.days,
  end_at: Date.today - end_time.days,
  contact_first_name: admin1.first_name,
  contact_last_name: admin1.last_name,
  contact_email: admin1.email,
  contact_phone_number: admin1.phone_number,
  required_safety_level: 'Niveau 3 - Manifestation de plus de 5000 personnes',
  pricing_description: "Coureurs : 25€ le dossard",
  status: "pending",
  equipment_requested: true,
  requested_equipment_description: "Barrières de sécurité, podium, barnums, tables et chaises",
  general_comment: "Merci de faire le point en interne sur le matériel nécessaire"
)

event6 = Event.create!(
  user: admin1,
  name: "Distribution de repas",
  public_description: "Distribution de repas chauds pour les plus démunis",
  district: "Pont-Rousseau",
  address: "Rue Bessac, 44000 Rezé",
  category: "Solidarité",
  start_at: Date.today - start_time.days,
  end_at: Date.today - end_time.days,
  contact_first_name: admin1.first_name,
  contact_last_name: admin1.last_name,
  contact_email: admin1.email,
  contact_phone_number: admin1.phone_number,
  required_safety_level: 'Niveau 1 - Manifestation de moins de 1500 personnes',
  pricing_description: "Gratuit",
  status: "pending",
  accepted_at: Date.today
)

event7 = Event.create!(
  user: admin1,
  name: "Bal d'hiver zumba",
  public_description: "Venez danser jusqu'au bout de la nuit!",
  district: "Pont-Rousseau",
  address: "Rue viau, 44000 Rezé",
  category: "Culture",
  start_at: Date.today - start_time.days,
  end_at: Date.today - end_time.days,
  contact_first_name: admin1.first_name,
  contact_last_name: admin1.last_name,
  contact_email: admin1.email,
  contact_phone_number: admin1.phone_number,
  required_safety_level: 'Niveau 1 - Manifestation de moins de 1500 personnes',
  pricing_description: "5€ l'entrée",
  status: "pending",
  accepted_at: Date.today
)

event8 = Event.create!(
  user: admin1,
  name: "Atelier maman et bébé",
  public_description: "Partage autour de l'accompagnement du nourrisson",
  district: "Pont-Rousseau",
  address: "Rue Viau, 44000 Rezé",
  category: "Petite enfance",
  start_at: Date.today - start_time.days,
  end_at: Date.today - end_time.days,
  contact_first_name: admin1.first_name,
  contact_last_name: admin1.last_name,
  contact_email: admin1.email,
  contact_phone_number: admin1.phone_number,
  required_safety_level: 'Niveau 1 - Manifestation de moins de 1500 personnes',
  pricing_description: "Gratuit",
  status: "pending",
  accepted_at: Date.today
)

puts "Finished seeding"
