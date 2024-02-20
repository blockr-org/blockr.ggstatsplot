new_extract_subtitle_block <- function(data, ...){
  blockr::new_block(
    name = "extract_subtitle_block",
    expr = quote({
      ggstatsplot::extract_subtitle(
        p = .(p)
      )
    }),
    fields = list(
      p = blockr::new_string_field()
    ),
    class = c("extract_subtitle_block", "plot_block")
  )
}

extract_subtitle_block <- function(data, ...){
  blockr::initialize_block(new_extract_subtitle_block(data, ...), data)
}
