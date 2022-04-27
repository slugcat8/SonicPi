use_bpm 90
use_synth :saw

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

define :synth_alt do |n1_n4, n2_n7, synth_amp|
  with_fx :ping_pong do
    play n1_n4, amp: synth_amp
    play n2_n7, amp: synth_amp
    sleep 0.5
    play :d4, amp: synth_amp
    play n1_n4, amp: synth_amp
    sleep 0.5
    play :e4, amp: synth_amp
    play :d4, amp: synth_amp
    sleep 0.5
    play n2_n7, amp: synth_amp
    play :e4, amp: synth_amp
    sleep 0.5
  end
end

2.times do
  synth_main 0, 1
end
2.times do
  synth_main 1, 1
end
