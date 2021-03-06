#' @title Show vocabulary
#' @description Access the installed user's vocabulary
#' @return The vocabulary table, in the form of a data.frame
#' @seealso vocabularyUpdate, for the inclusion of new standard variables defined by the user
#' @note The function assumes that the user has read permission to the package installation directory
#' @author J Bedia
#' @export
#' @examples
#' # Default built-in vocabulary
#' (voc <- showVocabulary())
#' voc[grep("^ta", voc$identifier), ]

showVocabulary <- function() {
      read.csv(file.path(find.package("loadeR"), "vocabulary.txt"))
}

#' @title Include new variables in the vocabulary
#' @description Allows the introduction of new user defined entries in the default vocabulary
#' @return The built-in vocabulary is updated with the new entries appended at the end.
#' @param identifier A vector containing the identifier(s) of the new variable(s) to be appended to the dictionary. 
#' @param standard_name A vector containing the standard name(s) of the new variable(s) to be appended to the dictionary. 
#' @param units A vector containing the units of the new variable(s) to be appended to the dictionary. 
#' @seealso showVocabulary, to access the vocabulary contents
#' @export
#' @author J Bedia
#' @references Standard name table of the CF convention: http://cfconventions.org/standard-names.html
#' @examples \dontrun{
#' # Inclusion of a new variable ("Total snowfall amount")
#' vocabularyUpdate(identifier = "prsn",
#'                  standard_name = "total snowfall amount",
#'                  units = "mm")
#' showVocabulary()                 
#' # Inclusion of 2 new variables: 
#' vocabularyUpdate(identifier = c("wap",
#'                                 "plev"),
#'                  standard_name = c("lagrangian tendency of air pressure",
#'                                    "air pressure"),
#'                  units = c("Pa.s-1",
#'                            "Pa"))
#' showVocabulary() 
#' }

vocabularyUpdate <- function(identifier, standard_name, units) {
      ref <- showVocabulary()
      if (any(identifier %in% ref$identifier)) {
            stop("One or more identifiers already exist in the vocabulary")      
      }
      a <- cbind(identifier, standard_name, units)
      write.table(a, append = TRUE, file = file.path(find.package("loadeR"), "vocabulary.txt"),
                  quote = FALSE, row.names = FALSE, sep = ",", col.names = FALSE)
}
