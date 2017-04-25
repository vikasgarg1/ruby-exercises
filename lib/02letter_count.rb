# Write a method called `letter_count` to count the letter
# occurrence in a string. Use a hash
#
# Example method call:
#
# letter_count('banana')
#
# > {"b" => 1, "a" => 3, "n" => 2}

def letter_count(s)
  Hash[
     s.split('')
     .group_by{ |c| c }
     .map{ |k, v| [k, v.size] }
  ]
end

p letter_count("banana")
