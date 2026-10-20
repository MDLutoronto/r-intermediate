---
title: For Loops
layout: home
staff:
    - name: Nadia Muhe
      link: https://library.utoronto.ca/staff/nadia-muhe
maintainer:
    - name: Nadia Muhe
      link: https://library.utoronto.ca/staff/nadia-muhe
created_date: 2026-10-15
nav_order: 4
parent: Intermediate R
---

## For Loops

### Example 1

```
# Example 1: Looping over values
students <- c("Kai", "Ana", "John", "Ella", "Belle")

for (name in students) {
  print(glue("{name} has {nchar(name)} letters."))
}
```

### Example 2

```
# Example 2: Looping over row numbers
nrow(storms)
for (row in 2:nrow(storms)) {
  if (storms$lat[row] > storms$lat[row-1]) {
    print(glue("{storms$name[row]} is moving north."))
  } else if (storms$lat[row] < storms$lat[row-1]) {
    print(glue("{storms$name[row]} is moving south."))
  }
}
```

### Challenge

When one storm ends and the next begins, the code compares the last row of one storm with the first row of the next. Change the loop so it skips the row comparison when a new storm starts.


**Technique:** [Converting data formats](https://mdlutoronto.github.io/tutorials-search/?technique=Converting+data+formats), [Cleaning data](https://mdlutoronto.github.io/tutorials-search/?technique=Cleaning+data)\
**Tools:** [R](https://mdlutoronto.github.io/tutorials-search/?tool=R)\
**Data Format:** [Statistics](https://mdlutoronto.github.io/tutorials-search/?dataFormat=Statistics)