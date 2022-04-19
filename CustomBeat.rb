# Change user in file name to "papap"

deep_light1 = "C:/Users/micah_sessions/Downloads/Rain_World_OST_-_Deep_Light_(getmp3.pro).wav"
deep_light2 = "C:/Users/micah_sessions/Downloads/Rain_World_OST_-_Deep_Light2_(getmp3.pro).wav"

define :ambi_piano do |a, b, s|
  sample :ambi_piano, amp: a, beat_stretch: b
  sleep s
end

define :bd_boom do
  sample :bd_boom, amp: 2
  sleep 3
end

define :piano_sting do
  sample deep_light1, amp: 2
  ambi_piano 3, 7, 9
  sample deep_light2, amp: 2
  ambi_piano 3, 7, 9
end

#<><>

live_loop :ambi_piano_main_loop do
  ambi_piano 2, 3, 3
end

live_loop :bd_boom_loop do
  bd_boom
end

sleep 6

live_loop :piano_sting_loop do
  piano_sting
end

sleep 9

a = 0.25
live_loop :cresch1 do
  use_synth :hollow
  play 60, amp: a
  a = a + 0.25
  sleep 0.75
end
