[![Netlify Status](https://api.netlify.com/api/v1/badges/faea2121-c6bb-4355-bbf4-d5afb9dd0224/deploy-status)](https://app.netlify.com/sites/datasciencebox/deploys)

## Install Packages For render

### Render Web

```{r}
install.packages(c("rmarkdown","digest","jsonlite","htmltools","evaluate","RColorBrewer","visNetwork","fastmap","knitr","xfun","htmlwidgets","yaml","DiagrammeR","magrittr","stringr","stringi","lifecycle","vctrs","dplyr","R6","generics","pillar","cli","fansi","utf8","tibble","pkgconfig","tidyselect","purrr","withr","tidyr","rstudioapi","ellipsis"),
"/datascience-box-main/renv/library/R-4.2/x86_64-w64-mingw32")
```
### Render Application Exercises

#### install rtools

https://cran.r-project.org/bin/windows/Rtools/

```{r}
install.packages(c("tidyverse","ggplot2","gtable","scales","munsell","colorspace","readr","hms","tzdb","forcats","lubridate","timechange","DT","labeling","farver","crosstalk","unvotes","ggrepel","Rcpp","viridisLite","tidymodels","broom","backports","prodlim","data.table","jquerylib","lava","future.apply","future","globals","listenv","parallelly","foreach","iterators","schrute"), "/datascience-box-main/datascience-box-main/renv/library/R-4.2/x86_64-w64-mingw32")

# if you don't have withr
install.packages(withr)

# if you don't have devtools
install.packages(devtools)

withr::with_libpaths(new="/datascience-box-main/renv/library/R-4.2/x86_64-w64-mingw32",devtools::install_github("RamiKrispin/coronavirus"))

```


### Render hw-instructions
Error
```{r}
ERROR: Validation of YAML front matter failed.
ERROR: (line 8, columns 17--19) Field "link-citations" has value yes, which must instead be `true` or `false`
```
Change link-citations form "yes" to "true"
```{r}
link-citations: true
```
install packages
```{r}
install.packages(c("openintro","airports","cherryblossom","usdata","ggimage","ggfun","ggplotify","gridGraphics","yulab.utils","magick","curl","fivethirtyeight","robotstxt","rvest","spiderbar","vroom","bit64","bit","crayon"), "/datascience-box-main/datascience-box-main/renv/library/R-4.2/x86_64-w64-mingw32")

withr::with_libpaths(new="/datascience-box-main/renv/library/R-4.2/x86_64-w64-mingw32",devtools::install_github("rstudio-education/dsbox"))
```

###  Render lab-instructions
Error
```{r}
ERROR: Validation of YAML front matter failed.
ERROR: (line 8, columns 17--19) Field "link-citations" has value yes, which must instead be `true` or `false`
```
Change link-citations form "yes" to "true"
```{r}
link-citations: true
```
install packages
```{r}
install.packages(c("datasauRus","mosaicData","selectr","skimr","repr"."base64enc"), "/datascience-box-main/datascience-box-main/renv/library/R-4.2/x86_64-w64-mingw32")
```
## Data Science Course in a Box

Data Science in a Box contains the materials required to teach (or learn from) an introductory data science course using R, all of which are freely-available and open-source.
They include course materials such as slide decks, homework assignments, guided labs, sample exams, a final project assignment, as well as materials for instructors such as pedagogical tips, information on computing infrastructure, technology stack, and course logistics.

See [datasciencebox.org](https://datasciencebox.org/) for everything you need to know about the project!

Note that all materials are released with [Creative Commons Attribution Share Alike 4.0 International](LICENSE.md) license.

## Questions, bugs, feature requests

You can file an issue to get help, report a bug, or make a feature request.

Before opening a new issue, be sure to [search issues and pull requests](https://github.com/rstudio-education/datascience-box/issues) to make sure the bug hasn't been reported and/or already fixed in the development version.
By default, the search will be pre-populated with `is:issue is:open`.
You can [edit the qualifiers](https://help.github.com/articles/searching-issues-and-pull-requests/) (e.g. `is:pr`, `is:closed`) as needed.
For example, you'd simply remove `is:open` to search *all* issues in the repo, open or closed.

If your issue involves R code, please make a minimal **repr**oducible **ex**ample using the [reprex](https://reprex.tidyverse.org/) package.
If you haven't heard of or used reprex before, you're in for a treat!
Seriously, reprex will make all of your R-question-asking endeavors easier (which is a pretty insane ROI for the five to ten minutes it'll take you to learn what it's all about).
For additional reprex pointers, check out the [Get help!](https://www.tidyverse.org/help/)
section of the tidyverse site.

## Code of Conduct

Please note that the datascience-box project is released with a [Contributor Code of Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
