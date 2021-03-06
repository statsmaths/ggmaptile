% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stat.R
\docType{data}
\name{stat_maptiles}
\alias{stat_maptiles}
\alias{StatMapTiles}
\title{Compute Map Tiles for the Plot Region}
\format{
An object of class \code{StatMapTiles} (inherits from \code{Stat}, \code{ggproto}, \code{gg}) of length 3.
}
\usage{
stat_maptiles(
  mapping = NULL,
  data = NULL,
  geom = ggimg::GeomRectImage,
  position = "identity",
  show.legend = NA,
  inherit.aes = TRUE,
  zoom = NULL,
  zoom_adj = 0,
  aspect_ratio = NULL,
  cache_dir = NULL,
  alpha = 1,
  url = NULL,
  force = FALSE,
  quiet = FALSE
)

StatMapTiles
}
\arguments{
\item{mapping}{Set of aesthetic mappings created by [aes()] or
[aes_()]. If specified and `inherit.aes = TRUE` (the
default), it is combined with the default mapping at the
top level of the plot. You must supply `mapping` if there
is no plot mapping.}

\item{data}{The data to be displayed in this layer. There are three
                    options:

                    If `NULL`, the default, the data is inherited from the
                    plot data as specified in the call to [ggplot()].

                    A `data.frame`, or other object, will override the plot
                    data. All objects will be fortified to produce a data
                    frame.

                    A `function` will be called with a single argument,
                    the plot data. The return value must be a `data.frame`,
                    and will be used as the layer data. A `function` can be
                    created from a `formula` (e.g. `~ head(.x, 10)`).}

\item{geom}{The geometric object to use display the data}

\item{position}{Position adjustment, either as a string, or the result of
a call to a position adjustment function.}

\item{show.legend}{logical. Should this layer be included in the legends?
`NA`, the default, includes if any aesthetics are mapped.
`FALSE` never includes, and `TRUE` always includes.
It can also be a named logical vector to finely select
the aesthetics to display.}

\item{inherit.aes}{If `FALSE`, overrides the default aesthetics,
rather than combining with them. This is most useful for
helper functions that define both data and aesthetics
and shouldn't inherit behaviour from the default plot
specification, e.g. [borders()].}

\item{zoom}{integer giving the zoom value, from 0 (entire world) to
19; set to NULL to auto-compute an appropriate zoom level}

\item{zoom_adj}{integer giving an adjustment to the default zoom level;
negative values zoom out from the default and positive
values zoom into the default. Useful to avoid
accidentally downloading a large number of tiles (by
setting a very large zoom value for a region) and for
adjusting facetted plots. Ignored when an explicit zoom
is supplied.}

\item{aspect_ratio}{positive numeric value giving the desired aspect ratio of
the tiles. When set to NULL, the default, tiles are
choosen to cover the data points without regard to the
aspect ratio.}

\item{cache_dir}{string giving the location of a local path in which to
download the tile files; if set to NULL, will first check
for the option "mt_cache_dir"; if also missing,
will determine a suitable temporary location that
persistsduring the R session}

\item{alpha}{optacity of the tiles; default is 1 (solid).}

\item{url}{url of the tile server, given as a string with three
values of "\%d", which will be filled in with the zoom,
x, and y values; if missing, will taken from the option
"mt_url"; otherwise will be set to:
"http://tile.stamen.com/toner/\%d/\%d/\%d.png".}

\item{force}{logical; should tiles be downloaded if they already
exist? Defaults to FALSE. Useful if the url is changed
or there was a network issue with the tiles.}

\item{quiet}{logical; should a message be shown indicating what tiles
are being downloaded and used? Set to FALSE by default.}
}
\description{
Compute Map Tiles for the Plot Region
}
\examples{

library(ggplot2)
library(dplyr)

french_city \%>\%
  ggplot(aes(lng, lat)) +
    stat_maptiles(
      cache_dir = system.file("extdata", package="ggmaptile")
    ) +
    geom_point(color = "orange") +
    theme_void() +
    mapview()

}
\author{
Taylor B. Arnold, \email{taylor.arnold@acm.org}
}
\keyword{datasets}
