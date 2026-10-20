---
title: Writing Functions
layout: home
staff:
    - name: Nadia Muhe
      link: https://library.utoronto.ca/staff/nadia-muhe
maintainer:
    - name: Nadia Muhe
      link: https://library.utoronto.ca/staff/nadia-muhe
created_date: 2026-10-15
nav_order: 5
parent: Intermediate R
---

## Writing Functions

### Example 1

```
# Example 1: No arguments
helloworld <- function() {
  print("Hello World!")  
}
helloworld()
```

### Example 2

```
# Example 2: One argument
helloname <- function(name) {
  print(glue("Hello {name}!"))  
}
helloname("Kai")
```

### Example 3

```
# Example 3: Return a value
addtax <- function(price) {
  return(round(price * 1.13, 2))
}
addtax(49.99)
addtax(49.99) + addtax(79.99)
```


### Notes

**`print()` vs `return()`:** `print()` displays a value. `return()` sends a value back so you can save it or use it in a calculation, as in Example 3.

**`print()` also returns a value.** It just doesn't display it twice. For example, `x <- helloname("Kai")` prints "Hello Kai" and also saves it in `x`.

**`return()` is optional.** R functions return the result of their last line automatically. Using `return()` makes it clear what the function gives back.



**Technique:** [Converting data formats](https://mdlutoronto.github.io/tutorials-search/?technique=Converting+data+formats), [Cleaning data](https://mdlutoronto.github.io/tutorials-search/?technique=Cleaning+data)\
**Tools:** [R](https://mdlutoronto.github.io/tutorials-search/?tool=R)\
**Data Format:** [Statistics](https://mdlutoronto.github.io/tutorials-search/?dataFormat=Statistics)