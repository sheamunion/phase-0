# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

=begin >======ORIGINAL PSEUDOCODE======

IF the first value of array is smaller than the second value
  IF the first is smaller than the third value
    IF the first is smaller than the fourth value (and so on)
      OUTPUT the first value
    ELSE
      OUTPUT the fourth value
    END
  ELSIF the third value is smaller than the fourth value
    OUTPUT the third value
  ELSE
    OUTPUT the fourth value
  END
ELSIF the second value is smaller than the third value
  IF the second value is smaller than the fourth value
    OUTPUT the second value
  ELSE
    OUTPUT the fourth value
  END
ELSIF the third value is smaller than the fourth value
  OUTPUT the thrid value
ELSE
  OUTPUT the fourth value
END

=end #======ORIGINAL PSEUDOCODE======<

=begin >======FIRST ATTEMPT=====

def smallest_integer(list_of_nums)
  a = list_of_nums[0]
  b = list_of_nums[1]
  c = list_of_nums[2]

  if list_of_nums == []
    p nil
  elsif list_of_nums.length == 1
    p list_of_nums[0]
  elsif a < b
    if a < c
      p a
    else
      p c
    end
  elsif b < c
    p b
  else
    p c
  end
end

=end #======FIRST ATTEMPT=====<

=begin >======REFINED PSEUDOCODE======

INPUT: GET a series of integers (as an array)
OUTPUT: RETURN smallest intger of array (an integer)

CREATE a counter for the WHILE loop

IF the array is empty, return 'nil'.

ELSIF the array has only one value, return that value.

ELSE
  WHILE counter is less than the length of the array
    compare current integer (array[counter]) with the next integer (array[counter+1])
    IF current integer is smaller
      store that in OUTPUT
    ELSE
      store the next integer in OUTPUT
    END
    increase the counter by 1
  END
  return OUTPUT
END

=end #======REFINED PSEUDOCODE======<

#=begin >======SECOND ATTEMPT======

def smallest_integer(list_of_nums)

  length = list_of_nums.length

  if length == 0

    return nil

  elsif length == 1

    return list_of_nums[0]

  else
    counter = 1
    number = 0
    target = 1
    while counter <= length
      if list_of_nums[number] < list_of_nums[target]
        output = list_of_nums[number]
        target += 1
      else
        output = list_of_nums[target]
        number += 1
      end
      counter += 1
      return output
    end
  end
end
#=end #======SECOND ATTEMPT======<