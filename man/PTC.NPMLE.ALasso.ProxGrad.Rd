% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Func_PTC_HD.R
\name{PTC.NPMLE.ALasso.ProxGrad}
\alias{PTC.NPMLE.ALasso.ProxGrad}
\title{Variable selection in promotion time cure model (via adaptive Lasso, only one time for a specific tuning parameter, using proximal gradient descent)}
\usage{
PTC.NPMLE.ALasso.ProxGrad(
  yobs,
  delta,
  X,
  bet.init,
  weights,
  tunpara,
  LinkFunc = list(D0 = exp, D1 = exp),
  learnrate = 0.1,
  maxit = 5000,
  eps = 1e-06
)
}
\arguments{
\item{yobs}{time to event of interest.}

\item{delta}{the censoring indicator, normally 1 = event of interest happens, and 0 = censoring.}

\item{X}{a matrix of covariates.}

\item{bet.init}{the initial value for the regression coefficients.}

\item{weights}{the weight vector for the adaptive Lasso.}

\item{tunpara}{the current tuning parameter (scaler).}

\item{LinkFunc}{the link function specified in the promotion time cure model. The default is the exponential function (The proportional hazards cure model).}

\item{learnrate}{the learning rate in solving the optimization problem.}

\item{maxit}{specifies the maximum iteration number. If the convergence criterion is not met, the iteration will be stopped after emmax iterations and the estimates will be based on the last maximum likelihood iteration. The default \code{maxit = 5e3}.}

\item{eps}{tolerance for convergence. The default is \code{eps = 1e-6}. Iteration stops once the relative change in deviance is less than \code{eps}.}
}
\description{
Conduct variable selection using promotion time cure model based on the nonparametric maximum likelihood estimation (NPMLE) procedure and adaptive Lasso penalty (using proximal gradient descent).
Note that it is a auxiliary function and only solve the optimization problem for a specific tuning parameter.
}
