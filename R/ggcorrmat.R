new_ggcorrmat_block <- function(data, ...){
  blockr::new_block(
    name = "ggcorrmat_block",
    expr = quote({
      ggstatsplot::ggcorrmat(
        data = data,
        matrix.type = .(matrix.type),
        type = .(type),
        tr = .(tr),
        partial = .(partial),
        k = .(k),
        sig.level = .(sig.level),
        conf.level = .(conf.level),
        bf.prior = .(bf.prior),
        p.adjust.method = .(p.adjust.method),
        pch = .(pch),
        package = .(package),
        palette = .(palette)
      )
    }),
    fields = list(
      matrix.type = blockr::new_string_field("upper"),
      type = blockr::new_string_field("parametric"),
      tr = blockr::new_numeric_field(0.2, -1000, 1000),
      partial = blockr::new_switch_field(FALSE),
      k = blockr::new_numeric_field(2, -1000, 1000),
      sig.level = blockr::new_numeric_field(0.05, -1000, 1000),
      conf.level = blockr::new_numeric_field(0.95, -1000, 1000),
      bf.prior = blockr::new_numeric_field(0.707, -1000, 1000),
      p.adjust.method = blockr::new_string_field("holm"),
      pch = blockr::new_string_field("cross"),
      package = blockr::new_string_field("RColorBrewer"),
      palette = blockr::new_string_field("Dark2")
    ),
    class = c("ggcorrmat_block", "plot_block")
  )
}

ggcorrmat_block <- function(data, ...){
  blockr::initialize_block(new_ggcorrmat_block(data, ...), data)
}
