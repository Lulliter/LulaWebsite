########################################################
# ===== Build LOCAL version
# R -e 'rmarkdown::render("_posts/slug/slud.Rmd")' # basically knit each post...

########################################################
# ===== Build PUBLIC version
R -e 'rmarkdown::render_site(encoding = "UTF-8")' # install to default location.
########################################################


#=========================================== (Push to Github repo) ================================================#
# check status
git status

# ..... Add ALL changes to git Index.
			git add --All
# ..... Add TRACKED items changes to git Index.
			# git add -u
# ..... Add site `/docs` items changes to git Index.
			# cd docs
			# git add . #cd .. # (back to ./blog)
# ....Create Std commit "message"....
NOW=$(date +"%d-%b-%Y %R")
# echo "$NOW"
msg="rebuilt on $NOW"

# ... Commit Those changes.
git commit -m "$msg"
		# git commit -m "upd cv"
		# git commit -m "revised CVs"

# ... Push source and build repos.
git push origin master


#=========================================== (tracked by mistake ) ================================================#
git rm -r --cached .Rproj.user
#=========================================== (check to ./docs) ================================================#
########################################################
cd ./docs

# Go To (git) ./sub-folder (one below the Rproj wdir)
#	cd ./MexicoWaterSurvey
	ls

 ## ================== # How to add a blog post # ================== #
# ----- 1. create it
#`date = Sys.Date()`


#
# Rscript -e 'distill::create_post(ti '
