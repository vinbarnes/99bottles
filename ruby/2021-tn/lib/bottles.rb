class Bottles

  def verse(number)
    "#{quantity(number).capitalize} #{container(number)} of beer on the wall, " +
    "#{quantity(number)} #{container(number)} of beer.\n" +
    "#{action(number)}, " +
    "#{quantity(successor(number))} #{container(successor(number))} of beer on the wall.\n"
  end

  def successor(number)
    if number == 0
      99
    else
      number - 1
    end
  end

  def action(number=0)
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end

  def quantity(number)
    if number == 0
      "no more"
    else
      number.to_s
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
