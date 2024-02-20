new_grouped_ggdotplotstats_block <- function(data, ...){
  blockr::new_block(
    name = "grouped_ggdotplotstats_block",
    expr = quote({
      ggstatsplot::grouped_ggdotplotstats(
        data = data,
        grouping.var = .(grouping.var)
      )
    }),
    fields = list(
      grouping.var = blockr::new_string_field()
    ),
    class = c("grouped_ggdotplotstats_block", "plot_block")
  )
}

grouped_ggdotplotstats_block <- function(data, ...){
  blockr::initialize_block(new_grouped_ggdotplotstats_block(data, ...), data)
}
