% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BSDesparseLasso.R
\name{BSDesparseLasso}
\alias{BSDesparseLasso}
\title{Bootstrap-calibrated Desparsified Lasso}
\usage{
BSDesparseLasso(y, x, r = NULL, G = NULL, B = NULL, alpha = 0.95, fold = 3)
}
\arguments{
\item{y}{response}

\item{x}{design matrix}

\item{r}{tuning parameter}

\item{G}{subgroup indicator}

\item{B}{bootstrap iterations}

\item{alpha}{level of CI}
}
\value{
\item{LowerBound}{lower confidence bound}
\item{UpperBound}{upper confidence bound}
\item{betaMax}{bias-reduced maximum beta estimate}
\item{betaEst}{debiased beta estimate for each subgroup}
\item{op}{optimal tuning}
}
\description{
This method first constructs the debiased estimator of \eqn{\beta} via the
desparsified Lasso procedure. Then it calculates the calibration term
\eqn{\hat{b}_{max} =(1-n^{r-0.5})(\hat{\beta}_{max}-\hat{\beta}_{j,lasso})}. Through B bootstrap iterations,
it recalibrates the bootstrap statistic \eqn{T_b}. The bias-reduced estimate
is computed as: \eqn{\hat{b}_{max}-\frac{1}{B}\sum_{b=1}^BT_b}.
}
