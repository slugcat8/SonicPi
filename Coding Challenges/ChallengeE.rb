# TEMPO & SYNTH
use_bpm 180
use_synth :chipbass

# VARIABLES TO STORE SAMPLES

mario_intro = "C:/Users/micah_sessions/Downloads/mario_sounds-20220223T193357Z-001/mario_sounds/mario_intro.wav"
pipe = "C:/Users/micah_sessions/Downloads/mario_sounds-20220223T193357Z-001/mario_sounds/pipe.wav"
coin = "C:/Users/micah_sessions/Downloads/mario_sounds-20220223T193357Z-001/mario_sounds/coin.wav"
jump = "C:/Users/micah_sessions/Downloads/mario_sounds-20220223T193357Z-001/mario_sounds/jump.wav"
mushroom = "C:/Users/micah_sessions/Downloads/mario_sounds-20220223T193357Z-001/mario_sounds/mushroom.wav"


# OPENING LINE
sample mario_intro
sleep 8

# INTRO
play :e4
sleep 0.5
play :e4
sleep 1
play :e4
sleep 1
play :c4
sleep 0.5
play :e4
sleep 1
play :g4
sleep 2
play :g3
sleep 2


# PART ONE
live_loop :part1 do
  4.times do
    play :c4
    sleep 1.5
    play :g3
    sleep 1.5
    play :e3
    sleep 1.5
    play :a3
    sleep 1
    play :b3
    sleep 1
    play :bb3
    sleep 0.5
    play :a3
    sleep 1
  end
  stop
end

live_loop :noise_effects do
  4.times do
    sample jump
    sleep 2
    sample coin
    sleep 1
    sample coin
    sleep 1
    sleep 1
    sleep 1
    sample pipe
    sleep 2
  end
  stop
end

sleep 32

#PART TWO
play :g3
sleep 2/3.0 #0.666666...
play :e4
sleep 2/3.0 #0.666666...
play :g4
sleep 2/3.0 #0.666666...
play :a4
sleep 1
play :f4
sleep 0.5
play :g4
sleep 1
play :e4
sleep 1
play :c4
sleep 0.5
play :d4
sleep 0.5
play :b3
sleep 1

sample mushroom
