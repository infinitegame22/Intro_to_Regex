=begin
Write method that returns all of the fields in haphazardly formatted string.
A variety of spaces, tabs and commas separate the fields, with possible multiple
occurrences

input: string
output: array

Rules:
- input string can have multiple white space occurrences or commas.
- if a tab is include, do not include in output array
- if a newline is included, do includ in output array

E:

fields("Pete,201,Student")
# -> ["Pete", "201", "Student"]

fields("Pete \t 201    ,  TA")
# -> ["Pete", "201", "TA"]

fields("Pete \t 201")
# -> ["Pete", "201"]

fields("Pete \n 201")
# -> ["Pete", "\n", "201"]



=end