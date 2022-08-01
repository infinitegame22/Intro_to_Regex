http://ruby-for-beginners.rubymonstas.org/objects/predicates.html

# Predicate methods

If I check the list of methods on our String above I see that in Ruby we can have methods that end with a questions mark `?`. What's up with that?

By convention, in Ruby, these methods return either `true` or `false`. For example, we can ask a number if it is even or odd: 

```Ruby
$ irb
> 5.odd?
=> true

> 5.even?
=> false
```
This makes them read like a question, which is pretty cool.

Or I can ask the number if it's between two other numbers.  Obviously this method needs us to pass those two other numbers.  So now we also have an example of a method that takes two arguments:

```Ruby
> 5.between?(1, 10)
=> true

> 5.between?(11, 20)
=> false
```
These methods are called *predicate methods* in Ruby. Not quite sure why, maybe because of the historical math context of programming.

Predicate methods that end with a question mark `?` return either `true` or `false`. 

Strings also define some predicate methods:

```Ruby
> name = "Ruby Monstas"
> name.start_with?("R")
=> true
name.start_with?("a")
=> false
```
Do I also think it's kinda odd that `name.start_with?("a")` reads almost like English, but not quite? Maybe the method could have been named `starts_with?` instead, right? That's true. This is because Matz, the creator of Ruby, is not a native English speaker, and some names sound right in Japanese when translated literally.

Also:
```Ruby
> name = "Ruby Monstas"
> name.include?("by")
=> true

> name.include?("r")
=> false
```
When we check what methods there are defined on a number, we find some with the same name, but also different ones: 

```Ruby
$ irb
> 1.methods.sort
=> [:*, :+, :-, :/, :between?, :even?, :odd?, :zero?]
```
Let's try `zero?`:
```Ruby
> 0.zero?
=> true

> 1.zero?
=> false
```
Arrays have the methods `include?` and Hashes respond to `key?`:

```Ruby
> [1, 2].include?(1)
=> true

> [1, 2].include?(3)
=> false

> { "eins" => "one" }.key?("eins")
=> true

> { "eins" => "one" }.key?("zwei")
=> false
```