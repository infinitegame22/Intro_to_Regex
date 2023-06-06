text = 'xyx'
puts 'matched' if text.match(/[^x]/)

=begin
Write a regex that matches any letter except x or X. Test it with these strings:

Copy Code
0x1234
Too many XXXXXXXXXXxxxxxxXXXXXXXXXXXX to count.
The quick brown fox jumps over the lazy dog
THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG
There should be 82 matches.

Solution
Copy Code
/[A-WYZa-wyz]/
This solution should match nearly everything in the sample text except:

the entire first line
none of the spaces
none of the x or X characters
the . at the end of line 2
Why is /[^xX]/ not a valid answer to the previous exercise?



=end