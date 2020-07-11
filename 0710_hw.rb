# 請想辦法讓以下程式正常執行並如預期印出結果

class Object
  def my_map
    result = []
    self.each do |i|
      result << yield(i)
    end
    result
  end
end

p [1, 2, 3, 4, 5].my_map { |x| x * 2 }  
# 印出 [2, 4, 6, 8, 10]



class Object
  def is_email?
    self.is_a?(String) and self.include?("@")
  end
end

p "yuu@5xruby.tw".is_email?             
# 印出 true

p "yuu.kk@5xruby.tw".is_email?          
# 印出 true

p "what".is_email?                      
# 印出 false