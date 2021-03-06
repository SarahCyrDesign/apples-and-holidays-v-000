
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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
holiday_hash[:winter][:christmas] = "Balloons"
holiday_hash[:winter][:new_years] = "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
   holiday_hash[:spring][:memorial_day] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[:fall] = {holiday_name => supply_array}
  holiday_hash[:winter] = {holiday_name => supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash[:winter].each do |holiday, supplies|
        winter_supplies << supplies
      end
    winter_supplies.flatten
end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.collect do |season, season_details|  #season = :winter  #season_details = {:christmas=>["Lights", "Wreath"], :new_years=>["Party Hats"]}
    puts "#{season.to_s.capitalize}:"
    season_details.collect do |holiday, supplies|
      puts  "  #{holiday.to_s.split("_").collect { |i| i.capitalize }.join(" ")}: #{supplies.join(", ")}"
     end
  end
end
# iterate through holiday_hash and print items such that your readout resembles:
# Winter:
#   Christmas: Lights, Wreath
#   New Years: Party Hats
# Summer:
#   Fourth Of July: Fireworks, BBQ
# etc.

require 'pry'

def all_holidays_with_bbq(holiday_hash)
  spring_summer_holidays = []
   holiday_hash.collect do |season, season_details|  #season = :winter  #season_details = {:christmas=>["Lights", "Wreath"], :new_years=>["Party Hats"]}
    season_details.collect do |holiday, supplies|
      spring_summer_holidays << holiday
      # spring_summer_holidays << supplies.start_with?("B").join(" ")
    end
end
spring_summer_holidays.shift
spring_summer_holidays.shift
spring_summer_holidays.delete_at(1)
spring_summer_holidays
# binding.pry

end

# return an array of holiday names (as symbols) where supply lists
# include the string "BBQ"
