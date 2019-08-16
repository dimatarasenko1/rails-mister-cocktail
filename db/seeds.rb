puts "Destroying models ..."
Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all
puts "Destroyed models"

until Cocktail.count == 12
  c = Cocktail.new(name: Faker::GreekPhilosophers.name,
                      strength: (0..10).to_a.sample,
                      tagline: Faker::GreekPhilosophers.quote)
  3.times do
    i = Ingredient.create(name: Faker::Artist.name)
    d = Dose.create(description: "#{(0..500).to_a.sample} ml")
    d.ingredient = i
    d.cocktail = c
    d.save
  end
  c.save
end

p Cocktail.all
