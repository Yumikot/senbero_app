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

def choice(kind)
  kind_selected_num = gets.to_i
    kind_menu = kind[kind_selected_num - 1]
    loop do
        if kind_selected_num > kind.size && kind.size>0        
          kind_selected_num = gets.to_i
          kind_menu = kind[kind_selected_num - 1]
        else
          puts "#{kind_menu[:name]}ですね"
          break 
        end    
      end  
      kind_menu   
end
    
choice(drinks)

      
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

choice(c_foods)

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

choice(h_foods)

puts '----------------------------'
puts "３品のお会計"




sum = drinks_menu[:price] + c_foods_menu[:price] + h_foods_menu[:price]
puts "#{sum}円"


case sum

when 0..800
    puts "もう一杯行っちゃおう!!"
when 801..1000
    puts "せんべろ達成!"
else 
    puts "予算overです、、、！"
end
