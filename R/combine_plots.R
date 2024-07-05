new_combine_plots_block <- function(...) {
  blockr::new_block(
    name = "combine_plots_block",
    expr = quote({
      ggstatsplot::combine_plots(
        plotlist = .(plotlist),
        guides = .(guides)
      )
    }),
    fields = list(
      plotlist = blockr::new_string_field(),
      guides = blockr::new_string_field("collect")
    ),
    ...,
    class = c("combine_plots_block", "plot_block")
  )
}
