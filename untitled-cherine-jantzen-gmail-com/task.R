setwd('/app')

# retrieve input parameters

library(optparse)
library(jsonlite)


option_list = list(

make_option(c("--df"), action="store", default=NA, type="character", help="my description"), 
make_option(c("--id"), action="store", default=NA, type="character", help="my description"), 
make_option(c("--measurement"), action="store", default=NA, type="integer", help="my description")

)

# set input parameters accordingly
opt = parse_args(OptionParser(option_list=option_list))

df = fromJSON(opt$df)
id <- gsub('"', '', opt$id)
measurement = opt$measurement






mean(df$measurement)
min(df$measurement)
sd(df$measurement)



