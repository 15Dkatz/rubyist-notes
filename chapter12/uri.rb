require 'open-uri'
rubypage = open("http://rubycentral.org")
puts rubypage.gets
