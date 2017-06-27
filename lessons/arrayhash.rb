profile = {
  first_name:  'Marc',  #key
  last_name: 'Aurelius', #value
  grand_slam_wins: 2000,
  grand_slam_losses: 2,
  world_number_one_weeks: 5000,
  country: "Philippines",
  height_cm: 189
}

profile[:prize_money_usd] = 101_605_085 # Set value for key
profile.merge!({handed: :left, backhand: :one_handed}) #Add pairs from other hash
profile[:grand_slam_wins] += 1 # Aus Open 2017
profile.delete(:height_cm) # We don't want height anymore

puts profile
