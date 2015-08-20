BMI<-function(height=1.5,weight=60) weight/(height*height)

shinyServer(
  function(input,output){
    output$inputValue_height<-renderPrint({input$height})
    output$inputValue_weight<-renderPrint({input$weight})
    output$BMI<-renderPrint({BMI(input$height,input$weight)})
  }
  )