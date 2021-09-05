rmarkdown::render(
  "cv.Rmd",
  output_dir = "private",
  output_file = "private_cv",
  params = list(
    phone = Sys.getenv("PHONE"),
    email = Sys.getenv("EMAIL"),
    linkedin = Sys.getenv("LINKEDIN")
  )
)

rmarkdown::render(
  "cv.Rmd",
  output_dir = "public",
  output_file = "public_cv",
  params = list(
    phone = "",
    email = "",
    linkedin = ""
  )
)

file.copy("public/public_cv.pdf", "../../dh_distill/docs/public_cv.pdf")