setwd('/app')

# retrieve input parameters

library(optparse)
library(jsonlite)


option_list = list(

make_option(c("--id"), action="store", default=NA, type="character", help="my description")

)

# set input parameters accordingly
opt = parse_args(OptionParser(option_list=option_list))

id <- gsub('"', '', opt$id)






df <- data.frame(Obeserver = c("A", "A", "B", "C"), measurement = c(12, 45, 87, 3))



# capturing outputs
file <- file(paste0('/tmp/df_', id, '.json'))
writeLines(toJSON(df, auto_unbox=TRUE), file)
close(file)
