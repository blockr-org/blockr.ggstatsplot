new_ggbarstats_block <- function(...) {
  blockr::new_block(
    name = "ggbarstats_block",
    expr = quote({
      ggstatsplot::ggbarstats(
        data = data,
        x = .(x),
        y = .(y),
        type = .(type),
        paired = .(paired),
        results.subtitle = .(results.subtitle),
        label = .(label),
        k = .(k),
        proportion.test = .(proportion.test),
        perc.k = .(perc.k),
        bf.message = .(bf.message),
        conf.level = .(conf.level),
        sampling.plan = .(sampling.plan),
        fixed.margin = .(fixed.margin),
        prior.concentration = .(prior.concentration),
        package = .(package),
        palette = .(palette)
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
      y = blockr::new_select_field(
        function(data) {
          colnames(data)[2]
        },
        function(data) {
          colnames(data)
        }
      ),
      type = blockr::new_string_field("parametric"),
      paired = blockr::new_switch_field(FALSE),
      results.subtitle = blockr::new_switch_field(TRUE),
      label = blockr::new_string_field("percentage"),
      k = blockr::new_numeric_field(2, -1000, 1000),
      proportion.test = blockr::new_string_field(),
      perc.k = blockr::new_numeric_field(0, -1000, 1000),
      bf.message = blockr::new_switch_field(TRUE),
      conf.level = blockr::new_numeric_field(0.95, -1000, 1000),
      sampling.plan = blockr::new_string_field("indepMulti"),
      fixed.margin = blockr::new_string_field("rows"),
      prior.concentration = blockr::new_numeric_field(1, -1000, 1000),
      package = blockr::new_string_field("RColorBrewer"),
      palette = blockr::new_string_field("Dark2")
    ),
    class = c("ggbarstats_block", "plot_block")
  )
}
