new_grouped_ggscatterstats_block <- function(data, ...){
  blockr::new_block(
    name = "grouped_ggscatterstats_block",
    expr = quote({
      ggstatsplot::grouped_ggscatterstats(
        data = data,
        grouping.var = .(grouping.var)
      )
    }),
    fields = list(
      grouping.var = blockr::new_string_field()
    ),
    class = c("grouped_ggscatterstats_block", "plot_block")
  )
}

grouped_ggscatterstats_block <- function(data, ...){
  blockr::initialize_block(new_grouped_ggscatterstats_block(data, ...), data)
}
