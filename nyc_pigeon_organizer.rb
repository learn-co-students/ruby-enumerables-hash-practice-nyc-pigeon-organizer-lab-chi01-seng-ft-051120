require "pry"

def nyc_pigeon_organizer(data)
  name_hash = {}
  data.each do |pigeon_attribute, attribute_hash|
    attribute_hash.each do |sub_attribute, pigeon_name_array|
       pigeon_name_array.each do |pigeon_name|
         name_hash[pigeon_name] = {:color => [], :gender => [], :lives => []}
  
       end
    end
  end
  
  
  name_hash.each do |pigeon_name, pigeon_characteristics| 
    data.each do |pigeon_attribute, attribute_hash|
      attribute_hash.each do |sub_attribute, pigeon_name_array|
        if (pigeon_name_array.any?(pigeon_name))
          name_hash[pigeon_name][pigeon_attribute] << sub_attribute.to_s
        end
      end
    end
  end
  name_hash
end





