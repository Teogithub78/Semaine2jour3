
def perform_game
  player_position = 0

  while player_position < 10
    dice = rand(1..6)
    puts "Votre dé a fait #{dice}"
      if dice == 5 || dice == 6
        player_position += 1
        puts "Vous montez d'une marche. Vous êtes à la marche #{player_position}."
      elsif dice == 1
        player_position -= 1
        puts "Vous descendez d'une marche. Vous êtes à la marche #{player_position}."
      else
        puts "Vous restez sur la même marche, vous êtes à la marche #{player_position}."
      end
  end
  if player_position == 10
    puts "Youpi t'as gagné!"
  end
end

perform_game

#lolilol
def perform_100_simulations
  player_position = 0
  count_dice_rolls = 0

  while player_position < 10
    dice = rand(1..6)
      if dice == 5 || dice == 6
        player_position += 1
        count_dice_rolls += 1
      elsif dice == 1
        player_position -= 1
        count_dice_rolls += 1
      else
        player_position = player_position
        count_dice_rolls += 1
      end
    end
    return count_dice_rolls
  end

def average_finish_time
  table = []
  100.times do
    count_dice_rolls = perform_100_simulations
    table << count_dice_rolls
  end
  sum = 0
  table.each { |a| sum+=a }
  puts ">> statistics on a hundred simulations of this game show that you can win with an aproximate amount of #{sum / 100} dice rolls"
end

average_finish_time

#lolilol#2
def perform
  player_position = 0
  count_dice_rolls = 0

  while player_position < 10
    dice = rand(1..6)
      if dice == 5 || dice == 6
        player_position += 1
        count_dice_rolls += 1
      elsif dice == 1
        player_position -= 1
        count_dice_rolls += 1
      else
        player_position = player_position
        count_dice_rolls += 1
      end
    end
    return count_dice_rolls
  end

def average_finish_time
  sum = 0
  100.times do
    count_dice_rolls = perform
    sum += count_dice_rolls
  end
  puts ">> statistics on a hundred simulations of this game show that you can win with an aproximate amount of #{sum / 100} dice rolls"
end

average_finish_time
