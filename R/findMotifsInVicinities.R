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
#' A search will be performed for each TF specified to find position weight
#' matrices (PWMs) using the query() function in the MotifDb package, in
#' conjunction with any values specified to the `databaseNames`, `speciesNames`,
#' and `otherSearchTerms` arguments. The user may also specify
#' "humanTranscriptionFactors" to use all TFs identified in
#' "The Human Transcription Factors" by Lambert et al. 2018. Set to NA to not
#' search for TF motif PWMs in the MotifDb package (this requires the user
#' supplies their own to the `customMotifPWMList` argument). TFs with valid PWMs
#' found will be included in the final search assessing TF binding in the
#' vicinity of the regions specified by the user with the `GRangesToSearch` and
#' `genome` arguments. Defaults to "humanTranscriptionFactors".
#' @param databaseNames Specify a vector of database names to consider for motif
#' searching. If a vector of `databaseNames` has been given, those will be
#' included in the string of terms given the the `andStrings` argument of the
#' `MotifDb::query` function when searching for position weight matrices for
#' each TF in the `TFNames` vector. Defaults to "SwissRegulon" to find position
#' weight matrices for TFs in the SwissRegulon database.
#' @param speciesNames Specify a vector of species names to consider for motif
#' searching. If a vector of `speciesNames` has been given, those will be
#' included in the string of terms given the the `andStrings` argument of the
#' `MotifDb::query` function when searching for position weight matrices for
#' each TF in the `TFNames` vector. Defaults to "Hsapiens" to find position
#' weight matrices for TFs derived from humans.
#' @param otherSearchTerms Specify a vector of other search terms to consider
#' for motif searching. If a vector of `otherSearchTerms` has been given, those
#' will be included in the string of terms given the the `andStrings` argument
#' of the `MotifDb::query` function when searching for position weight matrices
#' for each TF in the `TFNames` vector. Defaults to NA to not include additional
#' search terms.
#' @param customMotifPWMList Specify an named custom list of PWMs for motifs of
#' potential TFs to include in the search. PWMs in this list should be given as
#' 4 by n matrices, with the rows corresponding to A, T, C, and G frequencies at
#' each of n positions. Values at each position should sum to 1. Names of the
#' TFs should be given as the names in the list. Any motifs specified in this
#' argument will be added to motifs identified with the previous arguments.
#' Defaults to NA to not include additional motifs to search with.
#' @param genome Specify a BSgenome object with the genome of interest. The
#' regions given in the `GRangesToSearch` object will be used to extract genomic
#' sequences from the specified genome to perform TF motif searching on.
#' Defaults to using the hg38 human genome in the BSgenome.Hsapiens.UCSC.hg38
#' package (https://www.bioconductor.org/packages/release/data/annotation/html/BSgenome.Hsapiens.UCSC.hg38.html)
#' @return Returns XXXX
#'
#' @examplesIf interactive()
#' XXXX
findMotifsInVicinities <- function(
        GRangesToSearch,
        TFNames = "humanTranscriptionFactors",
        databaseNames = "SwissRegulon",
        speciesNames = "Hsapiens",
        otherSearchTerms = NA,
        customMotifPWMList = NA,
        genome = BSgenome.Hsapiens.UCSC.hg38::BSgenome.Hsapiens.UCSC.hg38) {

}
