library(rdrop2)
library(plyr)
library(dplyr)

shinyServer(
  function(input, output) {
    
  output$tableOutput <- renderTable({ 
    dados <- drop_read_csv("dados.txt", sep = ";")
    contador <- dados$Id[nrow(dados)] + 1
    dados <- rbind(dados, data.frame("Id" = contador,
                                     "Nome" = input$nome,
                                     "Data" = as.character(Sys.time()),
                                     "Produto" = c(input$cafe, 
                                                   input$comida, 
                                                   input$outros), stringsAsFactors = F)
    ) 
    write.table(dados,"data/dados.txt", sep =  ";", row.names = F, quote = T)
    drop_upload("data/dados.txt")
    
    dados[dados$Id == contador | dados$Id == (contador - 1),]
    })
}
)

