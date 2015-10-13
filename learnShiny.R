install.packages("shiny")
dir.create("Preto_Cafe_App")
dados <- data.frame("Id" = 0,
                    "Nome" = "Eva",
                    "Data" = "2015-07-27 23:59:59 BRT",
                    "Produto" = "Gato escaldado")
write.table(dados,"data/dados.txt", sep =  ";", row.names = F, quote = T)
library(shiny)
