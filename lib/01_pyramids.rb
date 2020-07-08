def half_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? "
  print "> "
  num = gets.chomp.to_i
  a = num - 1
  puts "Voici la pyramide :"
  while a >= 0
    puts ("#"*(num - a)).rjust(num)
    a = a - 1
  end
end

half_pyramid

def full_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? "
  print "> "
  num = gets.chomp.to_i
  b = 1
  fixed = num * 2

  puts "Voici la pyramide :"
  while num > 0
    formula = 2 * b - 1
    puts ("#" * (formula)).center(fixed)
    b = b + 1
    num = num - 1
  end
end

full_pyramid



def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? "
    print "> "
    num = gets.chomp.to_i
    b = 1
    fixed = num

    if num < 0 || num > 25 || num %2 == 0
      puts "Prends un chiffre impair espèce de melon !"

    else
      puts "Voici la pyramide :"
      while num > (fixed - 1) / 2 + 1
        formula = 2 * b - 1
        puts ("#" * (formula)).center(fixed)
        b = b + 1
        num = num - 1
      end

      while num > 0 && num <= (fixed - 1) / 2 + 1
        formula = 2 * b - 1
        puts ("#" * (formula)).center(fixed)
        num = num - 1
        b = b - 1
      end
    end
end

wtf_pyramid
