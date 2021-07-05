def nyc_pigeon_organizer(data)
  data_color = data[:color].to_a
  data_gender = data[:gender].to_a
  data_lives = data[:lives].to_a 
  pigeon_list = {}
  pigeon_names = []
  list_of_colors = []
  list_of_genders = []
  list_of_lives = []
  data_color.each do |n|
    pigeon_names << n[1]
  end 
  mid_pigeon_names = pigeon_names.flatten!
  final_names = mid_pigeon_names.uniq
  final_names.each do |i|
    pigeon_list[i] = {}
    pigeon_list[i][:color] = []
    pigeon_list[i][:gender] = []
    pigeon_list[i][:lives] = []
  end 
  data_color.each do |i|
      list_of_colors << i[0]
  end 
  data_gender.each do |x|
    list_of_genders << x[0]
  end 
  data_lives.each do |y|
    list_of_lives << y[0]
  end 
  list_of_colors.each do |a|
    data[:color][a].each do |name|
      pigeon_list[name][:color] << "#{a}" 
    end 
  end
  list_of_genders.each do |b|
    data[:gender][b].each do |name|
      pigeon_list[name][:gender] << "#{b}"
    end 
  end 
  list_of_lives.each do |c|
    data[:lives][c].each do |name|
      pigeon_list[name][:lives] << c 
    end 
  end 
  pigeon_list
end 