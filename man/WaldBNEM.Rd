% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Wald-EM.R
\name{WaldBNEM}
\alias{WaldBNEM}
\title{Wald Test via Expectation Maximization.}
\usage{
WaldBNEM(
  t,
  s,
  X,
  Z,
  is_zero,
  init = NULL,
  maxit = 100,
  eps = 1e-08,
  report = FALSE
)
}
\arguments{
\item{t}{Target outcome vector.}

\item{s}{Surrogate outcome vector.}

\item{X}{Target model matrix.}

\item{Z}{Surrogate model matrix.}

\item{is_zero}{Logical vector, with as many entries as columns in the target model
matrix, indicating which columns have coefficient zero under the null.}

\item{init}{Optional list of initial parameters for fitting the null model,
with one or more of the components: a0, b0, S0.}

\item{maxit}{Maximum number of parameter updates.}

\item{eps}{Minimum acceptable improvement in log likelihood.}

\item{report}{Report model fitting progress? Default is FALSE.}
}
\value{
A numeric vector containing the Wald statistic, the degrees of
  freedom, and a p-value.
}
\description{
Performs a Wald test of the null hypothesis that a subset of the regression
parameters for the target outcome are zero.
}
