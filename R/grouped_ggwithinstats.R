new_grouped_ggwithinstats_block <- function(...) {
  blockr::new_block(
    name = "grouped_ggwithinstats_block",
    expr = quote({
      ggstatsplot::grouped_ggwithinstats(
        data = data,
        grouping.var = .(grouping.var)
      )
    }),
    fields = list(
      grouping.var = blockr::new_string_field()
    ),
    ...,
    class = c("grouped_ggwithinstats_block", "plot_block")
  )
}
