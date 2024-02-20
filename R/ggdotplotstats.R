new_ggdotplotstats_block <- function(data, ...){
  blockr::new_block(
    name = "ggdotplotstats_block",
    expr = quote({
      ggstatsplot::ggdotplotstats(
        data = data,
        x = .(x),
        y = .(y),
        type = .(type),
        test.value = .(test.value),
        bf.prior = .(bf.prior),
        bf.message = .(bf.message),
        effsize.type = .(effsize.type),
        conf.level = .(conf.level),
        tr = .(tr),
        k = .(k),
        results.subtitle = .(results.subtitle),
        centrality.plotting = .(centrality.plotting),
        centrality.type = .(centrality.type)
      )
    }),
    fields = list(
      x = blockr::new_select_field(
    function(data){
      colnames(data)[1]
    },
    function(data){
      colnames(data)
    }
  ),
      y = blockr::new_select_field(
    function(data){
      colnames(data)[2]
    },
    function(data){
      colnames(data)
    }
  ),
      type = blockr::new_string_field("parametric"),
      test.value = blockr::new_numeric_field(0, -1000, 1000),
      bf.prior = blockr::new_numeric_field(0.707, -1000, 1000),
      bf.message = blockr::new_switch_field(TRUE),
      effsize.type = blockr::new_string_field("g"),
      conf.level = blockr::new_numeric_field(0.95, -1000, 1000),
      tr = blockr::new_numeric_field(0.2, -1000, 1000),
      k = blockr::new_numeric_field(2, -1000, 1000),
      results.subtitle = blockr::new_switch_field(TRUE),
      centrality.plotting = blockr::new_switch_field(TRUE),
      centrality.type = blockr::new_string_field()
    ),
    class = c("ggdotplotstats_block", "plot_block")
  )
}

ggdotplotstats_block <- function(data, ...){
  blockr::initialize_block(new_ggdotplotstats_block(data, ...), data)
}
