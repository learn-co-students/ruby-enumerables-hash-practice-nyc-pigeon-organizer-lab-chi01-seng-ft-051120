require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_names = {}
    data.each { |key, value| 
      value.each { |key2, value2|
        value2.each {|name|
          if !pigeon_names[name]
             pigeon_names[name] = {}
          end
  
          if !pigeon_names[name][key]
             pigeon_names[name][key] = []
             end
            pigeon_names[name][key].push(key2.to_s)
        }
      }
    }
    pigeon_names
end

