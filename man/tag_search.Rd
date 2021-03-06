% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/tag_search.R
\name{tag_search}
\alias{tag_search}
\title{List tags.}
\usage{
tag_search(query = NULL, vocabulary_id = NULL, offset = 0, limit = 31,
  url = get_ckanr_url(), as = "list", ...)
}
\arguments{
\item{query}{(character) A tag name query to search for, if given only tags whose names contain
this string will be returned}

\item{vocabulary_id}{(character) The id or name of a vocabulary, if give only tags that belong
to this vocabulary will be returned}

\item{offset}{(numeric) Where to start getting activity items from (optional, default: 0)}

\item{limit}{(numeric) The maximum number of activities to return (optional, default: 31)}

\item{url}{Base url to use. Default: \url{http://data.techno-science.ca}. See
also \code{\link{get_ckanr_url}} and \code{\link{set_ckanr_url}}}

\item{as}{(character) One of list (default), table, or json. Parsing with table option
uses \code{jsonlite::fromJSON(..., simplifyDataFrame = TRUE)}, which attempts to parse
data to data.frame's when possible, so the result can vary. (required)}

\item{...}{Curl args passed on to \code{\link[httr]{POST}} (optional)}
}
\description{
List tags.
}
\examples{
\donttest{
tag_search('aviation')
tag_search('aviation', as='json')
tag_search('aviation', as='table')
}
}

