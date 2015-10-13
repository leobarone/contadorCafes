
shinyUI(fluidPage(
  titlePanel("Preto Café - Contador de Café"),
  sidebarLayout(
    sidebarPanel("Versão beta"),
    mainPanel(
      
      fluidRow(
        column(3,
               submitButton("Submit")),
        
        column(5, 
               textInput("nome", label = h3("Digite seu nome"), 
                         value = "Eva"))
      )
    )
  ),

fluidRow(
  column(3, 
         checkboxGroupInput("cafe", 
                            label = h3("Café"), 
                            choices = list("Expresso" = "Expresso", 
                                           "Expresso + Leite" = "Expresso + Leite",
                                           "Expresso 2x" = "Expresso 2x",
                                           "Café Coado" = "Café Coado",
                                           "Prensa Francesa" = "Prensa Francesa",
                                           "Aeropress" = "Aeropress",
                                           "Café gelado" = "Café gelado")
                            )),
  column(3, 
         checkboxGroupInput("comida", 
                            label = h3("Comida"), 
                            choices = list("Torta Salgada 1" = "Torta Salgada 1", 
                                           "Torta Salgada 2" = "Torta Salgada 2",
                                           "Bolo 1" = "Bolo 1",
                                           "Bolo 2" = "Bolo 2",
                                           "Salgado" = "Salgado",
                                           "Docinho" = "Docinho")
                            )),
  column(3,
         checkboxGroupInput("outros", 
                            label = h3("Outras Bebidas e Comidas"), 
                            choices = list("Suco de laranja" = "Suco de laranja",
                                           "Água com gás" = "Água com gás", 
                                           "Refrigerante" = "Refrigerante",
                                           "Chá" = "Chá")
                            )),
  column(3,
         tableOutput("tableOutput"))
  
)
))