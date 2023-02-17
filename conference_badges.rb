def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator array_of_names
    array_of_names.map { |name| badge_maker(name) }
end

def assign_rooms array_of_speakers
    array_of_speakers.map.with_index(1) { |speaker, room| "Hello, #{speaker}! You'll be assigned to room #{room}!" }
end

def printer array_of_speakers
    batch_badge_creator(array_of_speakers).each { |badge| puts badge }
    assign_rooms(array_of_speakers).each { |assignment| puts assignment }
end
