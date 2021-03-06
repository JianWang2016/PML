% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tre.R
\name{tre}
\alias{tre}
\title{Trelliscope Visualization for Accelerometer Data}
\usage{
tre(lis, id = NULL, varlis = NULL, smband = 1/12, maxday = 14,
  plot.ind = TRUE, plot.ori = TRUE, plot.sm = TRUE,
  plot.tre = FALSE, plot.tre.path = NULL)
}
\arguments{
\item{lis}{the list of activity data, with each element corresponding to the observation by one individual and the name of each element coresponding to the individual id. Specifically, each element is a \code{nob} by \code{nday} matrix, where each column is an observation by day.}

\item{id}{a vector of id names corresponding to the \code{lis} activity data.}

\item{varlis}{optional data frame to be merged to activity data, and the covariates are of interest for plotting to see activity differences. The first variables needs to be "ID".}

\item{smband}{smoothing parameter for plotting smoothed activity data. the default is 1/12 (see function \code{lowess}).}

\item{maxday}{maxday the maximal number of days per individual in the observation, used to check the data format. The default is 14.}

\item{plot.ind}{whether to plot individual mean activity plots. If not, plot day activity plots. The default is TRUE.}

\item{plot.ori}{whether to plot the original activity curves (tend to have large variations). The default is TRUE.}

\item{plot.sm}{whether to plot lowess of the activity curves. The default is TRUE.}

\item{plot.tre}{whether to generate trelliscope plots. If so, no data will be returned; if not, a data frame will be returned containing all information including trelliscope panels. To generate trelliscope based on the data, one needs to set all activity list columns to NULL. The default is FALSE.}

\item{plot.tre.path}{If plot.tre is TRUE, then plot.tre.path specifies the path to generate trelliscope files. The default is current working directory.}
}
\value{
The data frame including activity, filtering stats, optional covariates, and trelliscope panels. (No data frame will be returned if plot.tre is TRUE.)
}
\description{
This function generates the data frame necessary for trelliscope visualization.
}
\examples{
\dontrun{
data(lis3)
data(var3)

#### individual mean activity plot: return a dataset with trelliscope panels
tre.ind <- tre(lis3,varlis=var3)
tre.ind$activity_ind <- tre.ind$activity_all <- NULL
trelliscopejs::trelliscope(tre.ind,name = "Individual Mean Activity Plot", 
                           nrow = 2, ncol = 2,path=tempdir())

#### day activity plot: directly generating trelliscope visualization
tre(lis3,plot.ind=FALSE,plot.ori=FALSE,plot.tre=TRUE,plot.tre.path=tempdir())
} 

}
\seealso{
\code{\link{form}}
}
\keyword{trelliscope}
