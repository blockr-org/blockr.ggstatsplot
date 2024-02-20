library(shiny)
library(blockr)
devtools::load_all()

print("building stack")
stack <- new_stack(
  data_block,
  ggscatterstats_block
)

print("serving stack")
serve_stack(stack)
