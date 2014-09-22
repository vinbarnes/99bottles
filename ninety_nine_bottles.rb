class NinetyNineBottles
  def song(step, num_of_verses=1)
    current_verse = step
    last_verse = step - num_of_verses
    output = ""
    while (current_verse > last_verse) do
      current_verse
      output << verse(current_verse)
      current_verse -= 1
    end
    output
  end

  def verse(num)
    refill =
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    standard =
      "Take one down and pass it around, #{bottles(num - 1)} of beer on the wall."

    line =
      "#{bottles(num).capitalize} of beer on the wall, #{bottles(num)} of beer.\n" +
      "#{(num > 0) ? standard : refill}\n"
  end

private
  def bottles(num)
    if num > 1
      "#{num} bottles"
    elsif num == 1
      "#{num} bottle"
    else
      "no more bottles"
    end
  end
end
