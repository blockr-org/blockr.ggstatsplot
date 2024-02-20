new_extract_caption_block <- function(data, ...){
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

extract_caption_block <- function(data, ...){
  blockr::initialize_block(new_extract_caption_block(data, ...), data)
}
