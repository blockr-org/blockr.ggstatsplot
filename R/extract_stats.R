new_extract_stats_block <- function(...) {
  blockr::new_block(
    name = "extract_stats_block",
    expr = quote({
      ggstatsplot::extract_stats(
        p = .(p)
      )
    }),
    fields = list(
      p = blockr::new_string_field()
    ),
    ...,
    class = c("extract_stats_block", "plot_block")
  )
}
