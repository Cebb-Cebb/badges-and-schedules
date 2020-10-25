require 'pry'

def badge_maker(name)
  return "Hello, my name is #{name}."
end 


def batch_badge_creator(attendees)  
    new_badge = []
    attendees.each do |names| 
    new_badge << badge_maker(names)
    end 
    new_badge
end 

def assign_rooms(attendees)
    attendees.collect.each_with_index do |names, index|
    "Hello, #{names}! You'll be assigned to room #{index + 1}!"
    end 
end 


def printer(attendees)
  batch_badge_creator(attendees).each{|badges| puts badges} 
  assign_rooms(attendees).each {|badges| puts badges} 
  binding.pry 
end 
 
    

     


# describe '#printer' do

# Question 4
# The method `printer` should output first the results of the batch_badge_
# creator method and then of the assign_rooms method to the screen - 
# this way you can output
# the badges and room assignments one at a time.
# To make this test pass, make sure you are iterating through your badges 
# and 
# room assignments lists.

# it 'should puts the list of badges and room_assignments' do
#   badges_and_room_assignments.each_line do |line|
    # $stdout is a Ruby global v[a[ribale that represents the current standard 
    # output.
    # In this case, the standard output is your terminal screen. This test, 
    # then,
    # is checking to see whether or not your terminal screen receives the 
    # correct
    # printed output.
#     expect($stdout).to receive(:puts).with(line.chomp)
#   end
#   printer(attendees)
# end




