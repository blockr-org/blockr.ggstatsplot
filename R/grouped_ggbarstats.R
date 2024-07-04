new_grouped_ggbarstats_block <- function(...) {
  blockr::new_block(
    name = "grouped_ggbarstats_block",
    expr = quote({
      ggstatsplot::grouped_ggbarstats(
        data = data,
        grouping.var = .(grouping.var)
      )
    }),
    fields = list(
      grouping.var = blockr::new_string_field()
    ),
    ...,
    class = c("grouped_ggbarstats_block", "plot_block")
  )
}
