require 'faker'

nb_de_dog = 6
nb_de_dogsitter = 3
tour_mise_en_relation = 5

puts "-- Ajout de #{nb_de_dog} Dog --"
nb_de_dog.times do
	Dog.create(name: Faker::FunnyName.name, race: Faker::Pokemon.name)
end

puts "-- Ajout de #{nb_de_dogsitter} Dogsitter --"
nb_de_dogsitter.times do
	Dogsitter.create(name: Faker::Name.first_name)
end

tour_mise_en_relation.times do
	puts "-- Mise en relation de dog et dogsitter --"
	choix_dogsitter = rand(Dogsitter.first.id..Dogsitter.last.id)
	puts "\tChoix du Dogsitter ---------> #{Dogsitter.find(choix_dogsitter).name}"


	choix_dog = rand(Dog.first.id..Dog.last.id)
	puts "\tChoix du Dog ---------> #{Dog.find(choix_dog).name}"


	Dog.find(choix_dog).dogsitters = [Dogsitter.find(choix_dogsitter)]	


	puts "\n"*2
end


