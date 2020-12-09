# Write your code here.
def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    attendees.collect{ |attendee| badge_maker(attendee) }
end

def assign_rooms(speakers)
    rooms_assignments = []
    speakers.each_with_index do |name, index|
        rooms_assignments << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
    end
    rooms_assignments
end

def printer(names)
    batch_badge_creator(names).each{|badge| puts badge}
    assign_rooms(names).each{|rooms| puts rooms}
end