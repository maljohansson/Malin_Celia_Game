# the game so far 


# get themes
# install.packages(shinythemes)
library(shinythemes)
library(ggplot2)  # For creating pretty plots
library(dplyr)  # For filtering and manipulating data
library(agridat)  # The package where the data comes from


# check what tags you can use
#names(tags)



library(shiny)

# Define server logic
server <- function(input, output) {}

# run this after fluidpage to choose theme
# themeSelector(),   #pick one and then change to theme = shinytheme("darkly"),

ui <- fluidPage(theme = shinytheme("sandstone"),
                titlePanel("Malins app"),
                
                sidebarLayout(
                  position = "right",
                  sidebarPanel(
                    wellPanel(style = "background: lightgreen",   # Makes a new green bar
                              textInput(inputId = "text", 
                                        label = "Name", "Enter a username"),
                              passwordInput(inputId = "password", 
                                            label = "Password"),
                              
                              
                    ),
                    
                    
                    
                    selectInput(inputId = "state", 
                                label = "State where you currently live",  # Give the input a label to be displayed in the app
                                choices = c("Panará" = "a","São Paulo" = "b","Minhas Reais" = "c","Bahia" = "d"), selected = "a"),  # Create the choices that can be selected. e.g. Display "A" and link to value "a"
                    
                    
                    radioButtons(inputId = "radio", 
                                 label = "Main Profession", 
                                 choices = c("Farmer", "Producer", "Conservation", "Student")),
                    selectInput(inputId = "select gender", 
                                label = "Gender", 
                                choices = c("Woman", "Man", "Transgender", "Other", "Prefere not to tell" )),
                    
                    
                    numericInput(inputId = "age", 
                                 label = "Age", 
                                 value = 40, min = 18, max = 100),
                    actionButton(inputId = "action",
                                 label = "Go!",
                                 icon = icon("wheat-awn")),
            
               
                    
                    actionLink(inputId = "Hello",
                               label = "https://github.com/maljohansson",
                               icon = icon("star"))
                    
                  ),
                  
                  mainPanel(
                    tabsetPanel(
                      tabPanel(tags$b("Consent form"), tags$b("Read all the terms and conditions"),
                               "Input all the text about the concent form here",
                      
                      checkboxInput(inputId = "check box", 
                                    label = "Yes I agree to the terms and conditions", 
                                    value = 0),
                      actionButton(inputId = "action",
                                   label = "Go!",
                                   icon = icon("seedling"))),
                    
                      
                      tabPanel(tags$b("Instructions on how to play"), a(hfef="www.r-tutorials.com", "r-tutorials")),
                      
                      tabPanel(tags$b("The game itself"), tags$blockquote("Farm", cite = "Farm"),
                               actionButton("resetGame", "Reset game", class = "butt"),
                               actionButton("newGame", "New game"),
                               actionButton("showScores", "Scores"),
                               
                               
                      )
                   
                ))))


# Run the application 
shinyApp(ui = ui, server = server)

#?icon
