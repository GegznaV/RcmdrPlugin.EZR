\name{HistEZR}
\alias{HistEZR}
\title{Plot a Histogram}

\description{
  This function is a wrapper for the \code{\link[graphics]{hist}} function in
  the \code{base} package, permitting percentage scaling of the
  vertical axis in addition to frequency and density scaling.
  This function is modified from the Hist() function in the Rcmdr package. 
  HistEZR() package in RcmdrPlugin.EZR uses hist2() insted of hist(). In hist2(), 
  the method to set breakpoints between histogram cells was changed from 
  "Sturges" to "Scott".
}

\usage{
HistEZR(x, scale=c("frequency", "percent", "density"), xlab=deparse(substitute(x)), 
	ylab=scale, main="", ...)
}

\arguments{
  \item{x}{a vector of values for which a histogram is to be plotted.}
  \item{scale}{the scaling of the vertical axis: \code{"frequency"} (the default),
    \code{"percent"}, or \code{"density"}.}
  \item{xlab}{x-axis label, defaults to name of variable.}
  \item{ylab}{y-axis label, defaults to value of \code{scale}.}
  \item{main}{main title for graph, defaults to empty.}
  \item{\dots}{arguments to be passed to \code{hist}.}
}

\value{
  This function returns \code{NULL}, and is called for its side effect ---
  plotting a histogram.
}

\seealso{\code{\link[graphics]{hist}}}

\examples{
    data(iris, package="datasets")
    HistEZR(iris$Petal.Length, scale="percent")
    }

\keyword{hplot}
