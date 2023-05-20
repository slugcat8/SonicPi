# Stranger Things Main Theme
use_bpm 160
use_synth :saw

define :glissy do |c, e, g, b, c2|
  play c
  sleep 0.5
  play e
  sleep 0.5
  play g
  sleep 0.5
  play b
  sleep 0.5
  play c2
  sleep 0.5
  play b
  sleep 0.5
  play g
  sleep 0.5
  play e
  sleep 0.5
end

live_loop :fchunky do
  glissy :c2, :e2, :g2, :b2, :c3
  glissy :c3, :e3, :g3, :b3, :c4
  glissy :c4, :e4, :g4, :b4, :c5
  glissy :c5, :e5, :g5, :b5, :c6
end
