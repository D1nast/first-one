require_relative "Ammo"

menu1=Ammo.new(name:"R301",price:800,ammo:"Right")
menu2=Ammo.new(name:"VK47",price:500,ammo:"Heavy")
menu3=Ammo.new(name:"HAVOC",price:700,ammo:"Energy")

menus=[menu1,menu2,menu3] 
index=0
menus.each do |menu|
  puts "#{index}. #{menu.info}"
  index += 1
end

puts "武器を選択してください"
choice=gets.chomp.to_i
selected_army=menus[choice]
puts "あなたの武器は#{selected_army.name}です"

puts "レベルを選択してください"
count=gets.chomp.to_i
puts "代金は#{selected_army.get_total_price(count)}です"
