##* 可以在任意「物件」上定義任意「方法」

class Cat
end


kitty = Cat.new

##* 專屬於 kitty 這個實體物件的方法
def kitty.abcdefg
  "meow meow meow meow meow"
end
p kitty.abcdefg