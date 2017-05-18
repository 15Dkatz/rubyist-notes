module TestModule
  def log_me
    puts "logged"
  end
end

class TestClass
  def log_me
    puts "overrided original log_me"
  end
end

tc = TestClass.new
tc.log_me
