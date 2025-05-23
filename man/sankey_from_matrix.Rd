% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sankey_from_matrix.R
\name{sankey_from_matrix}
\alias{sankey_from_matrix}
\title{Visualize a Matrix as a Sankey Diagram}
\usage{
sankey_from_matrix(m, value = 0.4, ...)
}
\arguments{
\item{m}{Numeric matrix. The matrix to visualize (rows = sources, columns = targets).}

\item{value}{Numeric scalar (default = 0.40). Minimum value for a link to be included in the graph.
Links with values less than or equal to this threshold are omitted.}

\item{...}{Additional arguments passed to \code{networkD3::sankeyNetwork()}.}
}
\value{
A Sankey diagram as produced by \code{networkD3::sankeyNetwork()}.
}
\description{
Creates an interactive Sankey diagram from a matrix, linking rows (sources) to columns (targets)
with link thickness proportional to the matrix values. Optionally filters out links below a threshold.
}
\details{
Row and column names of the matrix are used as node names. Link values below the threshold are omitted.
}
\examples{
\dontrun{
# Create a simple matrix for demonstration
set.seed(123)
matrix_data <- matrix(runif(25, 0, 1), nrow = 5, ncol = 5)
rownames(matrix_data) <- paste("Item", 1:5)
colnames(matrix_data) <- paste("Scale", 1:5)

# Create sankey plot
sankey_from_matrix(matrix_data, value = 0.4)
}

}
