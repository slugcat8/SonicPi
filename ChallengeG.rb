# Stranger Things Main Theme
use_bpm 160
use_synth :saw
main_theme = ["c2", "e2", "g2", "b2", "c3", "b2", "g2", "e2"]
i = 0
live_loop :main_theme do
  with_fx :distortion do
    # YOUR TASK: Use arrays to shorten the 16 lines of code inside this live_loop to only 5 lines of code!
    play main_theme[i]
    i = i + 1
    if i > 7
      i = 0
    end
    sleep 0.5
  end
end
