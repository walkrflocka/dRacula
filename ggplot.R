# Dracula theme for Shiny!

# Palette
dracula <- c('background' = '#282a36',
             'currentLine' = '#44475a',
             'selection' = '#44475a',
             'foreground' = '#f8f8f2',
             'comment' = '#6272a4',
             'cyan' = '#8be9fd',
             'green' = '#50fa7b',
             'orange' = '#ffb86c',
             'pink' = '#ff79c6',
             'purple' = '#bd93f9',
             'red' = '#ff5555',
             'yellow' = '#f1fa8c')

# GGplot theme built off theme_bw()
theme_dracula <- function() {
  theme_bw() %+replace%
    theme(
      axis.text  = element_text(color = dracula['foreground']),
      axis.title = element_text(face = "bold", color = dracula['purple']),

      legend.background = element_rect(fill  = "transparent", color = NA),
      legend.key        = element_rect(fill  = "transparent", color = NA),
      legend.text       = element_text(color = dracula['foreground']),
      legend.title      = element_text(face  = "bold", color = dracula['purple']),

      panel.background  = element_rect(fill = dracula['background']),
      panel.grid        = element_line(color = dracula['currentLine']),

      plot.background = element_rect(fill = dracula['background'], color = dracula['currentLine']),

      title = element_text(face = "bold", color = dracula['foreground'])
    )
}