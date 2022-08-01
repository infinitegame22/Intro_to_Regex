def test(b)  
  b.map {|letter| "I like the letter: #{letter}"}
end

  a = ['a', 'b', 'c']

test(a)

The `map` invocation here returns an array of ["I like the letter: a", "I like the letter: b", "I like the letter: c"].  The letter parameter is passed the element argument and maps the string character element to the string return value of the block.

Modified:

The return value of the method `map` is a new array object containing the transformed elements the `map` was called on.  

When the `map!` method is called , it mutates the array object it was called on instead of making a new array object. Therefore, the object referenced to by variable `a` and the return value of `map!` are the same and will output the same value.



`map!` would mutate the original array in place. 
  def example(str)
    i = 3  
    loop do    
      puts str    
      i -= 1    
      break if i == 0  
    end
  end
  
  example('hello')

The `loop` example above outputs:
hello
hello
hello

`i` is initialized to the integer value `3`. This acts as a counter for the loop.  On line `15` the `i` counter is decremented by 1. The `break` statement on line `16` works when `i` is exactly equal to 0. On line `14` the `puts` method is invoked on the parameter `str`. The output of this line is the string `hello` 3 times based on the counter of the loop.

Add: In the inner scope defined by the method. 
Innerscope inside the method definition
Inner scope inside the block
Inner scope of the method accessible to the 
Instead of decrement, use reassigned to `i - 1`

Comments: 
more precise wording for `break`
Not sure if "parameter `str` is accurate"


Modified: 
Fundamental: Variables initialized in the outer scope can be accessed in the inner scope.

On line 10, the method `example` is invoked and the string object `hello` is passed in as the argument. Lines 1-8 define the method and the parameter `str` is initialized to the string `hello`. The variable `i` is initialized to the integer `3` at the inner scope of the method. The loop method is called, and the do..end block is passed to it as an argument. The `puts` method is called and the do..end block is passed to it as an argument. The `puts` method is called, and the string reference by variable `str` is outputted.  On line 5, `i` is reassigned to the value of `i - 1` inside the inner scope of the block until `i = 0`, which fulfills the conditional for the keyword `break`, and breaks

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n| n + 1  #unrecognized math
  puts n
end

p new_array

`select` is used to filter data. 


---------------

evaluates the last line of the block is what affects the return value of `select`. 

The variable `arr` is initialized to the array object `[1, 2, 3...10] on line 1. 

