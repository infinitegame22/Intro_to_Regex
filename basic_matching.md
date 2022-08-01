# Basic Matching

In this section, we'll get our feet wet in the calmer waters of the regex ocean with a quick introduction to regex patterns, namely those that match substrings. We'll also touch on some more intricate patterns, namely those that can match one of two or mor subpatterns. 

We will run most of our examples through Rubular. I cna enter each pattern, and see what happens wehn I attempt to matchthem against a variety of different strings.  Watch for how Rubular highlights matched characters; it shows me what my regex matches. 

Note that Rubular provides the `/` characters that delimit regex. I shouldn't enter the `/` characters myself when entering them in Rubular. 

## Alphanumerics

The most basic regex of all is one that matches a specific alphanumeric character. I can construct such a regex by placing the letter or number of interest between two slashes (`/`).

For example, `/s/` matches the letter `s` anywhere it appears inside a string. It matches `s`, `sand`, `cats`, `cast`, and even `Mississippi`. In this last example, `/s/` matches four times, at each of the occurrences of `s` in the string.

When we say that `/s/` matches four times, we refer specifically to how regex work in Rubular. By default, in most languages, a regex matches each string once or not at all; that is, regex matching is a boolean operation. 

Note, however, that `/s/` does not match `S` or `KANSAS`. Regex are case sensitive by default, so if I want to match a capital S, I need to specify `/S/`.

Rubular highlights all the `s` characters in the "Match result" box, thus showing where the regext matches.  However, the regex doesn't highlight the uppercase `S` characters; it doesn't match the last two strings. If I change the regex to `/S/`, Rubular should light up all the `S` characters, but not the `s`-es.

Great. This discussion is interesting, but how do I put it to use in a real program? Regex usage in a program is language dependent, and also dependent upon what I need to do. As a starter, though, we can use the `match` method from the Ruby and JavaScript String classes.

**Ruby**

```Ruby
str = 'cast'
print "matched 's'" if str.match(/s/)
print "matched 'x'" if str.match(/x/)
```

This prints `matched 's'` since `str` contains the letter `'s'`, and neither prints `matched 'x'` since `str` does not contain the letter `'x'`.

I am not acquainted with `match`, I can learn enough with a few minutes of skimming the documentation. We won't use anything more complex than the basic form of `match` that takes a single regex argument and a String caller.

https://ruby-doc.org/core-3.0.2/String.html#method-i-match

http://ruby-for-beginners.rubymonstas.org/advanced/regular_expressions.html

### Special Characters

Regex can also match non-alphanumeric characters. However, some of those have special meaning in a pattern and require specialized treatment. Others have no additional interpretation and need no special treatment.

The following special characters have special meaning in a Ruby or JavaScript regex:

`$ ^ * + ? . ( ) [ ] { } | \ /`

