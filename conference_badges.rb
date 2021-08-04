def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
  speakers.map {|speaker| badge_maker(speaker)}
end

def assign_rooms(speakers)
  speakers.map.with_index(1) do |speaker, index|
    "Hello, #{speaker}! You'll be assigned to room #{index}!"
  end
end

def printer(speakers)
  batch_badge_creator(speakers).each {|badge| puts badge}
  assign_rooms(speakers).each {|assignment| puts assignment}
end
