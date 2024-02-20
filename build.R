blockr.generate::generate_blocks(
  "ggstatsplot",
  default_type = "plot",
  default_output = "plot",
  x = "blockr::new_select_field(
    function(data){
      colnames(data)[1]
    },
    function(data){
      colnames(data)
    }
  )",
  y = "blockr::new_select_field(
    function(data){
      colnames(data)[2]
    },
    function(data){
      colnames(data)
    }
  )",
)
