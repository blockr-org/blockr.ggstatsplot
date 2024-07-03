new_ggwithinstats_block <- function(...) {
  blockr::new_block(
    name = "ggwithinstats_block",
    expr = quote({
      ggstatsplot::ggwithinstats(
        data = data,
        x = .(x),
        y = .(y),
        type = .(type),
        pairwise.display = .(pairwise.display),
        p.adjust.method = .(p.adjust.method),
        effsize.type = .(effsize.type),
        bf.prior = .(bf.prior),
        bf.message = .(bf.message),
        results.subtitle = .(results.subtitle),
        k = .(k),
        conf.level = .(conf.level),
        nboot = .(nboot),
        tr = .(tr),
        centrality.plotting = .(centrality.plotting),
        centrality.type = .(centrality.type),
        centrality.path = .(centrality.path),
        point.path = .(point.path),
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
      pairwise.display = blockr::new_string_field("significant"),
      p.adjust.method = blockr::new_string_field("holm"),
      effsize.type = blockr::new_string_field("unbiased"),
      bf.prior = blockr::new_numeric_field(0.707, -1000, 1000),
      bf.message = blockr::new_switch_field(TRUE),
      results.subtitle = blockr::new_switch_field(TRUE),
      k = blockr::new_numeric_field(2, -1000, 1000),
      conf.level = blockr::new_numeric_field(0.95, -1000, 1000),
      nboot = blockr::new_numeric_field(100, -1000, 1000),
      tr = blockr::new_numeric_field(0.2, -1000, 1000),
      centrality.plotting = blockr::new_switch_field(TRUE),
      centrality.type = blockr::new_string_field(),
      centrality.path = blockr::new_switch_field(TRUE),
      point.path = blockr::new_switch_field(TRUE),
      package = blockr::new_string_field("RColorBrewer"),
      palette = blockr::new_string_field("Dark2")
    ),
    class = c("ggwithinstats_block", "plot_block")
  )
}
