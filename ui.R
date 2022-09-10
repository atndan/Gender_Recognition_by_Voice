# Including the required R packages.
packages <- c('shiny', 'shinyjs')
if (length(setdiff(packages, rownames(installed.packages()))) > 0) {
 install.packages(setdiff(packages, rownames(installed.packages())))
}

library(shiny)
library(shinyjs)

shinyUI(fluidPage(
  conditionalPanel(condition='!output.json',
                   tags$head(tags$script(src = "script.js"),
                   			 tags$script(src = "google-analytics.js"),
                         tags$style(HTML("a { font-weight: bold; } .shiny-output-error-validation { color: red; } .shiny-progress .progress { background-color: #AED6F1 ; } .fa-info { margin: 0 0 0 10px; cursor: pointer; font-size: 15px; color: #808080; } .fa-headphones { margin: 0 5px 0 2px; } .average-pitch { font-size: 18px; } .detail-summary { font-size: 16px; } .detail-summary .detail-header { font-size: 18px; margin: 0 0 10px 0; } .detail-summary span { font-weight: bold; } #summary1 { margin-top: 10px; } #summary2 { margin-bottom: 80px; } .female { color: #ff00ff; } .male { color: #0066ff; } .error { color: #ff0000; } .btn-primary.buy { margin: 0 0 10px 10px; border-radius: 4px; padding: 8px 12px 8px 12px; border: 0; -webkit-transition: all .25s ease-in-out; } .btn-primary.buy:hover { background-color: #e0e0e0; color: #333; } .intro-text { font-weight: bolder; font-size: 16px; color: deeppink; } .intro-text.register { color: #00aa00; } #lstLicense { margin-top: 3px; } #register-div { border: 1px solid #c0c0c0; padding: 10px 15px 10px 15px; max-width: 422px; background-color: aliceblue; } .fa-info-circle { cursor: pointer; -webkit-transition: all .1s ease-in-out; } .fa-info-circle:hover { color: #333; }"))
                   ),
                   titlePanel('Voice Gender Recoginition'),
   mainPanel(width = '100%',
   useShinyjs(),


   h4(id='main', 'Upload a wav/mp3 file of your voice or enter a url from ', a(href='http://vocaroo.com', target='_blank', 'vocaroo.com'), ' to detect its gender.'),
   div(style='margin: 20px 0 0 0;'),

   inputPanel(
     div(id='uploadDiv', class='', style='height: 120px; border-right: 1px solid #ccc;',
         fileInput('file1', 'Upload wav or mp3 File', accept = c('audio/wav', 'audio/mp3'), width = '100%')
     ),
     div(id='urlDiv', class='',
         strong('Vocaroo Url:'),
         textInput('url', NULL, width = '100%'),
         actionButton('btnUrl', 'Load Url', class='btn-primary', icon=icon('cloud'))
     ),
     div('Please be patient after uploading or clicking submit.')
   ),

   div(style='margin: 20px 0 0 0;'),
   div(id='result', style='font-size: 22px;', htmlOutput('content')),
   div(style='margin: 20px 0 0 0;'),

   conditionalPanel(condition='output.content != null && output.content.indexOf("Please enter") == -1',
     tabsetPanel(id='graphs',
       tabPanel('Details', div(tableOutput('summary1'), tableOutput('summary2'))),
       tabPanel('Frequency Graph', plotOutput("graph1", width=1000, height=500)),
       tabPanel('Spectrogram', plotOutput("graph2", width=1000, height=500))
     ),
    
  ))
))
