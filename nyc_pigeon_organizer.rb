

def nyc_pigeon_organizer(data)
  all_names = {}
  
    data.each do |key, value|
      value.each do |key2, value2|
        value2.each do |name|
          if !all_names[name]
            all_names[name] = {}
          end
          if !all_names[name][key]
            all_names[name][key] = []
          end
    
            all_names[name][key].push(key2.to_s)
          
        
        end
      end
    end
    all_names
end