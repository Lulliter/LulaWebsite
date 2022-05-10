# CREATE NEW POST STRUCTURE

distill::create_post(title = "Sussidiarietà e sviluppo: l’elettricità nelle favelas dell’America Latina",
							collection = "posts",
							author = "auto",
							slug = "auto",
							date = '2009-02-21', # Sys.Date(),
							draft = FALSE)
# knit or
rmarkdown::render("_posts/2009-02-21-sussidiariet-e-sviluppo-lelettricit-nelle-favelas-dellamerica-latina/sussidiariet-e-sviluppo-lelettricit-nelle-favelas-dellamerica-latina.Rmd")

distill::rename_post_dir(post_dir = "_posts/2009-02-21-sussidiariet-e-sviluppo-lelettricit-nelle-favelas-dellamerica-latina/", slug = "2009-02-21-sussidiar")


distill::create_post(title = "Github Pages & AWS",
							collection = "posts",
							author ="Luisa M. Mimmi",
							slug = "GithubPages-AWS",
							date =  Sys.Date(),
							draft = FALSE,
							#categories = "tools"
)
