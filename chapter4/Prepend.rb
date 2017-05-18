module M
  def report
    puts "Module report"
  end
end

class TestClass
  # prepend M # gives the report method in PrependModule prevalence
  include M
  def report
    puts "Class report"
    super
    puts "Back to Class report"
  end
end

tc = TestClass.new
tc.report
