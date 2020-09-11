puts <<~EOS
'今からせんべろ(1000円でアルコールとおつまみを楽しみつつ酔う)メニューを選びましょう！！'
 '-------------------'
 'ドリンクを選択してください'
EOS

drinks = [
    {name:'ハイボール', price:280},
    {name:'ビール',price:300},
    {name:'グラスワイン',price:260},
    {name:'ホッピー',price:250},
    {name:'ウーロンハイ',price:220}
    ]

drinks.each.with_index(1) do |drink,i|
    puts "#{i}. #{drink[:name]}#{drink[:price]}"
end

puts "商品を選択 >"

    drinks_selected_num = gets.to_i
    drinks_al = drinks[drinks_selected_num - 1]
    loop do
        if drinks_selected_num > drinks.size         
          drinks_selected_num = gets.to_i
          drinks_al = drinks[drinks_selected_num - 1]
        else
          puts "#{drinks_al[:name]}ですね"
          break
        end
      end

      
puts '----------------------------'
puts '冷たいお惣菜menuを以下から選んでください'

c_foods = [
    {name:'枝豆', price:220},
    {name:'冷奴',price:180},
    {name:'お新香',price:250},
    {name:'ピクルス',price:300},
    {name:'おひたし',price:170}
    ]
c_foods.each.with_index(1) do |c_food,i|
    puts "#{i}. #{c_food[:name]}#{c_food[:price]}"
end

puts "商品を選択 >"

c_foods_selected_num = gets.to_i
c_foods_menu = c_foods[c_foods_selected_num - 1]
loop do
    if c_foods_selected_num > c_foods.size      
      c_foods_selected_num = gets.to_i
      c_foods_menu = c_foods[c_foods_selected_num  - 1]
    else
      puts "#{c_foods_menu[:name]}ですね"
      break
    end
  end

puts '----------------------------'
puts '暖かいお惣菜menuを以下から選んでください'

h_foods = [
    {name:'天ぷら', price:300},
    {name:'唐揚げ',price:280},
    {name:'焼き魚',price:300},
    {name:'だし巻き卵',price:220}
    ]

h_foods.each.with_index(1) do |h_food,i|
    puts "#{i}. #{h_food[:name]}#{h_food[:price]}"
end

puts "商品を選択 >"

h_foods_selected_num = gets.to_i
h_foods_menu = h_foods[h_foods_selected_num - 1]

loop do
    if h_foods_selected_num > h_foods.size
      
      h_foods_selected_num = gets.to_i 
      h_foods_menu = h_foods[h_foods_selected_num - 1]
    else
      puts "#{h_foods_menu[:name]}ですね"
      break
    end
  end
puts '----------------------------'
puts "３品のお会計"
sum = drinks_al[:price] + c_foods_menu[:price] + h_foods_menu[:price]
puts "#{sum}円"


case sum

when 0..800
    puts "もう一杯行っちゃおう!!"
when 801..1000
    puts "せんべろ達成!"
else 
    puts "予算over"
end
