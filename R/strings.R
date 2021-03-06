#' toinitialcap
#'
#' Base R has toupper and tolower - why not toinitialcap?
#' This renames the example .simpleCap function in the toupper help file.
#' @param mystring (any string)
#' @keywords strings
#' @export
#' @examples
#' toinitialcap("this is a headline")

toinitialcap <- function(mystring){
    s <- strsplit(mystring, " ")[[1]]
    paste(toupper(substring(s, 1, 1)), substring(s, 2),
          sep = "", collapse = " ")
}

#' vector_to_single_string
#'
#' This function takes a vector of character strings and turns it into a single string.
#' @param myvector A vector of character strings
#' @param cr Number of line breaks after each element, defaults to 1
#' @keywords strings
#' @export
#' @examples
#' vec <- c("Mon", "Tue", "Wed", "Thur", "Fri", "Sat", "Sun")
#' vector_to_single_string(vec, 2)


vector_to_single_string <- function(myvector, cr=1){
  carriagereturns <- rep("\n", cr)
  carriagereturns <- paste(carriagereturns, collapse="")
  mystring <- paste(myvector, collapse=carriagereturns)
  return(mystring)
}


