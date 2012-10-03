


def getting_ready
	"let's find out how much it costs to get ready in the morning by calculating the amount of gallons you use to shower and the wattage you use to get ready"
end

def gallons_per_shower_male(avg_male_shower, shower_gallons_per_min)
	(avg_male_shower * shower_gallons_per_min)
end

def price_shower_male(gallons_per_shower_male, cost_h2o)
	(gallons_per_shower_male * cost_h2o)
end

def gallons_per_shower_female(avg_female_shower, shower_gallons_per_min)
	(avg_female_shower * shower_gallons_per_min)
end

def price_shower_female(gallons_per_shower_female, cost_h2o)
	(gallons_per_shower_female * cost_h2o)
end

price_electricity_male=(price_of_watt_per_second * 40 * avg_male_shower)

def price_electricity_female(light_bulb_watts_female, hair_drier_watts)
	(light_bulb_watts_female + hair_drier_watts)
end

def price_getting_ready_male(price_shower_male, price_electricity_male)
	(price_shower_male + price_electricity_male)
end

def price_getting_ready_female(price_shower_female, price_electricity_female)
	(price_shower_female + price_electricity_female)
end

def cost_per_household(number_of_male_roommates, price_getting_ready_male, number_of_female_roommates, price_getting_ready_female)
	(number_of_male_roommates * price_of_getting_ready_male) + (number_of_female_roommates * price_of_getting_ready_female)
	number_of_female_roommates=2
	number_of_male_roommates=1
end

avg_male_shower=5
avg_female_shower=20
cost_h2o=5.70/1000
shower_gallons_per_min=5
price_of_watt_per_second=0.000000033333
light_bulb_watts_female=(price_of_watt_per_second*40*((5+avg_female_shower)*60))
hair_drier_watts=price_of_watt_per_second*1100*120
number_of_male_roommates=2
number_of_female_roommates=1

puts "the price of getting reeady in the morning in your household with #{number_of_male_roommates} male roommates and #{number_of_female_roommates} female roommates is #{cost_per_household} dollars per morning"



