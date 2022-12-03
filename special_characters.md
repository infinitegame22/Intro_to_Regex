The following special characters have special meaning:

`$ ^ * + ? . ( ) [ ] { } | \ /`

We call such characters meta-characters. If I want to match one of these, I must escape it with a leading backslash `\`.

## Concatenation

The fact that we use a fancy name like concatenation should give you a hint that more is going on here than meets the eye. The patterns we concatenated are simple; they each match a single specific character. We aren't limited to these simple patterns though; in fact, I can concatenate any pattern to another to produce a larger regex. There are no practical limites to the number of concatantions I perform other than the physical limitations of my hardware.

This fundamental idea is one of the most important concecpts behind regex; patterns are the building blocks of regex, not characters or strings. I can construct complex regex by concatenating a series of patterns, and i can analyze a complex regex by breaking it down into its component patterns.

In theory, my computer's capacity to handle large regex places some limitations on the size and complexity of my regex. In practice, though, my ability to undrstand and maintain my code places more severe restirctions on it. My head will reach the breaking point long before my computer does. Use regex not because I can; use them because my code demands them. 

## Alternation

In this section, we introduce alternation, a simple way to construct a regex that matches one of several sub-patterns. In its most basic form, I write two or more patterns separated by pipe characters, and then surround the entire expression in parentheses. 


--------
\s and \d are special character classes (we'll cover these later)
\A and \z are anchors (we'll cover these as well)
\x and \u are special character code markers (we won't cover these)
\y and \q have no special meaning at all
----------

## Ignoring Case

As we've seen, regex are case sensitive by default. If I want to match a lowercase `s`, I need to use a lowercase `s` in my regex. If I want to match an uppercase `S`, I must use an `S` in my regex.

I can change this default behavior by appending an `i` to the close `/` of the regex, which makes the entire regex ignore case. 

**Flags** or **modifiers** 

