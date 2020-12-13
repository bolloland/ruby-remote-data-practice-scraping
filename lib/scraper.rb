require 'rubygems'
require 'nokogiri'
require 'open-uri'

html = open("http://flatironschool.com/")
doc = Nokogiri::HTML(html)

courses = doc.css(".tout__label.heading.heading--level-4") 

def get_courses
courses.each do |course|
    puts course.text.strip
  end
end
.text
.attributes
.name
etc to get the info we want


  p doc.css(".tout__label.heading.heading--level-4")[0].name

#html = open("https://flatironschool.com/")