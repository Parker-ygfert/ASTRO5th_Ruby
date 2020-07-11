##* block 物件化

##* 方法一 Proc
even_number = Proc.new { |i| i % 2 == 0 }
##* 實例化一個 Proc 物件 even_number 代表後面那個 block
##* 物件化之後就可以對他操作物件才能做的方法
##* 可以直接呼叫該物件讓他執行 block 的內容
# p even_number.call(5)
# p even_number.(4)
# p even_number[3]
# p even_number.===(2)
# p even_number.yield(1)

##* 方法二 lamda (匿名函數)
even_number = lambda { |i| i % 2 == 0 }
even_number = -> (i) { i % 2 == 0 }
##* 呼叫方式與 Proc 一樣
p even_number.(1)



##* Proc & lambda 差異性
##* 1. lambda 會檢查代入參數的數目並丟出錯誤
##*    Proc 會忽略未預期的參數，並代入 nil
##* 2. lambda 遇到 return 會跳出該 block 並將控制權交回給呼叫的方法，方法繼續執行
##*    Proc 執行完 block 之後直接跳出方法
def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end
puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end
puts batman_ironman_lambda



##* & 神奇用法 -- 展開 block
list = [1, 2, 3, 4, 5]
##* map 方法不接受參數
##* & 會將 even_number 這個物件展開回原本的 block
p list.map(&even_number)

##* & 神奇用法 -- block 物件化
def say_hi(&abc)
  ##* 參數名稱可以隨便取
  abc.call(1)
end
##* 將後面的區塊物件化之後，就可以作為參數傳給方法
p say_hi { |i| i % 2 == 0 }