We call such characters *meta-characters*. If I want to match a literal meta-character, I must *escape* it with a leading backslash (`\`). To match a question mark, for instance, use the regex `/\?/`. Go ahead and try `/\?/` now with these strings:

Inside square brackets ,the  rules for meta-characters change. We'll talk about meta-characters in "character classes" a little later.

Some variants of regex have different meta-characters, and some reverse the sense of escaped characters. In `vim`, for example, `\(` and `\)` are meta-characters, while `(` and `)` match literal parentheses. This reversal can be confusing, but I must be aware of it.

In recent years, programs that use regex have begun to support multiple regex styles.  `vim`, for instance now has what it calls *extended syntax* which provides enhanced regex, and also lets me swap the way escaped characters work. I can choose to use `(` and `)` for grouping like most other programs, and use `\(` and `\)` for literal parentheses.  Check docs.

?
What's up, doc?
Silence!
"What's that?"

 I find that `/\?/` matches all of the question marsk in these strings. Try the same strings using `/?/` - I see an error message.

 The remaining characters aren't meta-characters; they have no extraordinary meaning inside a regex.  Both colons ( `':'` ) and spaces (`' '`) fall into this category. I can use these characters without an escape since they have no special meaning inside a pattern. For example, try `/:/` against these strings:

 chris:x:300
A thought; no, forget it.
::::

Try changing the regex to `/ /`. 

As of this writing, Rubular doe snot detect a single space as a regex. Try `/[ ]/` instead - this is equivalent to `/ /`, but it works in Rubular.

Now change the regex to `/./` (that's a period between the `/` characters). Whoa! What happened here? Oh right, `.` is a meta-character; I must escape it. Cahnge the regex to `/\./` instead. That's better now? We'll return to `/./` and why everything lit up in a later chapter.)

I don't need to memorize the list of metacharacters. I can exape all non-alphanumerics even when I don't need to.  However, it's good to get a feel for which are meta-characters; unnecessary escapes make my regex harder to read. 

## Concatenation

I can *concatenate* two or more patterns into a new pattern that matches each of the originals in sequence. The regex `/cat/`, for instance, consists of the concatenation of the `c`, `a`, and `t` patterns, and matches any string that contains a `c` followed by an `a` followed by a `t`.

Give `/cat/` a try using the following strings:

cat
catalog
copycat
scatter
the lazy cat.
CAT
cast

The first five strings matched the regex, but the last two did not.  `CAT` didn't match since it is uppercase, and `cast` didn't match because `s` isn't part of the pattern.

The fact that we use a fancy name like concatenation should give me a hint that more is going on here than meets the eye. The patterns we concatenated are simple; they each match a single, specific character. We aren't limited to these simple patterns though; in fact, I can concatenate any pattern to another to produce a larger regex.  There are no practical limits to the number of concatenations I perform other than the physical limitations of my hardware.

This fundamental idea is one of the more important concepts behind regex; patterns are the building blocks of regex, not characters or strings.  I can construct complex regex by concatenating a series of patterns, and I can analyze a complex regex by breaking it down into its component patterns. 

In theory, my computer's capacity to handle large regex places some limitations on the size and complexity of my regex.  In practice, though, my ability to understand and maintain my code places more severe restrictions on it.  My head will reach the breaking point long before my computer does. Sometimes regex is called *write-only expressions* or *line noise* because it's easy to write an unreadable and unmaintainable mess.  Use regex not because I can; use them because my code demands them.  Often, a bit of refactoring will eliminate the need for a complex regex.  

## Alternation

In this section, we introduce alternation, a simple way to construct a regex that matches one of several sub-patterns. In its most basic form, I write two or more patterns separated by pipe (`|`) characters, and then surround the entire expression in parentheses. For example, try the regex `/(cat|dog|rabbit)/` with the following strings:

The lazy cat.
The dog barks.
Down the rabbit hole.
The lazy cat, chased by the barking dog,
dives down the rabbit hole.
catalog
The Yellow Dog
My bearded dragon's name is Darwin

As with other patterns, case matters, so the `Dog` in `The Yellow Dog` is not matched.

As with concatenation, there are no built-in restrictions on alternation.

Even though parentheses and pipes are meta-characters that require escaping, we don't do that here. We aren't performing a literal match, but are instead using the "meta" meaning of those characters.

To see the difference, give the regex `/\(cat|dog\)/` a try with the following strings:

(cat|dog)
bird(cat|dog)zebra
cat
dog

(This didn't work for me as intended on Rubular. Unsure why.)

## Control Character Escapes

Most modern computing languages use control character escapes in strings to represent characters that don't have a visual representation. For example, `\n`, `\r`, and `\t` are nearly universal ays to represent line feeds, carriage returns, and tabs, respectively.  Both Ruby and JavaScript support these escapes, as do all regex engines.  For example:

```Ruby
puts "has tab" if text.match(/\t/)
```

```JavaScript
if (text.match(/\t/)) {
  console.log("has tab");
}
```

both print `has tab` if `text` contains a tab character.

Note that not everything that looks like a control character escape is a genuine control character escape. For instance:

- `\s` and `\d` are special character classes (we'll cover these later)