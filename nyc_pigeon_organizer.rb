require "pry"

# Iterate over the hash above, collecting each pigeon by name and insert it as the
# **key** of a new hash. Each of these hashes should have `:color`, `:gender`, and
# `:lives` keys assigned to arrays of info about that particular pigeon. Your
# output should look something like the hash below:

# def nyc_pigeon_organizer(data)
#   pigeon_names = data.reduce({}) do |memo, (key, value)|
#     memo=value if !memo
#   p key
#   p value
#   memo
#   binding.pry
#   end
# end

# def nyc_pigeon_organizer(data)
#   pigeon_names={}
#   data.each do |key, value|
    
#     #iterate through value and return all the values
#     value.each do |new_value, names|
#       #turn names (eliminating reiterations) into keys and push into pigeon_names hash
#       binding.pry 
#     end 
#   end 
# end

def nyc_pigeon_organizer(data)
  return_hash = {}
  data[:gender].each do |gender, names|
    names.each do |name|
      return_hash[name] = {
        :color => [],
        :gender => [],
        :lives => []
      }
    end 
  end 
  return_hash.each do |name, attributes|
    data.each do |attribute, value|
      value.each do |key, name_array|
        name_array.each do |pigeon_name|
          if (pigeon_name == name)
            return_hash[name][attribute] << key.to_s 
          end 
        end 
      end
    end
  end
  return_hash
end 

# bands.reduce({}) do |memo, (key, value)|
#   p memo # First block parameter
#   p key # Second block parameter
#   p value # Second block parameter
#   memo # Return value for the block, becomes the memo in the next go-round
# end

# sorted_member_list =  bands.reduce({}) do |memo, (key, value)|
#   memo[key] = value.sort
#   memo
# end
 
# p bands
# p sorted_member_list

# def nyc_pigeon_organizer(data)
#   pigeon_names = []
#   data.reduce({}) do |memo, (key, value)|
#     memo = value[0] if !memo
#     pigeon_names << value.uniq
#     memo = sorted_names[0] if sorted_names[0] <= memo
#     # value.each do |key2, value2|
#     #   pigeon_names << value2
#     memo 
#     end 
#   end
#   #puts pigeon_names.flatten.uniq 
# end
# binding.pry 

# bands.reduce({}) do |memo, (key, value)|
#   p memo # First block parameter
#   p key # Second block parameter
#   p value # Second block parameter
#   memo # Return value for the block, becomes the memo in the next go-round
# end

#holiday_supplies.each do |key, value|
  #value.each do |key2, value2|
    #supplies << value2
  #end
#end

#iterate over the hash - collecting each pigeon name - insert as key of new hash - these hashes have attribute (:color, :gender, and :lives) keys assigned to arrays of info about that particular pigeon.

# def save_pair (myHash)
#   myHash.each {|key, value|
#     if(value.class != Hash) ? Pair.create(key, value) : save_pair(value)
#   }
# end

# def reverse_each_word(string)
#   split_string = string.split(" ")
#   #binding.pry
#   reversed = []
#   split_string.each{|element| reversed << element.reverse}
#   return reversed.join(' ')
# end