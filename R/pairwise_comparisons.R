new_pairwise_comparisons_block <- function(data, ...){
  blockr::new_block(
    name = "pairwise_comparisons_block",
    expr = quote({
      ggstatsplot::pairwise_comparisons(
        data = data,
        x = .(x),
        y = .(y),
        type = .(type),
        paired = .(paired),
        var.equal = .(var.equal),
        tr = .(tr),
        bf.prior = .(bf.prior),
        p.adjust.method = .(p.adjust.method),
        k = .(k)
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
      paired = blockr::new_switch_field(FALSE),
      var.equal = blockr::new_switch_field(FALSE),
      tr = blockr::new_numeric_field(0.2, -1000, 1000),
      bf.prior = blockr::new_numeric_field(0.707, -1000, 1000),
      p.adjust.method = blockr::new_string_field("holm"),
      k = blockr::new_numeric_field(2, -1000, 1000)
    ),
    class = c("pairwise_comparisons_block", "plot_block")
  )
}

pairwise_comparisons_block <- function(data, ...){
  blockr::initialize_block(new_pairwise_comparisons_block(data, ...), data)
}
