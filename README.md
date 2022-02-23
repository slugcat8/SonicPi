define :sax do
  play :a
  sleep 0.25
  play :a
  sleep 0.25
  play :a
  sleep 0.25
  play :a
  sleep 0.25
end


use_bpm 110
use_synth :dpulse

live_loop :main do
  #M3
  play :e
  sleep 0.75
  play :e
  sleep 0.25
  play :gs
  sleep 0.5
  play :b
  sleep 0.5
  play :d4
  sleep 1
  play :gs
  sleep 0.75
  play :a
  sleep 0.25
  
  #M4
  sleep 0.5
  play :a
  sleep 1
  play :g
  sleep 0.25
  play :fs
  sleep 1
  play :f
  sleep 0.75
  play :e
  sleep 0.25
  
  #M5
  sleep 0.25
  play :e4
  sleep 0.25
  play :e
  sleep 0.5
  play :fs
  sleep 0.5
  play :fs
  sleep 0.5
  play :g
  sleep 1
  play :gs
  sleep 0.75
  play :a
  sleep 0.25
  
  #M6
  sleep 0.5
  play :a4
  sleep 1
  sleep 1
end
