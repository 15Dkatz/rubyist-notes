class Regexp
  # old match is an alias for the original match method
  alias __old_match__ match
  def match(string)
    # if the __old_match__ returns a nil, then return an mpty array instead.
    __old_match__(string) || ["-", "none"]
  end
end

string = "A test string"
re = /A (sample) string/
# this should normally return nil, for no match, but the aliased match method makes it return "none", instead
substring = re.match(string)[1]

puts substring
