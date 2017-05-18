class Person
  # constant
  PEOPLE = []

  attr_reader :name, :hobbies, :friends #add getter methods

  def initialize(name)
    @name = name
    @hobbies = []
    @friends = []
    # add self to the PEOPLE constant
    PEOPLE << self
  end

  def has_hobby(hobby)
    @hobbies << hobby
  end

  def has_friend(friend)
    @friends << friend
  end

  def self.method_missing(m, *args)
    method = m.to_s
    if method.start_with?("all_with_")
      attr = method[9..-1]
      if self.public_method_defined?(attr)
        PEOPLE.find_all do |person|
          person.send(attr).icnlude?(args[0])
        end
      else
        raise ArgumentError, "Can't find #{attr}"
      end
    else
      super
    end
  end
end
