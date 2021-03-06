% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/ds_create_dataset.R
\name{ds_create_dataset}
\alias{ds_create_dataset}
\title{Datastore - create a dataset}
\usage{
ds_create_dataset(package_id, name, path, key, url = "http://demo.ckan.org",
  as = "list", ...)
}
\arguments{
\item{package_id}{(character) Package ID to add dataset to (required)}

\item{name}{(character) Name of the new dataset (required)}

\item{path}{(character) Path of the file to add (required)}

\item{key}{API key (required)}

\item{url}{Base url to use. Default: \url{http://data.techno-science.ca}. See
also \code{\link{get_ckanr_url}} and \code{\link{set_ckanr_url}}}

\item{as}{(character) One of list (default), table, or json. Parsing with table option
uses \code{jsonlite::fromJSON(..., simplifyDataFrame = TRUE)}, which attempts to parse
data to data.frame's when possible, so the result can vary. (required)}

\item{...}{Curl args passed on to \code{\link[httr]{POST}} (optional)}
}
\description{
Datastore - create a dataset
}
\examples{
\donttest{
ds_create_dataset(package_id='testingagain', name="mydata",
                   path="~/github/sac/theplantlist/Actinidiaceae.csv",
                   key=getOption('ckan_demo_key'))
}
}

