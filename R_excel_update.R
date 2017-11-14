#Update the net worth shiny app
library(RDCOMClient)

# Open a specific workbook in Excel:
xlApp <- COMCreate("Excel.Application")
xlWbk <- xlApp$Workbooks()$Open("C:/Users/Huang Jirong/Desktop/Jirong's 5YP-ASUS.xlsm")

# this line of code might be necessary if you want to see your spreadsheet:
xlApp[['Visible']] <- TRUE

# Run the macro called "MyMacro":
xlApp$Run("update_yahoo")
xlApp$Run("Update_shiny")


# Close the workbook and quit the app:
# xlWbk$Close(FALSE)
# xlApp$Quit()

# Release resources:
rm(xlWbk, xlApp)
gc()


