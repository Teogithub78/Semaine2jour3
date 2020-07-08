
def signup
  print "Choose a password bitch: "
  psw = gets.chomp.to_s
  return psw
end

def login
psw = signup
lgn = "placeholder"
  while lgn != psw
  print "Enter the correct password or Marion will kill you in your sleep: "
  lgn = gets.chomp.to_s
end
  if lgn == psw
   welcome_screen
  end
end

def welcome_screen
  puts "welcome b*tch ! Teo met son lait avant ses céréales dans son bol"
  puts "mais chut ! it's a mother f***** secret"
end

def perform
  lgn = login
end

perform
