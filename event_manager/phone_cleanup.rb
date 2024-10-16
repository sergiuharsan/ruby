require 'csv'
puts 'Event manager initialized.'

def clean_phone(phone)
  #Phone number validation block
  phone.to_s.delete!('^0-9')
   if (phone.length < 10) || (phone.length > 11)
    phone = 'Invalid phone number.'
   elsif phone.length == 11
     if phone[0] == '1'  
      phone[1..10]
     else
      phone = 'Invalid phone number.' 
     end
   else
    phone  
   end
end
#Open the csv file
contents = CSV.open('event_attendees.csv', headers: true, header_converters: :symbol)
#Browse every row of the file and clean the phone numbers 
contents.each do |row|
  home_phone = clean_phone(row[:homephone])
  puts "#{home_phone}"
end