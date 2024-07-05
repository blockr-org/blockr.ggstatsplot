new_ggscatterstats_block <- function(...) {
  blockr::new_block(
    name = "ggscatterstats_block",
    expr = quote({
      ggstatsplot::ggscatterstats(
        data = data,
        x = .(x),
        y = .(y),
        type = .(type),
        conf.level = .(conf.level),
        bf.prior = .(bf.prior),
        bf.message = .(bf.message),
        tr = .(tr),
        k = .(k),
        results.subtitle = .(results.subtitle),
        marginal = .(marginal),
        point.width.jitter = .(point.width.jitter),
        point.height.jitter = .(point.height.jitter)
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
      conf.level = blockr::new_numeric_field(0.95, -1000, 1000),
      bf.prior = blockr::new_numeric_field(0.707, -1000, 1000),
      bf.message = blockr::new_switch_field(TRUE),
      tr = blockr::new_numeric_field(0.2, -1000, 1000),
      k = blockr::new_numeric_field(2, -1000, 1000),
      results.subtitle = blockr::new_switch_field(TRUE),
      marginal = blockr::new_switch_field(TRUE),
      point.width.jitter = blockr::new_numeric_field(0, -1000, 1000),
      point.height.jitter = blockr::new_numeric_field(0, -1000, 1000)
    ),
    ...,
    class = c("ggscatterstats_block", "plot_block")
  )
}
