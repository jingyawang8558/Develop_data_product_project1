shinyUI(pageWithSidebar(
  #Application title
  headerPanel("Calculate your BMI"),
  
  sidebarPanel(
    numericInput(inputId="height",label="Your Height (m)",1.7,min=1.20,max=2.20,step=0.05),
    numericInput(inputId="weight",label="Your weight (kg)",60,min=40,max=100,step=5),
    submitButton("Submit")
    ),
  mainPanel(
    h3("How to use the app"),
    h4("This app provides you a simple way to calculate your BMI. In the window on the left, just enter your height (in meter) and your weight (in kg), and click submit, your BMI will show up in the third box below"),
    h3("Result of Calculation"),
    h4("You entered height as"),
    verbatimTextOutput("inputValue_height"),
    h4("You entered weight as"),
    verbatimTextOutput("inputValue_weight"),
    h4("Your BMI is"),
    verbatimTextOutput("BMI")
    )
  )
)

