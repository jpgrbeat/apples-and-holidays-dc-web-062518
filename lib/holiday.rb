require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  require 'pry'
  str =""
  holiday_supplies.each do |key,value|
    #key is time of year, value will be holiday
    value.each do |holiday,supply|
      #needs to go to each holiday and check for the fourth of July
      if holiday == :fourth_of_july
        str = supply[1]
      end
    end
  end
  str
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_supplies.each do |key,value|
    if key == :winter
      value.each do |holiday,stuff|
        stuff.push(supply)
      end
    end
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_supplies.each do |key,value|
    if key == :spring
      value.each do |holiday,stuff|
        stuff.push(supply)
      end
    end
  end
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_supplies.each do |key,value|
    puts "#{key.capitalize}:"
    value.each do |holiday,supply|
        if holiday == :new_years
          holiday = "New Years"
          puts "  #{holiday}: #{supply.join(", ")}"
        elsif holiday == :memorial_day
          holiday = "Memorial Day"
          puts "  #{holiday}: #{supply.join(", ")}"
        elsif holiday == :fourth_of_july
          holiday = "Fourth Of July"
          puts "  #{holiday}: #{supply.join(", ")}"
        else
          puts "  #{holiday.capitalize}: #{supply.join(", ")}"
        end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  arr = []
  holiday_hash.each do |key, value|
    value.each do |holiday, supplies|
      supplies.each do |item|
        if item == "BBQ"
          arr.push(holiday)
        end
      end
    end
  end
  arr
end







