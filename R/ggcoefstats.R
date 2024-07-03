new_ggcoefstats_block <- function(...) {
  blockr::new_block(
    name = "ggcoefstats_block",
    expr = quote({
      ggstatsplot::ggcoefstats(
        x = .(x),
        conf.int = .(conf.int),
        conf.level = .(conf.level),
        k = .(k),
        exclude.intercept = .(exclude.intercept),
        effectsize.type = .(effectsize.type),
        meta.analytic.effect = .(meta.analytic.effect),
        meta.type = .(meta.type),
        bf.message = .(bf.message),
        sort = .(sort),
        only.significant = .(only.significant),
        vline = .(vline),
        stats.labels = .(stats.labels),
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
      conf.int = blockr::new_switch_field(TRUE),
      conf.level = blockr::new_numeric_field(0.95, -1000, 1000),
      k = blockr::new_numeric_field(2, -1000, 1000),
      exclude.intercept = blockr::new_switch_field(FALSE),
      effectsize.type = blockr::new_string_field("eta"),
      meta.analytic.effect = blockr::new_switch_field(FALSE),
      meta.type = blockr::new_string_field("parametric"),
      bf.message = blockr::new_switch_field(TRUE),
      sort = blockr::new_string_field("none"),
      only.significant = blockr::new_switch_field(FALSE),
      vline = blockr::new_switch_field(TRUE),
      stats.labels = blockr::new_switch_field(TRUE),
      package = blockr::new_string_field("RColorBrewer"),
      palette = blockr::new_string_field("Dark2")
    ),
    class = c("ggcoefstats_block", "plot_block")
  )
}
