use_bpm 160
use_synth :saw

define :stranger_things_melody do
  play :c2
  sleep 0.5
  play :e2
  sleep 0.5
  play :g2
  sleep 0.5
  play :b2
  sleep 0.5
  
  play :c3
  sleep 0.5
  play :b2
  sleep 0.5
  play :g2
  sleep 0.5
  play :e2
  sleep 0.5
end

stranger_things_melody

# use fx to modify the sound produced by your synth
with_fx :slicer do
  stranger_things_melody
end

with_fx :krush do
  stranger_things_melody
end

with_fx :bitcrusher do
  stranger_things_melody
end

with_fx :distortion do
  stranger_things_melody
end

# sustain just means hold the note longer!
play :c2, sustain: 3
play :e2, sustain: 4
play :g2, sustain: 2
play :b2, sustain: 2
