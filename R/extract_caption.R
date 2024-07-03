new_extract_caption_block <- function(...) {
  blockr::new_block(
    name = "extract_caption_block",
    expr = quote({
      ggstatsplot::extract_caption(
        p = .(p)
      )
    }),
    fields = list(
      p = blockr::new_string_field()
    ),
    class = c("extract_caption_block", "plot_block")
  )
}
