def nyc_pigeon_organizer(data)
  fresh_hash = {}
  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|
        if !fresh_hash[name]
          fresh_hash[name] = {}
        end
        if !fresh_hash[name][key]
          fresh_hash[name][key] = []
        end
        fresh_hash[name][key] << new_value.to_s
      end
    end
  end
  fresh_hash
end
