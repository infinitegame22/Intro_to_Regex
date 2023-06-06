=begin
Write a method that returns true if its argument looks like a URL, false if it does not.

input: string
output: boolean
Rules: 
- is not a url if there are spaces anywhere

E:
url?('http://launchschool.com') == true
- everything is correct here, starting with the http://

url?('https://example.com') == true
- https is also included as valid

url?('https://example.com hello') == false
- space between the .com and hello

D:
- regex

=end

# LS

def url?(text)
  !!text.match(/\Ahttps?:\/\/\S+\z/)
end

# or

def url?(text)
  text.match?(/\Ahttps?:\/\/\S+\z/)
end