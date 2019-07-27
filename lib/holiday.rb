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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  x = holiday_hash[:winter]
  x[:christmas] << supply
  x[:new_years] << supply
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
 holiday_hash[:spring][:memorial_day] << supply
 holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
holiday_hash[:winter].values.flatten
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  winner = []
   x = holiday_hash.each do |key, val|

          val.each do |keys, value|

            value.each do |x|
              if x == "BBQ"
                winner << keys
                winner


              end

        end
      end
    end
    winner
  end
  def all_supplies_in_holidays(holiday_hash)
    # iterate through holiday_hash and print items such that your readout resembles:
    # Winter:
    #   Christmas: Lights, Wreath
    #   New Years: Party Hats
    # Summer:
    #   Fourth Of July: Fireworks, BBQ
    # etc.

    xy = ''
     yz = '  '
     #wx = '   '

     holiday_hash.each do |season, holiday|
     #wx = ' '
     xy = "#{season.capitalize}:"
      puts xy
      #yz = "  "

      holiday.each do |day, items|
        #binding.pry
        wx = ' '
           yz = "  #{day.to_s.split("_").map{ |word| word.capitalize}.join(" ")}:"
           #binding.pry


           #binding.pry

           items.each do  |x|
        wx += "#{x.to_s}, "

      end
     #puts "#{yz}#{wx}"
        ww = wx[0, wx.length - 2 ]
        puts "#{yz}#{ww}"

   end
=begin
   puts <<-DUDE
 #{xy}
   #{yz}
 DUDE
=end
 end

end
