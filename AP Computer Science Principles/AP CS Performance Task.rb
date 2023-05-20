# AP Computer Science Principles Performance Task
# all externl samples used are from "Titan" by Disasterpeace (https://www.youtube.com/watch?v=D6os0Upx5A0)
# the rythmn of the notes in synth_main, synth_alt, and drum_main2 are inspired by Waveshaper's "A Picture in Motion" (https://www.youtube.com/watch?v=ZUlAytznxn4)

use_bpm 90
use_synth :saw

titan1 = "C:/Users/papap/Downloads/titan_sample1.wav"
titan2 = "C:/Users/papap/Downloads/titan_sample2.wav"
titan3 = "C:/Users/papap/Downloads/titan_sample3.wav"
titan4 = "C:/Users/papap/Downloads/titan_sample4.wav"
titan5 = "C:/Users/papap/Downloads/titan_sample5.wav"
titan_final = "C:/Users/papap/Downloads/titan_sample_final.wav"

define :synth_main do |v, synth_amp|
  with_fx :ping_pong do
    if v == 0
      play :a, amp: synth_amp
      play :a4, amp: synth_amp
      sleep 0.5
      play :d4, amp: synth_amp
      play :a, amp: synth_amp
      sleep 0.5
      play :e4, amp: synth_amp
      play :d4, amp: synth_amp
      sleep 0.5
      play :a4, amp: synth_amp
      play :e4, amp: synth_amp
      sleep 0.5
    else
      play :f, amp: synth_amp
      play :a4, amp: synth_amp
      sleep 0.5
      play :d4, amp: synth_amp
      play :f, amp: synth_amp
      sleep 0.5
      play :e4, amp: synth_amp
      play :d4, amp: synth_amp
      sleep 0.5
      play :a4, amp: synth_amp
      play :e4, amp: synth_amp
      sleep 0.5
    end
  end
end

define :synth_alt do |n1, n2, n3, n4, n5, n6, n7, n8, synth_amp|
  with_fx :ping_pong do
    play n1, amp: synth_amp
    play n2, amp: synth_amp
    sleep 0.5
    play n3, amp: synth_amp
    play n4, amp: synth_amp
    sleep 0.5
    play n5, amp: synth_amp
    play n6, amp: synth_amp
    sleep 0.5
    play n7, amp: synth_amp
    play n8, amp: synth_amp
    sleep 0.5
  end
end

drum_amp = [1, 0.5, 0.25]

dm_amp = 0
define :drum_main do
  sample :elec_mid_snare, amp: 4
  sleep drum_amp[dm_amp]
end

drum2_amp = 2
define :drum_main2 do
  with_fx :gverb do
    sample :bd_sone, amp: drum2_amp
    sleep 8
    sample :bd_sone, amp: drum2_amp
    sleep 1
    sample :bd_sone, amp: drum2_amp
    sleep 7
  end
end

titan_synth = [titan1, titan2, titan3, titan4, titan5]

index = 0
titan_amp = 0.25
define :titan_creschendo do
  sample titan_synth[index], attack: 5, rate: 2, amp: titan_amp
  index = index + 1
  if index >= 5
    index = 0
  end
  titan_amp = titan_amp + 0.2
  sleep 4
end

define :titan_main do
  sample titan_synth[index], attack: 5, rate: 2, amp: titan_amp
  index = index + 1
  if index >= 3
    index = 0
  end
  sleep 8
end

#M1
n = 1
odd_even = 0
2.times do
  odd_even = n.modulo(2)
  if odd_even == 0
    2.times do
      synth_main 1, 1
    end
  else
    2.times do
      synth_main 0, 1
    end
  end
  n = n + 1
end

live_loop :drum_main do
  40.times do
    drum_main
  end
  stop
end

2.times do
  synth_main 0, 1
end
2.times do
  synth_main 1, 1
end
dm_amp = dm_amp + 1
2.times do
  synth_alt :a, :g4, :d4, :a, :e4, :d4, :g4, :e4, 1
end
2.times do
  synth_alt :f, :g4, :d4, :f, :e4, :d4, :g4, :e4, 1
end
dm_amp = dm_amp + 1
2.times do
  synth_alt :a, :g4, :d4, :a, :e4, :d4, :g4, :e4, 1
end
2.times do
  synth_alt :fs, :g4, :d4, :fs, :e4, :d4, :g4, :e4, 1
end

sample :ambi_lunar_land, rate: 2, amp: 2
sleep 3

5.times do
  titan_creschendo
end

sample titan_final, rate: 2, attack: 4, amp: 4
sleep 4

titan_amp = 5
live_loop :titan do
  1.times do
    titan_main
  end
  1.times do
    titan_main
    titan_amp = titan_amp - 2
  end
  stop
end

live_loop :drum_main2 do
  1.times do
    drum_main2
    drum2_amp = drum2_amp - 2
  end
  stop
end

synth_amp = 1
live_loop :in_motion do
  2.times do
    synth_main 0, synth_amp
  end
  2.times do
    synth_main 1, synth_amp
  end
  2.times do
    1.times do
      synth_main 0, synth_amp
    end
    synth_amp = synth_amp - 0.25
    1.times do
      synth_main 1, synth_amp
    end
    synth_amp = synth_amp - 0.25
  end
  stop
end
