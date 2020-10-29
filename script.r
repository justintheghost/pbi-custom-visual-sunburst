source('./r_files/flatten_HTML.r')

############### Library Declarations ###############
libraryRequireInstall("plotly")
####################################################

################### Actual code ####################

## Helper Functions

## Declare variables from user input 

# Required Inputs
child <- Child[,1]
parent <- Parent[,1]
label <- Label[,1]
values <- Values[,1]

# Can use objects from capabilities.json with syntax of <object>_<property>
if(exists("sunburst_maxDepth")){
  maxDepth = sunburst_maxDepth
} else {
  maxDepth = -1
}

if(exists("sunburst_colorValue1")){
  color1 = sunburst_colorValue1
} else {
  color1 = '#FD817E'
}

if(exists("sunburst_colorValue2")){
  color2 = sunburst_colorValue2
} else {
  color2 = '#FAEFC1'
}

if(exists("sunburst_colorValue3")){
  color3 = sunburst_colorValue3
} else {
  color3 = '#4CB437'
}

# Tooltip
#tooltip_1 <- Tooltip[,1]
#tooltip_2 <- Tooltip[,2]
#tooltip_1_colname <- colnames(Tooltip)[1]
#tooltip_2_colname <- colnames(Tooltip)[2]

colors <- ifelse(values == 1, color1,
    ifelse(values == 2,color2,
      ifelse(values == 3,color3, '#AFB6B6')
    )
  )

# Build sunburst visual
sunburstDiagram <- plot_ly() %>%
  add_trace(
    type = 'sunburst'
    , name = 'test'
    , ids = child
    , labels = label
    , parents = parent
    , marker = list(
      colors = colors
    )
    , hovertext = paste("Score:", values)
    , maxdepth = maxDepth
    #domain = list(column = 0)
    , showlegend = TRUE)

####################################################

############# Create and save widget ###############
internalSaveWidget(sunburstDiagram, 'out.html');
####################################################
