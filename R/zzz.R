#' @import blockr
.onLoad <- function(libname, pkgname) {
  blockr::register_block(
    combine_plots_block,
    "combine_plots",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("combine_plots_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    extract_caption_block,
    "extract_caption",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("extract_caption_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    extract_stats_block,
    "extract_stats",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("extract_stats_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    extract_subtitle_block,
    "extract_subtitle",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("extract_subtitle_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    ggbarstats_block,
    "ggbarstats",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("ggbarstats_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    ggbetweenstats_block,
    "ggbetweenstats",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("ggbetweenstats_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    ggcoefstats_block,
    "ggcoefstats",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("ggcoefstats_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    ggcorrmat_block,
    "ggcorrmat",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("ggcorrmat_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    ggdotplotstats_block,
    "ggdotplotstats",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("ggdotplotstats_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    gghistostats_block,
    "gghistostats",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("gghistostats_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    ggpiestats_block,
    "ggpiestats",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("ggpiestats_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    ggscatterstats_block,
    "ggscatterstats",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("ggscatterstats_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    ggwithinstats_block,
    "ggwithinstats",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("ggwithinstats_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    grouped_ggbarstats_block,
    "grouped_ggbarstats",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("grouped_ggbarstats_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    grouped_ggbetweenstats_block,
    "grouped_ggbetweenstats",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("grouped_ggbetweenstats_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    grouped_ggcorrmat_block,
    "grouped_ggcorrmat",
    "Correlation matrix",
    input = "data.frame",
    output = "plot",
    classes = c("grouped_ggcorrmat_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    grouped_ggdotplotstats_block,
    "grouped_ggdotplotstats",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("grouped_ggdotplotstats_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    grouped_gghistostats_block,
    "grouped_gghistostats",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("grouped_gghistostats_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    grouped_ggpiestats_block,
    "grouped_ggpiestats",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("grouped_ggpiestats_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    grouped_ggscatterstats_block,
    "grouped_ggscatterstats",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("grouped_ggscatterstats_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    grouped_ggwithinstats_block,
    "grouped_ggwithinstats",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("grouped_ggwithinstats_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    pairwise_comparisons_block,
    "pairwise_comparisons",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("pairwise_comparisons_block", "plot_block"),
    package = pkgname
  )

  blockr::register_block(
    theme_ggstatsplot_block,
    "theme_ggstatsplot",
    "A block",
    input = "data.frame",
    output = "plot",
    classes = c("theme_ggstatsplot_block", "plot_block"),
    package = pkgname
  )
}
