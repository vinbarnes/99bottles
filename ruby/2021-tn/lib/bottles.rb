class Bottles

  def verse(number)
    case number
    when 0
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    when 1
      "#{number} #{container(number)} of beer on the wall, " +
      "#{number} #{container(number)} of beer.\n" +
      "Take #{pronoun(number)} down and pass it around, " +
      "#{quantity(number - 1)} #{container(number - 1)} of beer on the wall.\n"
    else
      "#{number} #{container(number)} of beer on the wall, " +
      "#{number} #{container(number)} of beer.\n" +
      "Take #{pronoun(number)} down and pass it around, " +
      "#{quantity(number - 1)} #{container(number - 1)} of beer on the wall.\n"
    end
  end

  def quantity(number)
    if number == 0
      "no more"
    else
      number
    end
  end

  def pronoun(number)
    if number == 1
      "it"
    elsif number > 0
      "one"
    end
  end

  def container(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def verses(start_at, end_at)
    start_at.downto(end_at).map { |number|
      verse(number)
    }.join("\n")
  end

  def song
    verses(99, 0)
  end
end
