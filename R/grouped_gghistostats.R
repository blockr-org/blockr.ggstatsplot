new_grouped_gghistostats_block <- function(...) {
  blockr::new_block(
    name = "grouped_gghistostats_block",
    expr = quote({
      ggstatsplot::grouped_gghistostats(
        data = data,
        x = .(x),
        grouping.var = .(grouping.var)
      )
    }),
    fields = list(
      x = blockr::new_select_field(
        function(data) {
          colnames(data)[1]
        },
        function(data) {
          colnames(data)
        }
      ),
      grouping.var = blockr::new_string_field()
    ),
    ...,
    class = c("grouped_gghistostats_block", "plot_block")
  )
}
