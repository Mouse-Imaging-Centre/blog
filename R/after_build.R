`%>%` <- purrr::`%>%`

xmls <- list.files(pattern = ".xml", recursive = TRUE)

purrr::walk(xmls, function(rss){
  readLines(rss) %>%
    gsub("/blog/blog", "/blog", .) %>%
    writeLines(rss)
})
