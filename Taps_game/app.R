# added concent form

# the game so far 
# Not interactive


# get themes
# install.packages(shinythemes)

# libraries  ----
library(shinythemes)
library(ggplot2)  # For creating pretty plots
library(dplyr)  # For filtering and manipulating data
library(agridat)  # The package where the data comes from
library(shiny)



# server ----
# Define server logic
server <- function(input, output) {}


# ui section ----
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
                      
                      # concent form ----
                      
                      # DIVIDE THIS SECTION INTO PARAGRAPHS WITH P("")
                      
                      tabPanel(tags$b("Consent form"), h3("Read all the terms and conditions"),
                               p("Participant Information 
This page contains important information about the research. Please read it before agreeing to take part in the research and registering on the platform. "),



p("1. Background and aims of the project
In the Crops vs. Creatures project we aim to advance understanding of social and economic factors affecting the willingness of farmers to adopt sustainable crop protection. This game is a part of research on natural resource management being conducted by Luc Bussière, Malin Johansson and Celia Oni at the University of Gothenburg, in collaboration with a team of international scientists. The game will take approximately 20 minutes to play."),


p("2. Why have I been invited to take part?
You have been invited to take part in the games in light of your interest or experience in the resolution of conflicts between food production and healthy environments. 

p(3. Do I have to take part?
Participation is voluntary. If you do decide to take part, you can withdraw your participation at any time without needing to explain and without penalty.

If you withdraw at any point we will not collect any more data from you. However, any data collected up until the point that you withdraw will be kept and used in the data analysis.

You can also withdraw your data up to the point where the personal identifier information is deleted (1 year). Once the data is being analysed it may not be possible to remove data from the study because we will separate data from individual identifiers to ensure the privacy of participants. To withdraw your data email luc.bussiere@bioenv.gu.se 

4. What will happen if I take part?
After completing this registration form, you may participate in a one-person online game to be a part of the study. The game will take approximately 20 minutes. 

5.Are there any potential risks in taking part?
There are no foreseeable risks in taking part in the games.

6. Are there any benefits in taking part?
There will be no payment for taking part in this project. However, you will be contributing to research on one of the most difficult problems facing humanity, which concerns how to maximise food production and individual prosperity while conserving natural habitats.

7.Legal basis for processing personal data
We will not collect any private information. The data collected from the game and the registration form will be processed in accordance with the EU's General Data Protection Regulation (GDPR) and the Brazilian Lei Geral de Proteção de Dados (LGPD).  Under GDPR the legal basis for processing your personal data will be public interest/the official authority of the University of Gothenburg.

8.What happens to the data I provide?
The data are stored on the game server. Your data are collected and sent over encrypted connections and research data will be stored anonymously. We will use all reasonable endeavours to keep them confidential. Your personal information will be separated from your game data prior to analysis to ensure your privacy. These data will be stored in a password-protected file and may be used in academic publications. Your IP address will not be stored.
The data that we collect from you may be transferred to, and stored or processed at, a destination outside the European Economic Area (EEA). By submitting your personal data, you agree to this transfer, storing or processing. Detailed information about how your response data will be processed and stored can be found in our Data Privacy Notice.
Your identifier data will be kept for 1 year on a secure research data drive on the server of the game and then will be securely destroyed. The research data will be kept for 1 year on a secure research data drive on the server of the Crops vs Creatures game and then will be lodged in the University of Gothenburg servers for 10 years.

9.Will the research be published?
The research will be published in project reports and academic journals. You will not be identifiable in any report/publication.

10. Who is organising and funding the research?
The work is funded by the University of Gothenburg with assistance from the Swedish International Development Cooperation Agency, SIDA. 

11. Who has reviewed this research project?
The project has been reviewed and approved by The Swedish Ethical Review Authority (DATE XXX).

12. Your rights
You have the right to request to see a copy of the information we hold about you and to request corrections or deletions of the information that is no longer required. You have the right to withdraw from this project at any time without giving reasons and without consequences to you.  You also have the right to object to us processing relevant personal data; however, please note that once the data are being analysed and/or results published it may not be possible to remove your data from the study.

13. Who do I contact if I have concerns about this study or I wish to complain?
If you would like to discuss the research with someone please contact:

Luc Bussière, Senior lecturer at the University of Gothenburg
luc.bussiere@bioenv.gu.se 



14. Giving consent
You must register as a user in order to participate in the research. During the registration process, you will have the opportunity to give your consent and confirm that; you have read and understood the above information; that you are 18 years of age or older; and that you voluntarily agree to participate in our research.
The following info-text and consent form is embedded in the game and will be mandatory to assign before being able to continue with the game.
"),
                               
                               checkboxInput(inputId = "check box", 
                                             label = "Yes I agree to the terms and conditions", 
                                             value = 0),
                               actionButton(inputId = "action",
                                            label = "Go!",
                                            icon = icon("seedling"))),
                      
                      
                      # instructions ----
                      
                      tabPanel(tags$b("Instructions on how to play"), a(hfef="www.r-tutorials.com", "r-tutorials")),
                      
                      
                      
                      # the game ----
                      tabPanel(tags$b("The game itself"), tags$blockquote("Farm", cite = "Farm"),
                               actionButton("resetGame", "Reset game", class = "butt"),
                               actionButton("newGame", "New game"),
                               actionButton("showScores", "Scores"),
                               
                               
                      )
                      
                    ))))


# Run the application 
shinyApp(ui = ui, server = server)



