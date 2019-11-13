require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(open(html))
change_careers_with_confidence = doc.css(".title-3Kf9MY")
puts change_careers_with_confidence

course_titles = doc.css(".title-oE5vT4")
course1 = course_titles[0]
course2 = course_titles[1]
course3 = course_titles[2]
course4 = course_titles[3]
course_titles.each {|x| puts x.text}
binding.pry
