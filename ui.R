library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Shiny App Project - Body Mass Index (BMI) Calculator"),
    
    sidebarPanel(
      numericInput('weight', 'Your weight in kilograms', 100) ,
      numericInput('height', 'Your height in centimeters', 160, min = 50, max = 220),
      submitButton('Calculate BMI')
    ), 
    
    # Body Mass Index is a simple calculation using a person's height and weight. 
    # The formula is BMI = kg/m2 where kg is a person's weight in kilograms and m2 
    # is their height in metres squared.
    # A BMI of 25.0 or more is overweight, while the healthy range is 18.5 to 24.9. 
    # BMI applies to most adults 18-65 years.
    
    mainPanel(
      p('The Body mass index (BMI) is a measure of body fat based on height and weight that applies to both men and women between the ages of 18 and 65 years.'),
      p('BMI can be used to indicate if you are overweight, obese, underweight or normal. A healthy BMI score is between 20 and 25.'),
      p('The World Health Organization (WHO) proposes the following classification for BMI Measure:'),
      tags$div(
        tags$ul(
          tags$li('BMI <18.5       : Underweight'),
          tags$li('BMI [18.5-24.9] : Normal weight'),
          tags$li('BMI [25-29.9]   : Overweight'),
          tags$li('BMI >=30        : Obesity')
        )
      ),
      
      h4('Calculating BMI based on values entered by you:'), 
      p('weight in kilograms:'), verbatimTextOutput("inputweightvalue"),
      p('height in centimeters:'), verbatimTextOutput("inputheightvalue"),
      h4('Your BMI is:'),
      verbatimTextOutput("estimation"),
      p('It means that you are:'),strong(verbatimTextOutput("diagnostic"))
      
      
    )
    
  )   
)