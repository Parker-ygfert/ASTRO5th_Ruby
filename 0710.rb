# list = [1, 4, 2, 4, 6, 7, 8, 2, 3, 2, 1, 6]

# p list.select{|i| (i > 3) and (i.even?)}.sum



# def hello
#   puts "a"
#   yield 1, 2
#   # * yield 算是內建 function
#   puts "b"
# end

# hello do |n|
#   p n
# end
# # * 2 會被丟掉

# hello do |n, m, l|
#   p n
#   p m
#   p l
# end
# # * l 會印出 nil



# p nil
# * => nil
# puts nil
# * puts 是印出內容物，而 nil 沒有內容物所以會印出空白


# # * yield 帶入參數
# def test_two(n)
#   if yield n
#     puts "yes, it is 2"
#   else
#     puts "no, it is not 2"
# end

# test_two(3) { |i|
#   i == 2
# }



# def say_hello
#   if block_given?
#     # * 內建方法，如果後方有接 block 就會執行
#     yield
#   end
# end



# def my_select(arr)
#   # arr = list.to_a
#   result = []
#   arr.each do |i|
#     result << i if yield(i)
#   end
#   result
# end

# p (1..100).select { |n| n.odd? }
# p my_select([1, 2, 3, 4, 5]) { |n| n.odd? }



# def pick(list)
#   result = []
#   list.each do |i|
#     result << i if yield(i)
#     # 若 Block 的回傳值為 true
#   end
#   result
# end

# p pick([*1..10]) { |n| n % 2 == 0 }
# p pick([*1..10]) { |n| n < 5 }



# def my_map(list)
#   result = []
#   list.each do |i|
#     result << yield(i)
#   end
#   result
# end

# p my_map([1, 2, 3, 4, 5]) { |x| x * 2 }



# def my_reject(list)
#   result = []
#   list.each do |i|
#     result << i unless yield(i)
#   end
#   result
# end

# p my_reject([1, 2, 3, 4, 5]) { |x| x.odd? }



# list = [1, 2, 3, 4, 5]

# p list.map { |item| item * 2 }
# # * { } 的優先度比較高會把 list.map 搶過來
# # * p(list.map {|item| item * 2 })

# p list.map do |item| item * 2 end
# * do end 的優先度較低會搶輸 p 所以不會執行
# * p(list.map) do |item| item * 2 end




# list = [1, 2, 3, 4, 5]

# double = Proc.new { |i| i * 2}
# # p double.(list)

# p list.map(&double)
# # * & 把 double 這個物件化的區塊當作參數傳給 map method



# class Human
#   def walk(name)
#     puts "go go go"
#   end
# end

# me = Human.new
# me.walk



# class Cat
#   attr_writer :name
  
#   def initialize(name)
#     @name = name
#   end

#   def greetings
#     puts "hello 你好, 我是 #{@name}"
#   end
# end

# kitty = Cat.new('nancy')
# kitty.greetings
# kitty.name = 'lucy'
# kitty.greetings



# class Cat
# end

# kitty = Cat.new

# # * singleton method
# def kitty.abc
#   puts "meow b c"
# end

# kitty.abc



# class Integer
#   def days
#     self
#     # * 這裡的 self 是指數字物件(3)本身
#     # * 如果沒加 self 會傳 nil 到 ago method
#   end

#   def ago
#     "#{self} days ago"
#   end
# end

# puts 3.days.ago



# class Cat
#   private
#   def gossip
#     puts "don't tell anyone"
#   end
# end

# gossip



def i_am_method(&block)
  block.call
end

i_am_method do
  p "this is a book"
end