# Diablo API
[![Build Status](https://travis-ci.org/zamorarr/diabloapi.svg?branch=master)](https://travis-ci.org/zamorarr/diabloapi)

1. Create a free developer account at [dev.battle.net](https://dev.battle.net/)

2. In your .Renviron file, add the key you get after you register an application.

```sh
BLIZZARD_API_KEY=<yourkeyhere>
```
3. Install this package

```R
devtools::install_github("zamorarr/diabloapi")
```

4. Use it to get Diablo data!

```R
library(diabloapi)
df <- follower("templar")
```
