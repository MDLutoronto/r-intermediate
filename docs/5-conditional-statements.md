---
title: Conditional Statements
layout: home
staff:
    - name: Nadia Muhe
      link: https://library.utoronto.ca/staff/nadia-muhe
maintainer:
    - name: Nadia Muhe
      link: https://library.utoronto.ca/staff/nadia-muhe
created_date: 2026-10-15
nav_order: 3
parent: Intermediate R
---

## Conditional Statements

### Example 1

```
# Example 1: Is a storm in the dataset?
stormname <- "Katrina"    # Try "Katrina" then "Ben"

if (stormname %in% storms$name) {
  print("This storm is in the dataset.")
} else {
  print("This storm is not in the dataset!")
}
```

### Example 2

```
# Example 2: North-south storm movement
head(storms)
summary(storms$lat)
if (storms$lat[2] > storms$lat[1]) {
  print(glue("{storms$name[2]} is moving north."))
} else if (storms$lat[2] < storms$lat[1]){
  print(glue("{storms$name[2]} is moving south."))
}
```

### Challenge

Add an `else` to Example 2 that prints a message when the latitude doesn't change, meaning the storm isn't moving north or south.

Test your code with rows 11 and 12.



**Technique:** [Converting data formats](https://mdlutoronto.github.io/tutorials-search/?technique=Converting+data+formats), [Cleaning data](https://mdlutoronto.github.io/tutorials-search/?technique=Cleaning+data)\
**Tools:** [R](https://mdlutoronto.github.io/tutorials-search/?tool=R)\
**Data Format:** [Statistics](https://mdlutoronto.github.io/tutorials-search/?dataFormat=Statistics)