@jedies = 15
@siths = 15

def planet_choice
  p_choice = rand(1..5) 
  case p_choice 
  when 1 
    'Tatuin' 
  when 2
    'Balmora' 
  when 3
    'Dagoba'
  when 4
    'Alderan' 
  else
    'Earth' 
  end    
end

def event_choice
  e_choice = rand(1..5) 
  case e_choice 
  when 1 
    'Starfleet battle on orbit of' 
  when 2
    'Ground melee fight on ' 
  when 3
    'Covert operation on '
  when 4
    'Tank battle on ' 
  else
    'Armed conflict on' 
  end    
end

def side?
    rand(0..1) == 1 
end

def attack
  kill = rand(1..5) 
  if side?
    @siths -= kill
    print "- #{kill} siths was killed " 
  else
    @jedies -= kill
    print "- #{kill} jedies was killed " 
  end
end

def battle
  print "#{event_choice} #{planet_choice} "
  puts "#{attack}"
end

def result
  puts "There are only #{@jedies} jedies and #{@siths} siths left"
end

def who_win?
  if @jedies <= 0 || @siths <= 0
    puts "#{@jedies < 0 ? 'Siths' : 'Jedies' } wins this war"
    exit
  else
    puts 'War continious'
  end
end

loop do
  battle
  sleep rand(1.5..3)
  result
  who_win?
end