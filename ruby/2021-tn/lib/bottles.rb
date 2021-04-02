class Bottles

  def verse(number)
    case number
    when 0
      "No bottles of beer on the wall, " +
      "No bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, " +
      "1 bottle of beer.\n" +
      "Take it down and pass it around, " +
      "No bottles of beer on the wall.\n"
    when 2
      "2 bottles of beer on the wall, " +
      "2 bottles of beer.\n" +
      "Take one down and pass it around, " +
      "1 bottle of beer on the wall.\n"
    else
      "#{number} bottles of beer on the wall, " +
      "#{number} bottles of beer.\n" +
      "Take one down and pass it around, " +
      "#{number - 1} bottles of beer on the wall.\n"
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
