# Introduction

## What are Regular Expressions?

Some of the most common tasks in computing involve testing, analyzing, and modifying strings.  For example, I may want to change names in a file from "First Last" format to "Last, First" or I may need to search for "Launch School" or "launchschool" in a document. This universe is home to **regular expressions**. 

For simplicity, we'll use the term **regex** to refer to regular expressions. We use regex as both a singular and plural form; regexes is a bit of a mouthful.

Regex are **patterns** that we can use to search for information of interest in a set of strings. We can use them to perform conditional tests, extract desired information, or even modify information. If I've ever used wildcards on my computer, I can think of regex as the grown-up versions of these simple search patterns.

We sometimes use the terms regex and pattern interchangeably; I'll find this elsewhere as well.  For our purposes, we try to use the term "regex" to refer to the final form of a single regular expression used in a program, while "pattern" refers to the individual components that comprise the regex.  However, the regex is sometimes called a pattern as well, and we sometimes do that too.

Regex are present all over the place.  I'll find them in nearly every programming language that I use.  This book concentrates on Ruby and Javascript.

## What are Regex used for?

Regex have numerous uses; we've given you a mere samling of the types of problems that I can solve with regex.

- Check whether the patten `ss` appears in teh string `Mississippi`.
- Check whether the letter `i` occurs three or more times in `Mississippi`. 
- Find and replace all instances of `Mrs` with `Ms` in a document.
- Does a file name begin with `Bob` and end with `.txt` or `.md`?
- Does a string have any non-alphanumeric characters in it?
- Did the user enter a valid integer?
- Are there any qhitespace characters in the string?
- Find and replace all non-alphanumeric characters in a string with `-`.
- Locate all email addresses in a document.
- Split a line of text into fields assuming that each whitespace character delimits two values.

## A First Taste

At their most basic, regex are strings of characters between two `/` characters, e.g. `/cat/`. This regex matches the string `cat` anywhere it occurs in some text. For example, `/cat/` matches `cat`, `scat`, `catalog`, and even `scatter`. It does not, however, match `Cat` or `c a t`. 

Such simple patterns are useful, but I can typically find a more straightforward way to write my code. However, when I go a bit deeper, I run into regex like `/\bhttps?:\/\/\S+\?/` which looks like gibberish. It is useful, though: it matches any web URL that contains a query string, regardless of whether the URL uses the HTTP or HTTPS scheme. This example hits at the expressiveness and power available with regex, and I will soon learn how to write them

## Do I have to know about regex?

Technically no, but we expect me to know the basics to make my way through the LS curriculum.  Everything that I can do with regex I can do without them. However, that doesn't mean it is easy.  There is an incredible amount of expressiveness in regex that is exceptionally difficult to emulate using Ruby's non-regex facilities.

The more accurate answer is that I must know the basics of regex, and that's what this book teaches.  I don't need to be an expert, but I do need to recognize and understand regex when I see them.  Knowing regex helps me solve complex pattern matching problems, even without knowing the more advanced details.

## How often will I use regex?

That depends on the types of progrms I work on in the future.  If I never do any string processing -- a rare situation -- I won't use regex in my programs often. However, if I do any string processing at all, regex will help me do my job. The more string processing I do, the more I can expect to use regex.