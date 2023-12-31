% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/AllMethods.R
\name{setGenomicSequences}
\alias{setGenomicSequences}
\alias{setGenomicSequences,ProteoDiscography-method}
\title{Change the underlying genomic sequences of a ProteoDiscography object.}
\usage{
setGenomicSequences(x, genomeSeqs)

\S4method{setGenomicSequences}{ProteoDiscography}(x, genomeSeqs)
}
\arguments{
\item{x}{(ProteoDiscography): ProteoDiscography object.}

\item{genomeSeqs}{(\link[Biostrings]{DNAStringSet} or \link[BSgenome]{BSgenome}): Genomic sequence of the respective genome.}
}
\value{
ProteoDiscography with updated genomic sequences.
}
\description{
Change the underlying genomic sequences of a ProteoDiscography object.
}
\examples{

# Import example ProteoDiscography (hg19) and re-link genomic sequences.
data('ProteoDiscographyExample.hg19', package = 'ProteoDisco')
ProteoDiscographyExample.hg19 <- setTxDb(ProteoDiscographyExample.hg19, TxDb.Hsapiens.UCSC.hg19.knownGene::TxDb.Hsapiens.UCSC.hg19.knownGene)
ProteoDiscographyExample.hg19 <- setGenomicSequences(ProteoDiscographyExample.hg19, BSgenome.Hsapiens.UCSC.hg19::BSgenome.Hsapiens.UCSC.hg19)

summary(ProteoDiscographyExample.hg19)

}
