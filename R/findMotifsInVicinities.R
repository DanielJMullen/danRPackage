## Main find motifs in vicinities function:

#' This is a function which utilizes the matchPWM() function in the Biostrings
#' package, along with the database of motifs included in the MotifDb package
#' to perform a search for transcription factor (TF) motifs found within a
#' specified vicinity of genomic locations provided in the form of a GRanges
#' object.
#'
#' @param GRangesToSearch Specify a GRanges object which contains the genomic
#' coordinates of regions to perform motif searching on. Each region contained
#' in the GRanges object will be searched on. For best results, the genome the
#' coordinates correspond to should be the same as the genome given as the
#' `genome` argument of this function.
#' @param TFNames Specify a vector of TF names to consider for motif searching.
#' If a vector of TFNames has been given, those will be included as a vector
#' given to the `orStrings` argument of the query() function in the MotifDb
#' package, and those with valid position weight matrices (PWMs) will be
#' included in the final search assessing TF binding in the vicinity of the
#' regions specified by the user in `GRangesToSearch`. Alternatively, the user
#' may specify "humanTranscriptionFactors" to use all transcription factors
#' identified in "The Human Transcription Factors" by Lambert et al. 2018 with
#' valid PWMs identified in the MotifDb package. Defaults to
#' "humanTranscriptionFactors".
#' @param CustomMotifList Specify an named custom list of position weight
#' matrices for motifs of potential TFs to include in the search. Motifs in this
#' list should be given as 4 by n matrices, with the rows corresponding to A, T,
#' C, and G frequencies at each of n positions. Values at each position should
#' sum to 1. Names of the TFs should be given as the names in the list.

test <- MotifDb::query(MotifDb::MotifDb, "FOXA1")[[3]]
