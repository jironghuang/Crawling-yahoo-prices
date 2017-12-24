if( .Platform$OS.type == "windows" ){
  wd = file.path("C:", "Users", "Huang Jirong", "Google Drive", "Shiny","yahoo prices", fsep = .Platform$file.sep)
}else{
  wd = "/mnt/c/Users/Huang Jirong/Google Drive/Shiny/yahoo prices"
}


setwd(wd)

source("yahoo_crawl.R")
source("R_excel_update.R")
# source("shinyapp.R")