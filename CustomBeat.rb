# Change user in file name to "papap"
deep_light1 = "C:/Users/micah_sessions/Downloads/Rain_World_OST_-_Deep_Light_(getmp3.pro).wav"
deep_light2 = "C:/Users/micah_sessions/Downloads/Rain_World_OST_-_Deep_Light2_(getmp3.pro).wav"


live_loop :main1 do
  sample :ambi_piano, amp: 2, beat_stretch: 3
  sleep 3
end

live_loop :main2 do
  sample :bd_boom, amp: 2
  sleep 3
end

sleep 6

dl = 1
live_loop :main4 do
  if dl = 2
    sample deep_light1, amp: 2
    dl = 1
  else
    sample deep_light2, amp: 2
    dl = 2
  end
  sample :ambi_piano, amp: 3, beat_stretch: 7
  sleep 9
end

sleep 9

a = 0.25
live_loop :cresch1 do
  use_synth :hollow
  play 60, amp: a
  a = a + 0.25
  sleep 0.75
end
