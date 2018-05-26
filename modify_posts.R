#modify posts

for (f in dir("content/post",full.names = TRUE)) {
    blogdown:::modify_yaml(f, slug = function(old, yaml) {
        # YYYY-mm-dd-name.md -> name
        gsub('^\\d{4}-\\d{2}-\\d{2}-|[.](md|markdown)', '', f)
    }, categories = function(old, yaml) {
        # remove the Uncategorized category
        setdiff(old, 'Uncategorized')
    }, .keep_fields = c(
        'title', 'author', 'date', 'categories', 'tags', 'slug'
    ), .keep_empty = FALSE)
}

modify_image_links <- function(file){
    readr::read_lines(file) %>% 
        stringr::str_replace_all("\\{\\{.*github.url.*\\}\\}/images/","/img/") %>% 
        readr::write_lines(path = file)
}

purrr::walk(dir("content/post",full.names = TRUE),modify_image_links)

dir("content/post",full.names = TRUE)[19]

extract_packages_used <- function(file){
    readr::read_lines(file) %>% 
        stringr::str_extract("library\\(.*\\)") %>% 
        stringr::str_replace_all("(library\\()(.*)(\\))", "\\2") %>% 
        na.exclude() %>% 
        as.character() %>% 
        stringr::str_replace_all("\"", "")
}

# extract_packages_used2 <- function(file){
#     readr::read_lines(file) %>% 
#         stringr::str_extract_all("\w::\w") %>% 
#         stringr::str_replace_all("(library\\()(.*)(\\))", "\\2") %>% 
#         na.exclude() %>% 
#         as.character() %>% 
#         stringr::str_replace_all("\"", "")
# }

stringr::str_extract_all("this is purrr::walk", "[A-z]{2,}::[A-z]{1,}")

#purrr::map(dir("content/post",full.names = TRUE),extract_packages_used)
