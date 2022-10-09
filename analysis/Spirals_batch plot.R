# Make spirals from all files in folder

sapply(mynames,function(nameoffile){nrow(get(nameoffile))})
files <- list.files(path="path/to/dir", pattern="*.txt", full.names=TRUE, recursive=FALSE)
lapply(files, function(spiral) {
  t <- read.table(x, header=TRUE) # load file
  # apply function
  out <- function(t)
    # write to file
    write.table(out, "path/to/output", sep="\t", quote=FALSE, row.names=FALSE, col.names=TRUE)
})


