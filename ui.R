library(shiny)

shinyUI( pageWithSidebar(
  # Application title
  headerPanel("Guess The Number!"),
  
  sidebarPanel(
    #numericInput('guess', 'Number', 1, min = 1, max = 100, step = 1),
    #submitButton('Submit')
    textInput('guess', 'Number', value = ""),
    h5('Please press \'Go!\' only on your first attempt'),
    actionButton("goButton", "Go!")
  ), 
  mainPanel(
    h2('Guess an integer between 1 and 100'),
    h5('The objective of this game is to guess an integer between
       1 and 100 (inclusive) and try to match it with the computer\'s
       selection'),
    h3('Results of guess'),
    h4('You entered'),
    verbatimTextOutput("inputValue"),
    h4('Which is...'),
    verbatimTextOutput("outputValue"),
    h5('Please note that the application will continue running even
       after you have guessed the number correctly.'),
    h5('Thank you ')
    )
    )
)