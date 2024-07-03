new_theme_ggstatsplot_block <- function(...) {
  blockr::new_block(
    name = "theme_ggstatsplot_block",
    expr = quote({
      ggstatsplot::theme_ggstatsplot()
    }),
    fields = list(),
    class = c("theme_ggstatsplot_block", "plot_block")
  )
}
