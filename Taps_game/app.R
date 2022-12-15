# not the whole code juste the interactive field with 5*5 and 4 options
# The field, reactive but just with text
# good to make it changing colour 

library(shiny)
library(shinythemes)
library(shinyjs)



ui <- fluidPage(theme = shinytheme("cosmo"),
                 
                
                #Create a box and change the background colour 
                 wellPanel(style = "background: green",
                           
                           
                           wellPanel(style = "background: orange",  
                                     h1("Game setup"),
                                     p("You are a farmer with 25 squares of land. You make your living by selling crops.

However, there is also a population of crop-raiding creatures who live on the land you farm. When creatures land on farmed squares, they eat crops and reduce your yield. How much damage they cause depends on the number of creatures in that square.

Each game lasts 8 rounds, which are equal to an agricultural year.

The government is concerned about pest resistance and have introduced a system of fines and/or subsidies to favour sustainability.

There will be a subsidy (eg. discount on tools/products for agriculture, selling crops as ecological) of Z for not using any pest control. However, there might be more damage to crops due to not killing off any pests.
There will be a subsidy of Z (eg. discount on biopesticides in the ecological store) for using the recommended biopest control (20% of the time this will be equally good as the best pest control but cannot be guaranteed). The most popular pest control methods contribute to the evolution of pesticide resistance because they are used by many farmers and leave no room for genetic variation. Using recommended biopesticides ensures that none is overused and you and your neighbours are contributing to more sustainable agriculture and are therefore compensated.")),
                           
                           

                #Create small boxes with 4 options of pest control            
                             flowLayout(selectInput(inputId = "Landscape", 
                            label = "Choose landscape management", 
                            choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
  ),
  
  flowLayout(selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
  ),
  
  flowLayout(selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
        
  ),
  
  flowLayout(selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             
  ),
  
  flowLayout(selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             selectInput(inputId = "Landscape", 
                         label = "Choose landscape management", 
                         choices = c("Recommended control", "Biocontrol", "Chemical control", "No control" )),
             

  
  mainPanel(
    textOutput("selected_var"),
  ),
  
 # actionButton("resetGame", "Reset game"),
  actionButton("nextStep", "Next step"),
  br(),
  actionButton("runGame", "GO!", icon = icon("gamepad")),
  disabled(actionButton("resetGame_setup", "Reset game"))

  
)))

server <- function(input, output, session) {
  
  output$selected_var <- renderText({ 
    paste("You have selected", input$Landscape)
  })
  
  

  
}

shinyApp(ui, server)