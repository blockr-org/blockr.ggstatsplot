new_grouped_ggcorrmat_block <- function(data, ...){
  blockr::new_block(
    name = "grouped_ggcorrmat_block",
    expr = quote({
      ggstatsplot::grouped_ggcorrmat(
        data = data,
        grouping.var = .(grouping.var)
      )
    }),
    fields = list(
      grouping.var = blockr::new_string_field()
    ),
    class = c("grouped_ggcorrmat_block", "plot_block")
  )
}

grouped_ggcorrmat_block <- function(data, ...){
  blockr::initialize_block(new_grouped_ggcorrmat_block(data, ...), data)
}
