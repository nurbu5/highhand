require_relative 'interface.rb'

i = Interface.new
while i.continue_playing?
  i.play_round
end

