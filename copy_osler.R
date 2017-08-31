L = list.files(pattern = "neuro.*[.]yml$")
copy_over = function(x) {
  outfile = sub("neuroconductor", "oslerinhealth", x)
  content = readLines(x)
  content = gsub("^(#.*)Neuroconductor(.*)",
                 "\\1OslerInHealth\\2",
                 content)
  content = gsub("PROJECT_NAME=(.*)",
                 "PROJECT_NAME=oslerinhealth",
                 content)
  writeLines(content, con = outfile)
  return(TRUE)
  # file.copy(x, xx, overwrite = TRUE)
}
sapply(L, copy_over)
