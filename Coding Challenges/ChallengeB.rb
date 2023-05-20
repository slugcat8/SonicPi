#snare
live_loop :snare do
  12.times do
    sample :drum_snare_soft
    sleep 2
  end
  stop
end

#heavy drum
live_loop :heavy do
  16.times do
    sample :drum_heavy_kick, amp: 2
    sleep 1
  end
  stop
end

#cymbal
live_loop :cymbal do
  8.times do
    sample :drum_cymbal_closed
    sleep 0.5
  end
  stop
end

sleep 24

live_loop :crash do
  16.times do
    sample :drum_cymbal_hard
    sleep 0.5
  end
  stop
end

live_loop :splash do
  4.times do
    sample :drum_splash_hard
    sleep 2
  end
  stop
end

sleep 8

live_loop :snare do
  4.times do
    sample :drum_snare_soft
    sleep 2
  end
  stop
end

#heavy drum
live_loop :heavy do
  8.times do
    sample :drum_heavy_kick, amp: 2
    sleep 1
  end
  stop
end

#cymbal
live_loop :cymbal do
  16.times do
    sample :drum_cymbal_closed
    sleep 0.5
  end
  stop
end
