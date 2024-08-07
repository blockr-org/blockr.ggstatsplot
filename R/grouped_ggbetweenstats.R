new_grouped_ggbetweenstats_block <- function(...) {
  blockr::new_block(
    name = "grouped_ggbetweenstats_block",
    expr = quote({
      ggstatsplot::grouped_ggbetweenstats(
        data = data,
        grouping.var = .(grouping.var)
      )
    }),
    fields = list(
      grouping.var = blockr::new_string_field()
    ),
    ...,
    class = c("grouped_ggbetweenstats_block", "plot_block")
  )
}
