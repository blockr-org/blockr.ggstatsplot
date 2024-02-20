new_theme_ggstatsplot_block <- function(data, ...){
  blockr::new_block(
    name = "theme_ggstatsplot_block",
    expr = quote({
      ggstatsplot::theme_ggstatsplot(
        
      )
    }),
    fields = list(
      
    ),
    class = c("theme_ggstatsplot_block", "plot_block")
  )
}

theme_ggstatsplot_block <- function(data, ...){
  blockr::initialize_block(new_theme_ggstatsplot_block(data, ...), data)
}
