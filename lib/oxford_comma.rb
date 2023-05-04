def oxford_comma(array)
  if array.length == 1
    array[0]
  elsif array.length == 2
    array.insert(-2, "and")
    array.join(" ")
  elsif array.length > 2
    last_word_length = array[-1].length
    puts last_word_length
    new_array = array.insert(-2, "and")
    new_array = new_array.join(", ")
    puts new_array.class
    deleted_last_comma_array = new_array.slice!(-(last_word_length + 2))
    new_array
  end
end

pp oxford_comma(["fiddleheads", "okra", "kohlrabi"])
pp oxford_comma(["fiddleheads", "okra"])
pp oxford_comma(['matty'])
