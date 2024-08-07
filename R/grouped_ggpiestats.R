new_grouped_ggpiestats_block <- function(...) {
  blockr::new_block(
    name = "grouped_ggpiestats_block",
    expr = quote({
      ggstatsplot::grouped_ggpiestats(
        data = data,
        grouping.var = .(grouping.var)
      )
    }),
    fields = list(
      grouping.var = blockr::new_string_field()
    ),
    ...,
    class = c("grouped_ggpiestats_block", "plot_block")
  )
}
