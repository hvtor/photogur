# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#



Picture.create!(
	:title   => "Bill Murray",
	:artist  => "Unknown",
	:url 	 => "http://24.media.tumblr.com/41f2c667f6a68c76413bbef50939ffd9/tumblr_mh2dufXVTt1qh8nbpo1_1280.jpg"
	)



Picture.create!(
	:title   => "Bill Murray",
	:artist  => "Unknown",
	:url 	 => "http://24.media.tumblr.com/fd673c100d3224828538b67857b5a738/tumblr_mh2dufXVTt1qh8nbpo2_1280.jpg"
	)

Picture.create!(
	:title   => "Sunrise",
	:artist  => "H. Torsekar",
	:url 	 => "http://instagr.am/p/TIxDgsQfa8/"
	)


#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
