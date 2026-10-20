---
title: Data Manipulation with dplyr
layout: home
staff:
    - name: Nadia Muhe
      link: https://library.utoronto.ca/staff/nadia-muhe
maintainer:
    - name: Nadia Muhe
      link: https://library.utoronto.ca/staff/nadia-muhe
created_date: 2026-10-15
nav_order: 2
parent: Intermediate R
---

## Data Manipulation with dplyr

```
# DATA: load data
data(storms)
```

```
# FILTER: keep rows that meet a condition
filter(storms, pressure < 1000)
```

```
# PIPE (%>%): send the result to the next step
# Shortcut: Ctrl + Shift + M
storms %>% filter(pressure < 1000)
topstorms <- storms %>% filter(pressure < 1000)
topstorms
```

```
# SELECT: keep or drop columns
topstorms %>% select(name)
topstorms %>% select(ends_with("diameter"))
topstorms %>% select(-ends_with("diameter"))
topstorms <- topstorms %>% select(-ends_with("diameter"))
topstorms
```

```
# GROUP_BY: group rows that share a value
topstorms %>% group_by(name)
```

```
# SUMMARIZE: one summary row per group
topstorms %>% 
  group_by(name) %>% 
  summarize(minpressure = min(pressure), 
            meanlat = mean(lat), 
            meanlong = mean(long))
```
```
topstorms %>% 
  group_by(name, year) %>% 
  summarize(count = n(), 
            minpressure = min(pressure), 
            meanlat = mean(lat), 
            meanlong = mean(long))
```
```
topstorms <- topstorms %>% 
  group_by(name, year) %>% 
  summarize(count = n(), 
            minpressure = min(pressure), 
            meanlat = mean(lat), 
            meanlong = mean(long))
topstorms
```

```
# MUTATE: add or change columns
topstorms %>% mutate(duration = 6 * count)
topstorms <- topstorms %>% mutate(duration = 6 * count)
topstorms
```

```
# ARRANGE: sort rows
topstorms %>% arrange(minpressure, desc(duration))
topstorms <- topstorms %>% arrange(minpressure, desc(duration))
topstorms
```

```
# WRITE.CSV: export data as a CSV file
write.csv(topstorms, "topstorms.csv")
write.csv(topstorms, "topstorms.csv", row.names = FALSE)
```

**Technique:** [Converting data formats](https://mdlutoronto.github.io/tutorials-search/?technique=Converting+data+formats), [Cleaning data](https://mdlutoronto.github.io/tutorials-search/?technique=Cleaning+data)\
**Tools:** [R](https://mdlutoronto.github.io/tutorials-search/?tool=R)\
**Data Format:** [Statistics](https://mdlutoronto.github.io/tutorials-search/?dataFormat=Statistics)