% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gharmonic.R
\name{gharmonic}
\alias{gharmonic}
\title{harmonic analysis test: g-value calculation}
\usage{
gharmonic(n, r, p, tol = 10^-7, init = NULL)
}
\arguments{
\item{n}{the total number of frequencies in FFT results.}

\item{r}{the modulus of the tested frequency is ranked as the rth largest among all frequencies.}

\item{p}{the FFT result of the tested frequency expressed as the squared modulus divided by the sum of the squared moduli by all frequencies (proportion: m_r^2/(m_1^2+...+m_n^2)).}

\item{tol}{the tolerance level during calculation. The default is 10^-7.}

\item{init}{the crude estimate for g-value if known. It is not called to calculate usual g-values.}
}
\value{
The g-value calculated by the harmonic test.
}
\description{
This function calculates the g-value for the harmonic analysis test developed by R.A. Fisher (1929). 
Harmonic analysis refers to Fast Fourier Transform (FFT) results.
Specifically, g is the proportion (squared modulus of one frequency divided by the sum of all squared moduli).
In order for g to be statistically significant in the harmonic analysis test, it needs to be at least g-value
at significance level \eqn{\alpha}. Please note that for the rth largest frequency, if any of the previous (r-1) 
frequencies is not significant, then the rth largest frequency is also non-significant.
}
\examples{
gharmonic(n=100,r=1,p=0.05)

}
\references{
Fisher, R. A. (1929). Tests of significance in harmonic analysis. Proceedings of the Royal Society of London. Series A, 125(796), 54-59.
}
\seealso{
\code{\link{pharmonic}}
}
\keyword{harmonic}
\keyword{test}
