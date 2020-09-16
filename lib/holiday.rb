require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  return holiday_supplies[:summer][:fourth_of_july][1]
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday_name, holiday_supply|
      holiday_supply << supply
end
end
end
  return holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |holiday_name, holiday_supply|
      holiday_supply << supply
end
end
end
  return holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |season_key, holiday|
    if season_key == season 
        holiday[holiday_name] = supply_array
  end
end
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_values = []
  holiday_hash.each do |season, holiday|
    if season == :winter
    holiday.each do |holiday_name, holiday_supply|
     winter_values = winter_values + holiday_supply
  end
  end
  end
  winter_values
end

def all_supplies_in_holidays(holiday_hash)
  all_supplies_string = ""
  holiday_hash.each do |season, holiday|
    all_supplies_string = all_supplies_string + "#{season.capitalize}:\n"
  holiday.each do |holiday_name, holiday_supply|
    all_supplies_string = all_supplies_string + "  #{holiday_name.capitalize}: #{holiday_supply.join(", ")}\n"
  all_supplies_string.delete! '_'
  end  
end
  puts all_supplies_string
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







