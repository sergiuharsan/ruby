require 'csv'
require 'date'

puts 'Event manager initialized.'
frq_hours = Array.new
frq_weekdays = Array.new
#Open the full attendees CSV file for better understanding
#Browse the date/ time registration data
contents = CSV.open('event_attendees_full.csv', headers: true, header_converters: :symbol)
contents.each do |row|
  date_time = row[:regdate].split(/[\D,\s]/)
  #Decompose the data to variables for month, day, year, hour, minute
  month = date_time[0]
  day = date_time[1]
  year = '20' + date_time[2]
  hour = date_time[3]
  minute = date_time[4]
  #Finding day of the week
  date_tmp = Time.new(year, month, day, hour, minute, 0, 0)
  #Recording to an array the hours and days of the week
  frq_hours.push(hour)
  frq_weekdays.push(date_tmp.strftime('%A'))
end 
#Displaying the results for further analysis
p 'Frequent hours: ',frq_hours.sort().tally
puts
puts 'Frequent days of the week: ',frq_weekdays.tally