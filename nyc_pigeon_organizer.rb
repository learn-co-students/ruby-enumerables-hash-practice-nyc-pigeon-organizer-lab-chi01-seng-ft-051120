require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
  
#  pigeon_list = {}
#  data.each do |color_gender_lives, value|
#    value.each do |stats, all_names|
#      all_names.each do |name|
#        if pigeon_list[name] == nil
#          pigeon_list[name] = {}
#        end
#        if pigeon_list[name][color_gender_lives] == nil
#          pigeon_list[name][color_gender_lives] = []
#        end
#        pigeon_list[name][color_gender_lives].push(stats.to_s)
#      end
#    end 
#  end
#  pigeon_list
#end

  
  data.reduce({}) do |pigeon_h, (color_gender_lives, cgl_values)|
    cgl_values.each do |pigeon_info, pigeon_names|
      pigeon_names.each do |name|
        binding.pry
        if pigeon_h[name] == nil
          pigeon_h[name] = {}
        end
        if pigeon_h[name][color_gender_lives] == nil
          pigeon_h[name][color_gender_lives] = []
        end
        pigeon_h[name][color_gender_lives].push(pigeon_info.to_s)
      end
    end
    pp pigeon_h
  end
end
  
