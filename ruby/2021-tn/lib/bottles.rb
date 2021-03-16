class Bottles

  def verse(number)
    if number == 0
      "No more bottles of beer on the wall, " +
        "no more bottles of beer.\n" +
        "Go to the store and buy some more, " +
        "99 bottles of beer on the wall.\n"
    elsif number == 1
      "1 bottle of beer on the wall, " +
        "1 bottle of beer.\n" +
        "Take it down and pass it around, " +
        "no more bottles of beer on the wall.\n"
    elsif number == 2
      "2 bottles of beer on the wall, " +
        "2 bottles of beer.\n" +
        "Take one down and pass it around, " +
        "1 bottle of beer on the wall.\n"
    # elsif number == 3
    #   "3 bottles of beer on the wall, " +
    #     "3 bottles of beer.\n" +
    #     "Take one down and pass it around, " +
    #     "2 bottles of beer on the wall.\n"
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
