## ================== # How to add a blog post # ================== #
# ----- 1. create it
#`date = Sys.Date()`

Rscript -e  'R script distill::create_post(title = "Sussidiarietà e sviluppo: \n
l’elettricità nelle favelas dell’America Latina",\n
collection = "posts",\n
author = "auto", \n
slug = "auto",\n
# Sys.Date(),\n
date = '2009-02-21' \n
draft = FALSE)'


Rscript -e 'distill::create_post(title = "Sussidiarietà e sviluppo: l’elettricità nelle favelas dell’America Latina",
							collection = "posts",
							author = "auto",
							slug = "auto",
							# Sys.Date(),
							date = '2009-02-21',
							draft = FALSE)'


2. knit it or run `rmarkdown::render("_posts/2022-04-13-prova/prova.Rmd")`
(_posts are considered standalone documents that are not re-rendered when the site is built_)
3. build site
