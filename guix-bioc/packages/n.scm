(define-module (guix-bioc packages n)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages cran)
  #:use-module (guix-cran packages b)
  #:use-module (guix-cran packages s)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages bioinformatics)
  #:use-module (gnu packages xml)
  #:use-module (guix-cran packages i)
  #:use-module (gnu packages bash)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages perl)
  #:use-module (guix-cran packages t)
  #:use-module (guix-cran packages v)
  #:use-module (guix-cran packages x)
  #:use-module (guix-cran packages g)
  #:use-module (guix-bioc packages z)
  #:use-module (guix-bioc packages x)
  #:use-module (guix-bioc packages w)
  #:use-module (guix-bioc packages v)
  #:use-module (guix-bioc packages u)
  #:use-module (guix-bioc packages t)
  #:use-module (guix-bioc packages s)
  #:use-module (guix-bioc packages r)
  #:use-module (guix-bioc packages q)
  #:use-module (guix-bioc packages p)
  #:use-module (guix-bioc packages o)
  #:use-module (guix-bioc packages m)
  #:use-module (guix-bioc packages l)
  #:use-module (guix-bioc packages k)
  #:use-module (guix-bioc packages i)
  #:use-module (guix-bioc packages h)
  #:use-module (guix-bioc packages g)
  #:use-module (guix-bioc packages f)
  #:use-module (guix-bioc packages e)
  #:use-module (guix-bioc packages d)
  #:use-module (guix-bioc packages c)
  #:use-module (guix-bioc packages b)
  #:use-module (guix-bioc packages a))

(define-public r-nupop
  (package
    (name "r-nupop")
    (version "2.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NuPoP" version))
       (sha256
        (base32 "1kmnm3dyscbavdkfwwp0s7xqngz6gma7475f891jgsav12xh7zwf"))))
    (properties `((upstream-name . "NuPoP")))
    (build-system r-build-system)
    (native-inputs (list r-knitr gfortran))
    (home-page "https://bioconductor.org/packages/NuPoP")
    (synopsis "An R package for nucleosome positioning prediction")
    (description
     "@code{NuPoP} is an R package for Nucleosome Positioning Prediction.This package
is built upon a duration hidden Markov model proposed in Xi et al, 2010; Wang et
al, 2008.  The core of the package was written in Fotran.  In addition to the R
package, a stand-alone Fortran software tool is also available at
https://github.com/jipingw.  The Fortran codes have complete functonality as the
R package.  Note: @code{NuPoP} has two separate functions for prediction of
nucleosome positioning, one for MNase-map trained models and the other for
chemical map-trained models.  The latter was implemented for four species
including yeast, S.pombe, mouse and human, trained based on our recent
publications.  We noticed there is another package @code{nuCpos} by another
group for prediction of nucleosome positioning trained with chemicals.  A report
to compare recent versions of @code{NuPoP} with @code{nuCpos} can be found at
https://github.com/jiping/@code{NuPoP_doc}.  Some more information can be found
and will be posted at https://github.com/jipingw/@code{NuPoP}.")
    (license license:gpl2)))

(define-public r-nullranges
  (package
    (name "r-nullranges")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nullranges" version))
       (sha256
        (base32 "13k2ij87fw902w0f0322wk3xnjcbsnbfimvanvxxlnv0yr9d9nva"))))
    (properties `((upstream-name . "nullranges")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-s4vectors
                             r-rlang
                             r-progress
                             r-plyranges
                             r-iranges
                             r-interactionset
                             r-ggridges
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://nullranges.github.io/nullranges")
    (synopsis
     "Generation of null ranges via bootstrapping or covariate matching")
    (description
     "Modular package for generation of sets of ranges representing the null
hypothesis.  These can take the form of bootstrap samples of ranges (using the
block bootstrap framework of Bickel et al 2010), or sets of control ranges that
are matched across one or more covariates.  nullranges is designed to be
inter-operable with other packages for analysis of genomic overlap enrichment,
including the plyranges Bioconductor package.")
    (license license:gpl3)))

(define-public r-nucpos
  (package
    (name "r-nucpos")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nuCpos" version))
       (sha256
        (base32 "1qnmmxlabah0w4dpin4s02jzcwxk86djgal7m4s4fymh9gc3yi5q"))))
    (properties `((upstream-name . "nuCpos")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/nuCpos")
    (synopsis "An R package for prediction of nucleosome positions")
    (description
     "@code{nuCpos}, a derivative of @code{NuPoP}, is an R package for prediction of
nucleosome positions. @code{nuCpos} calculates local and whole nucleosomal
histone binding affinity (HBA) scores for a given 147-bp sequence.  Note: This
package was designed to demonstrate the use of chemical maps in prediction.  As
the parental package @code{NuPoP} now provides chemical-map-based prediction,
the function for @code{dHMM-based} prediction was removed from this package.
@code{nuCpos} continues to provide functions for HBA calculation.")
    (license license:gpl2)))

(define-public r-nucler
  (package
    (name "r-nucler")
    (version "2.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nucleR" version))
       (sha256
        (base32 "12jy9s03saxcmvbh82ip8r803j3bz8kkzvgs45zl4mqjv1gsf07p"))))
    (properties `((upstream-name . "nucleR")))
    (build-system r-build-system)
    (propagated-inputs (list r-shortread
                             r-s4vectors
                             r-rsamtools
                             r-magrittr
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr
                             r-biostrings
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/nucleR")
    (synopsis "Nucleosome positioning package for R")
    (description
     "Nucleosome positioning for Tiling Arrays and NGS experiments.")
    (license license:lgpl3+)))

(define-public r-nucleosim
  (package
    (name "r-nucleosim")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nucleoSim" version))
       (sha256
        (base32 "1a0fnx97q6fgfsnplw016xk0hq5vrn9sbk11rbfbwk58kx6jzfgg"))))
    (properties `((upstream-name . "nucleoSim")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors r-iranges))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/arnauddroitlab/nucleoSim")
    (synopsis "Generate synthetic nucleosome maps")
    (description
     "This package can generate a synthetic map with reads covering the nucleosome
regions as well as a synthetic map with forward and reverse reads emulating
next-generation sequencing.  The synthetic hybridization data of “Tiling Arrays”
can also be generated.  The user has choice between three different
distributions for the read positioning: Normal, Student and Uniform.  In
addition, a visualization tool is provided to explore the synthetic nucleosome
maps.")
    (license license:artistic2.0)))

(define-public r-ntw
  (package
    (name "r-ntw")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NTW" version))
       (sha256
        (base32 "17327zp220xzfg5f48kkfkmmwdk75gggp56nirj7lywwwp2mx76s"))))
    (properties `((upstream-name . "NTW")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm))
    (home-page "https://bioconductor.org/packages/NTW")
    (synopsis
     "Predict gene network using an Ordinary Differential Equation (ODE) based method")
    (description
     "This package predicts the gene-gene interaction network and identifies the
direct transcriptional targets of the perturbation using an ODE (Ordinary
Differential Equation) based method.")
    (license license:gpl2)))

(define-public r-npgsea
  (package
    (name "r-npgsea")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "npGSEA" version))
       (sha256
        (base32 "0m53l08fz5fsip9hc65cgabwd1xrpdj8fmywklsip467k4fw7zdw"))))
    (properties `((upstream-name . "npGSEA")))
    (build-system r-build-system)
    (propagated-inputs (list r-gseabase r-biocgenerics r-biobase))
    (home-page "https://bioconductor.org/packages/npGSEA")
    (synopsis
     "Permutation approximation methods for gene set enrichment analysis (non-permutation GSEA)")
    (description
     "Current gene set enrichment methods rely upon permutations for inference.  These
approaches are computationally expensive and have minimum achievable p-values
based on the number of permutations, not on the actual observed statistics.  We
have derived three parametric approximations to the permutation distributions of
two gene set enrichment test statistics.  We are able to reduce the
computational burden and granularity issues of permutation testing with our
method, which is implemented in this package. @code{npGSEA} calculates gene set
enrichment statistics and p-values without the computational cost of
permutations.  It is applicable in settings where one or many gene sets are of
interest.  There are also built-in plotting functions to help users visualize
results.")
    (license license:artistic2.0)))

(define-public r-nparc
  (package
    (name "r-nparc")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NPARC" version))
       (sha256
        (base32 "014zrhmkhfhiblahq124qm8ws2m595ycji9jcpxg9l895nagpx9h"))))
    (properties `((upstream-name . "NPARC")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-mass
                             r-magrittr
                             r-dplyr
                             r-broom
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/NPARC")
    (synopsis
     "Non-parametric analysis of response curves for thermal proteome profiling experiments")
    (description
     "Perform non-parametric analysis of response curves as described by Childs, Bach,
Franken et al. (2019): Non-parametric analysis of thermal proteome profiles
reveals novel drug-binding proteins.")
    (license license:gpl3)))

(define-public r-normr
  (package
    (name "r-normr")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "normr" version))
       (sha256
        (base32 "05xlqg5d5m3kd6mc8lnq7kg90bwwk5vb3d6c99pqnwr98mw5sm8k"))))
    (properties `((upstream-name . "normr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rtracklayer
                             r-rcpp
                             r-qvalue
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-bamsignals))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/your-highness/normR")
    (synopsis "Normalization and difference calling in ChIP-seq data")
    (description
     "Robust normalization and difference calling procedures for @code{ChIP-seq} and
alike data.  Read counts are modeled jointly as a binomial mixture model with a
user-specified number of components.  A fitted background estimate accounts for
the effect of enrichment in certain regions and, therefore, represents an
appropriate null hypothesis.  This robust background is used to identify
significantly enriched or depleted regions.")
    (license license:gpl2)))

(define-public r-normqpcr
  (package
    (name "r-normqpcr")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NormqPCR" version))
       (sha256
        (base32 "19iw77aqv4j54m3f955xm4bg4jbxy0aavqys0dias26f4x8a29n7"))))
    (properties `((upstream-name . "NormqPCR")))
    (build-system r-build-system)
    (propagated-inputs (list r-readqpcr r-rcolorbrewer r-qpcr r-biobase))
    (home-page "www.bioconductor.org/packages/release/bioc/html/NormqPCR.html")
    (synopsis "Functions for normalisation of RT-qPCR data")
    (description
     "This package provides functions for the selection of optimal reference genes and
the normalisation of real-time quantitative PCR data.")
    (license license:lgpl3)))

(define-public r-normalyzerde
  (package
    (name "r-normalyzerde")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NormalyzerDE" version))
       (sha256
        (base32 "1cgm9iivnn1xx1m0shac4i8cm9ar2f965wyrs6ifj41n0scqyns2"))))
    (properties `((upstream-name . "NormalyzerDE")))
    (build-system r-build-system)
    (propagated-inputs (list r-vsn
                             r-summarizedexperiment
                             r-preprocesscore
                             r-matrixstats
                             r-mass
                             r-limma
                             r-ggplot2
                             r-ggforce
                             r-car
                             r-biobase
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ComputationalProteomics/NormalyzerDE")
    (synopsis
     "Evaluation of normalization methods and calculation of differential expression analysis statistics")
    (description
     "@code{NormalyzerDE} provides screening of normalization methods for LC-MS based
expression data.  It calculates a range of normalized matrices using both
existing approaches and a novel time-segmented approach, calculates performance
measures and generates an evaluation report.  Furthermore, it provides an easy
utility for Limma- or ANOVA- based differential expression analysis.")
    (license license:artistic2.0)))

(define-public r-normalize450k
  (package
    (name "r-normalize450k")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "normalize450K" version))
       (sha256
        (base32 "027j1pm3l5aq5wzzqfw6rxzwiw6ir7haxwb8jc9d0h4hi7csngiw"))))
    (properties `((upstream-name . "normalize450K")))
    (build-system r-build-system)
    (propagated-inputs (list r-quadprog r-illuminaio r-biobase))
    (home-page "https://bioconductor.org/packages/normalize450K")
    (synopsis "Preprocessing of Illumina Infinium 450K data")
    (description
     "Precise measurements are important for epigenome-wide studies investigating DNA
methylation in whole blood samples, where effect sizes are expected to be small
in magnitude.  The 450K platform is often affected by batch effects and proper
preprocessing is recommended.  This package provides functions to read and
normalize 450K .idat files.  The normalization corrects for dye bias and biases
related to signal intensity and methylation of probes using local regression.
No adjustment for probe type bias is performed to avoid the trade-off of
precision for accuracy of beta-values.")
    (license license:bsd-2)))

(define-public r-norce
  (package
    (name "r-norce")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NoRCE" version))
       (sha256
        (base32 "1b21mmmn26q17si2m1h8635a3ksnn38ajlm4mv41vaii7v8h11zv"))))
    (properties `((upstream-name . "NoRCE")))
    (build-system r-build-system)
    (propagated-inputs (list r-zlibbioc
                             r-tidyr
                             r-summarizedexperiment
                             r-stringr
                             r-s4vectors
                             r-rwikipathways
                             r-rtracklayer
                             r-rsqlite
                             r-reshape2
                             r-readr
                             r-reactome-db
                             r-rcurl
                             r-png
                             r-keggrest
                             r-iranges
                             r-igraph
                             r-go-db
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-dplyr
                             r-dbplyr
                             r-dbi
                             r-biomart
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/NoRCE")
    (synopsis "NoRCE: Noncoding RNA Sets Cis Annotation and Enrichment")
    (description
     "While some non-coding RNAs (@code{ncRNAs}) are assigned critical regulatory
roles, most remain functionally uncharacterized.  This presents a challenge
whenever an interesting set of @code{ncRNAs} needs to be analyzed in a
functional context.  Transcripts located close-by on the genome are often
regulated together.  This genomic proximity on the sequence can hint to a
functional association.  We present a tool, @code{NoRCE}, that performs cis
enrichment analysis for a given set of @code{ncRNAs}.  Enrichment is carried out
using the functional annotations of the coding genes located proximal to the
input @code{ncRNAs}.  Other biologically relevant information such as
topologically associating domain (TAD) boundaries, co-expression patterns, and
@code{miRNA} target prediction information can be incorporated to conduct a
richer enrichment analysis.  To this end, @code{NoRCE} includes several relevant
datasets as part of its data repository, including cell-line specific TAD
boundaries, functional gene sets, and expression data for coding & @code{ncRNAs}
specific to cancer.  Additionally, the users can utilize custom data files in
their investigation.  Enrichment results can be retrieved in a tabular format or
visualized in several different ways. @code{NoRCE} is currently available for
the following species: human, mouse, rat, zebrafish, fruit fly, worm, and yeast.")
    (license license:expat)))

(define-public r-nondetects
  (package
    (name "r-nondetects")
    (version "2.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nondetects" version))
       (sha256
        (base32 "0302mg5pbvbzp9rhm6wg4lfa7c7lkndysx35x8b1zskc4b1v76cv"))))
    (properties `((upstream-name . "nondetects")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-limma r-htqpcr r-biobase r-arm))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/nondetects")
    (synopsis "Non-detects in qPCR data")
    (description
     "This package provides methods to model and impute non-detects in the results of
@code{qPCR} experiments.")
    (license license:gpl3)))

(define-public r-nnsvg
  (package
    (name "r-nnsvg")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nnSVG" version))
       (sha256
        (base32 "014d6k0b3sc09zmvknj04n899sb4ld39ggz5y9hs18k4k6v8wxbb"))))
    (properties `((upstream-name . "nnSVG")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-matrixstats
                             r-matrix
                             r-brisc
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lmweber/nnSVG")
    (synopsis
     "Scalable identification of spatially variable genes in spatially-resolved transcriptomics data")
    (description
     "Method for scalable identification of spatially variable genes (SVGs) in
spatially-resolved transcriptomics data.  The method is based on
nearest-neighbor Gaussian processes and uses the BRISC algorithm for model
fitting and parameter estimation.  Allows identification and ranking of SVGs
with flexible length scales across a tissue slide or within spatial domains
defined by covariates.  Scales linearly with the number of spatial locations and
can be applied to datasets containing thousands or more spatial locations.")
    (license license:expat)))

(define-public r-nnnorm
  (package
    (name "r-nnnorm")
    (version "2.66.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nnNorm" version))
       (sha256
        (base32 "0wf48cfmmp6dljsw1iw92avk1b76z0qv9wg8lr09xpcp61ahpjnn"))))
    (properties `((upstream-name . "nnNorm")))
    (build-system r-build-system)
    (propagated-inputs (list r-nnet r-marray))
    (home-page "http://bioinformaticsprb.med.wayne.edu/tarca/")
    (synopsis
     "Spatial and intensity based normalization of cDNA microarray data based on robust neural nets")
    (description
     "This package allows to detect and correct for spatial and intensity biases with
two-channel microarray data.  The normalization method implemented in this
package is based on robust neural networks fitting.")
    (license license:lgpl2.0+)))

(define-public r-nipalsmcia
  (package
    (name "r-nipalsmcia")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nipalsMCIA" version))
       (sha256
        (base32 "1jvbr9zxl1y0whdav26jx7fhlj4lp22pmjx8aa0id651nc76nsc3"))))
    (properties `((upstream-name . "nipalsMCIA")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-scales
                             r-rspectra
                             r-rlang
                             r-pracma
                             r-multiassayexperiment
                             r-ggplot2
                             r-fgsea
                             r-dplyr
                             r-complexheatmap))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Muunraker/nipalsMCIA")
    (synopsis "Multiple Co-Inertia Analysis via the NIPALS Method")
    (description
     "Computes Multiple Co-Inertia Analysis (MCIA), a dimensionality reduction
(@code{jDR}) algorithm, for a multi-block dataset using a modification to the
Nonlinear Iterative Partial Least Squares method (NIPALS) proposed in (Hanafi
et.  al, 2010).  Allows multiple options for row- and table-level preprocessing,
and speeds up computation of variance explained.  Vignettes detail application
to bulk- and single cell- multi-omics studies.")
    (license license:gpl3)))

(define-public r-ngsreports
  (package
    (name "r-ngsreports")
    (version "2.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ngsReports" version))
       (sha256
        (base32 "0phlm6qsvd1kzk25678lr105srwvs3hvxksjg7jlq901vnl1bhdb"))))
    (properties `((upstream-name . "ngsReports")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-scales
                             r-rmarkdown
                             r-rlang
                             r-reshape2
                             r-readr
                             r-plotly
                             r-patchwork
                             r-pander
                             r-lubridate
                             r-lifecycle
                             r-jsonlite
                             r-ggplot2
                             r-ggdendro
                             r-forcats
                             r-dt
                             r-dplyr
                             r-checkmate
                             r-biostrings
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/smped/ngsReports")
    (synopsis "Load FastqQC reports and other NGS related files")
    (description
     "This package provides methods and object classes for parsing @code{FastQC}
reports and output summaries from other NGS tools into R. As well as parsing
files, multiple plotting methods have been implemented for visualising the
parsed data.  Plots can be generated as static ggplot objects or interactive
plotly objects.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-newwave
  (package
    (name "r-newwave")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NewWave" version))
       (sha256
        (base32 "1d3kvrkjl9dhwxsvr69zryp4mz6dggzgzrbiab5wkm3n9qvvgf84"))))
    (properties `((upstream-name . "NewWave")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-sharedobject
                             r-matrix
                             r-irlba
                             r-delayedarray
                             r-biocsingular))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/NewWave")
    (synopsis "Negative binomial model for scRNA-seq")
    (description
     "This package provides a model designed for dimensionality reduction and batch
effect removal for @code{scRNA-seq} data.  It is designed to be massively
parallelizable using shared objects that prevent memory duplication, and it can
be used with different mini-batch approaches in order to reduce time
consumption.  It assumes a negative binomial distribution for the data with a
dispersion parameter that can be both commonwise across gene both genewise.")
    (license license:gpl3)))

(define-public r-netzoor
  (package
    (name "r-netzoor")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "netZooR" version))
       (sha256
        (base32 "1fkq1vrdflli3vq3m4p375z3n7s4wd62ah94sp5j6szhnrz4fybh"))))
    (properties `((upstream-name . "netZooR")))
    (build-system r-build-system)
    (propagated-inputs (list r-yarn
                             r-viridislite
                             r-vegan
                             r-tidyr
                             r-stringdb
                             r-reticulate
                             r-reshape2
                             r-reshape
                             r-rcy3
                             r-penalized
                             r-pandar
                             r-org-hs-eg-db
                             r-nnet
                             r-matrixstats
                             r-matrixcalc
                             r-matrix
                             r-mass
                             r-igraph
                             r-gplots
                             r-gostats
                             r-go-db
                             r-ggplot2
                             r-ggdendro
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-data-table
                             r-biobase
                             r-assertthat
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/netZoo/netZooR")
    (synopsis
     "Unified methods for the inference and analysis of gene regulatory networks")
    (description
     "@code{netZooR} unifies the implementations of several Network Zoo methods
(netzoo, netzoo.github.io) into a single package by creating interfaces between
network inference and network analysis methods.  Currently, the package has 3
methods for network inference including PANDA and its optimized implementation
OTTER (network reconstruction using mutliple lines of biological evidence),
LIONESS (single-sample network inference), and EGRET (genotype-specific
networks).  Network analysis methods include CONDOR (community detection),
ALPACA (differential community detection), CRANE (significance estimation of
differential modules), MONSTER (estimation of network transition states).  In
addition, YARN allows to process gene expresssion data for tissue-specific
analyses and SAMBAR infers missing mutation data based on pathway information.")
    (license license:gpl3)))

(define-public r-netsmooth
  (package
    (name "r-netsmooth")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "netSmooth" version))
       (sha256
        (base32 "1wkjpxk9aw1w65kxf07rw1aj64bg9c75rx88vxxrniq89iwfynwl"))))
    (properties `((upstream-name . "netSmooth")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-scater
                             r-matrix
                             r-hdf5array
                             r-entropy
                             r-delayedarray
                             r-data-table
                             r-clusterexperiment
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BIMSBbioinfo/netSmooth")
    (synopsis "Network smoothing for scRNAseq")
    (description
     "@code{netSmooth} is an R package for network smoothing of single cell RNA
sequencing data.  Using bio networks such as protein-protein interactions as
priors for gene co-expression, netsmooth improves cell type identification from
noisy, sparse @code{scRNAseq} data.")
    (license license:gpl3)))

(define-public r-netsam
  (package
    (name "r-netsam")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NetSAM" version))
       (sha256
        (base32 "1y9k37pq10dp5bp847hlsr2sl71ygvzsd4naqg65lpklg9zrc8la"))))
    (properties `((upstream-name . "NetSAM")))
    (build-system r-build-system)
    (propagated-inputs (list r-wgcna
                             r-survival
                             r-seriation
                             r-r2html
                             r-igraph
                             r-go-db
                             r-foreach
                             r-doparallel
                             r-dbi
                             r-biomart
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/NetSAM")
    (synopsis "Network Seriation And Modularization")
    (description
     "The @code{NetSAM} (Network Seriation and Modularization) package takes an
edge-list representation of a weighted or unweighted network as an input,
performs network seriation and modularization analysis, and generates as files
that can be used as an input for the one-dimensional network visualization tool
@code{NetGestalt} (http://www.netgestalt.org) or other network analysis.  The
@code{NetSAM} package can also generate correlation network (e.g. co-expression
network) based on the input matrix data, perform seriation and modularization
analysis for the correlation network and calculate the associations between the
sample features and modules or identify the associated GO terms for the modules.")
    (license license:lgpl2.0+)))

(define-public r-netresponse
  (package
    (name "r-netresponse")
    (version "1.62.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "netresponse" version))
       (sha256
        (base32 "1sdmx9zah59p52sjay94zgpqbghsgx0gsgg25rdh5ayp3hy8n3z3"))))
    (properties `((upstream-name . "netresponse")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmarkdown
                             r-rgraphviz
                             r-reshape2
                             r-rcolorbrewer
                             r-qvalue
                             r-plyr
                             r-minet
                             r-mclust
                             r-igraph
                             r-graph
                             r-ggplot2
                             r-biocstyle))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/antagomir/netresponse")
    (synopsis "Functional Network Analysis")
    (description
     "Algorithms for functional network analysis.  Includes an implementation of a
variational Dirichlet process Gaussian mixture model for nonparametric mixture
modeling.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-netprior
  (package
    (name "r-netprior")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "netprioR" version))
       (sha256
        (base32 "02hb9jxplby5yjghycfx9cd53b9kal5ma2hwllljfp0j7iv5cfwi"))))
    (properties `((upstream-name . "netprioR")))
    (build-system r-build-system)
    (propagated-inputs (list r-sparsemvn
                             r-proc
                             r-matrix
                             r-gridextra
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "http://bioconductor.org/packages/netprioR")
    (synopsis "model for network-based prioritisation of genes")
    (description
     "This package provides a model for semi-supervised prioritisation of genes
integrating network data, phenotypes and additional prior knowledge about TP and
TN gene labels from the literature or experts.")
    (license license:gpl3)))

(define-public r-netpathminer
  (package
    (name "r-netpathminer")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NetPathMiner" version))
       (sha256
        (base32 "1nppjwxvd8qgajhcs2yzch3k1r1mvvqb9sy94cpr74iga8m487nh"))))
    (properties `((upstream-name . "NetPathMiner")))
    (build-system r-build-system)
    (inputs (list libxml2 libxml2 libsbml))
    (propagated-inputs (list r-igraph))
    (native-inputs (list pkg-config r-knitr))
    (home-page "https://github.com/ahmohamed/NetPathMiner")
    (synopsis
     "NetPathMiner for Biological Network Construction, Path Mining and Visualization")
    (description
     "@code{NetPathMiner} is a general framework for network path mining using
genome-scale networks.  It constructs networks from KGML, SBML and @code{BioPAX}
files, providing three network representations, metabolic, reaction and gene
representations. @code{NetPathMiner} finds active paths and applies machine
learning methods to summarize found paths for easy interpretation.  It also
provides static and interactive visualizations of networks and paths to aid
manual investigation.")
    (license license:gpl2+)))

(define-public r-netomics
  (package
    (name "r-netomics")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "netOmics" version))
       (sha256
        (base32 "03nyjvcr2hldsfifj0dix1bc79z05i9x2hgc5z2g9hd1jyijljyd"))))
    (properties `((upstream-name . "netOmics")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-randomwalkrestartmh
                             r-purrr
                             r-minet
                             r-magrittr
                             r-igraph
                             r-gprofiler2
                             r-go-db
                             r-ggplot2
                             r-dplyr
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/abodein/netOmics")
    (synopsis
     "Multi-Omics (time-course) network-based integration and interpretation")
    (description
     "@code{netOmics} is a multi-omics networks builder and explorer.  It uses a
combination of network inference algorithms and and knowledge-based graphs to
build multi-layered networks.  The package can be combined with @code{timeOmics}
to incorporate time-course expression data and build sub-networks from
multi-omics kinetic clusters.  Finally, from the generated multi-omics networks,
propagation analyses allow the identification of missing biological functions
(1), multi-omics mechanisms (2) and molecules between kinetic clusters (3).
This helps to resolve complex regulatory mechanisms.")
    (license license:gpl3)))

(define-public r-nethet
  (package
    (name "r-nethet")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nethet" version))
       (sha256
        (base32 "0js6vky7ilgz60kp62l3jh841lx4f1fdikklk0b3qa6fxvv6kshj"))))
    (properties `((upstream-name . "nethet")))
    (build-system r-build-system)
    (propagated-inputs (list r-network
                             r-mvtnorm
                             r-multtest
                             r-mclust
                             r-limma
                             r-icsnp
                             r-huge
                             r-gsa
                             r-glmnet
                             r-glasso
                             r-ggplot2
                             r-ggm
                             r-genenet
                             r-compquadform))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/nethet")
    (synopsis
     "bioconductor package for high-dimensional exploration of biological network heterogeneity")
    (description
     "Package nethet is an implementation of statistical solid methodology enabling
the analysis of network heterogeneity from high-dimensional data.  It combines
several implementations of recent statistical innovations useful for estimation
and comparison of networks in a heterogeneous, high-dimensional setting.  In
particular, we provide code for formal two-sample testing in Gaussian graphical
models (differential network and GGM-GSA; Stadler and Mukherjee, 2013, 2014) and
make a novel network-based clustering algorithm available (mixed graphical
lasso, Stadler and Mukherjee, 2013).")
    (license license:gpl2)))

(define-public r-netdx
  (package
    (name "r-netdx")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "netDx" version))
       (sha256
        (base32 "0plq4fz6fjgcri6swpfbffpcim52r5qws6g9fb36s4y8fvpjarpw"))))
    (properties `((upstream-name . "netDx")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rtsne
                             r-rocr
                             r-reshape2
                             r-rcolorbrewer
                             r-rappdirs
                             r-pracma
                             r-plotrix
                             r-multiassayexperiment
                             r-iranges
                             r-igraph
                             r-httr
                             r-glmnet
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-foreach
                             r-doparallel
                             r-combinat
                             r-biocfilecache
                             r-bigmemory))
    (native-inputs (list r-knitr))
    (home-page "http://netdx.org")
    (synopsis "Network-based patient classifier")
    (description
     "@code{netDx} is a general-purpose algorithm to build a patient classifier from
heterogenous patient data.  The method converts data into patient similarity
networks at the level of features.  Feature selection identifies features of
predictive value to each class.  Methods are provided for versatile predictor
design and performance evaluation using standard measures. @code{netDx} natively
groups molecular data into pathway-level features and connects with Cytoscape
for network visualization of pathway themes.  For method details see: Pai et al.
(2019). @code{netDx}: interpretable patient classification using integrated
patient similarity networks.  Molecular Systems Biology.  15, e8497")
    (license license:expat)))

(define-public r-netboost
  (package
    (name "r-netboost")
    (version "2.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "netboost" version))
       (sha256
        (base32 "1cmyh47d61saz2a47gp5a04kf5ajd2ghscm8lvrpichm1743hsm2"))))
    (properties `((upstream-name . "netboost")))
    (build-system r-build-system)
    (inputs (list perl gzip bash))
    (propagated-inputs (list r-wgcna
                             r-rcppparallel
                             r-rcpp
                             r-r-utils
                             r-impute
                             r-dynamictreecut
                             r-colorspace
                             r-biocstyle))
    (native-inputs (list r-knitr))
    (home-page
     "https://bioconductor.org/packages/release/bioc/html/netboost.html")
    (synopsis "Network Analysis Supported by Boosting")
    (description
     "Boosting supported network analysis for high-dimensional omics applications.
This package comes bundled with the MC-UPGMA clustering package by Yaniv
Loewenstein.")
    (license license:gpl3)))

(define-public r-netactivity
  (package
    (name "r-netactivity")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NetActivity" version))
       (sha256
        (base32 "0jij69065vkmr7ba898h44vyacpkmbqc1pr3c6frvwjqwazvdr4k"))))
    (properties `((upstream-name . "NetActivity")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-deseq2
                             r-delayedmatrixstats r-delayedarray))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/NetActivity")
    (synopsis "Compute gene set scores from a deep learning framework")
    (description
     "# @code{NetActivity} enables to compute gene set scores from previously trained
sparsely-connected autoencoders.  The package contains a function to prepare the
data (`@code{prepareSummarizedExperiment`}) and a function to compute the gene
set scores (`@code{computeGeneSetScores`}).  The package
`@code{NetActivityData`} contains different pre-trained models to be directly
applied to the data.  Alternatively, the users might use the package to compute
gene set scores using custom models.")
    (license license:expat)))

(define-public r-nempi
  (package
    (name "r-nempi")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nempi" version))
       (sha256
        (base32 "0z12kw9iihmcgq5hy4vl914d39ghba3dmlk01rwyj5gnkac233yf"))))
    (properties `((upstream-name . "nempi")))
    (build-system r-build-system)
    (propagated-inputs (list r-randomforest
                             r-nnet
                             r-naturalsort
                             r-mnem
                             r-matrixstats
                             r-epinem
                             r-e1071))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cbg-ethz/nempi/")
    (synopsis "Inferring unobserved perturbations from gene expression data")
    (description
     "Takes as input an incomplete perturbation profile and differential gene
expression in log odds and infers unobserved perturbations and augments observed
ones.  The inference is done by iteratively inferring a network from the
perturbations and inferring perturbations from the network.  The network
inference is done by Nested Effects Models.")
    (license license:gpl3)))

(define-public r-nearbynding
  (package
    (name "r-nearbynding")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nearBynding" version))
       (sha256
        (base32 "114saana5jbb0bkpnaw0f52pnic5p7gsixcl34jqw5q4pdzwfz5z"))))
    (properties `((upstream-name . "nearBynding")))
    (build-system r-build-system)
    (inputs (list bedtools))
    (propagated-inputs (list r-txdb-hsapiens-ucsc-hg38-knowngene
                             r-txdb-hsapiens-ucsc-hg19-knowngene
                             r-transport
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-rlang
                             r-r-utils
                             r-plyranges
                             r-matrixstats
                             r-magrittr
                             r-gplots
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/nearBynding")
    (synopsis "Discern RNA structure proximal to protein binding")
    (description
     "This package provides a pipeline to discern RNA structure at and proximal to the
site of protein binding within regions of the transcriptome defined by the user.
 CLIP protein-binding data can be input as either aligned BAM or peak-called
@code{bedGraph} files.  RNA structure can either be predicted internally from
sequence or users have the option to input their own RNA structure data.  RNA
structure binding profiles can be visually and quantitatively compared across
multiple formats.")
    (license license:artistic2.0)))

(define-public r-ndexr
  (package
    (name "r-ndexr")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ndexr" version))
       (sha256
        (base32 "1sm7j8jqpmvdbrmxys17cg8nyisjy39vi1b16c4kdcvb97b4r2vj"))))
    (properties `((upstream-name . "ndexr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-rcx r-plyr r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/frankkramer-lab/ndexr")
    (synopsis "NDEx R client library")
    (description
     "This package offers an interface to NDEx servers, e.g. the public server at
http://ndexbio.org/.  It can retrieve and save networks via the API. Networks
are offered as RCX object and as igraph representation.")
    (license license:bsd-3)))

(define-public r-ncrnatools
  (package
    (name "r-ncrnatools")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ncRNAtools" version))
       (sha256
        (base32 "13skjmd3v0ysc4hj3lr3f3i07dy6gqswr44mh0289cs0x65s1xis"))))
    (properties `((upstream-name . "ncRNAtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-s4vectors
                             r-iranges
                             r-httr
                             r-ggplot2
                             r-genomicranges))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ncRNAtools")
    (synopsis "An R toolkit for non-coding RNA")
    (description
     "@code{ncRNAtools} provides a set of basic tools for handling and analyzing
non-coding RNAs.  These include tools to access the RNAcentral database and to
predict and visualize the secondary structure of non-coding RNAs.  The package
also provides tools to read, write and interconvert the file formats most
commonly used for representing such secondary structures.")
    (license license:gpl3)))

(define-public r-ncigraph
  (package
    (name "r-ncigraph")
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NCIgraph" version))
       (sha256
        (base32 "12k9r30a36vn7vpzl0vrhsgyjjm64n5x0c7jfmq2f6c0qkxfn6v6"))))
    (properties `((upstream-name . "NCIgraph")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcy3 r-rbgl r-r-oo r-kegggraph r-graph))
    (home-page "https://bioconductor.org/packages/NCIgraph")
    (synopsis "Pathways from the NCI Pathways Database")
    (description
     "This package provides various methods to load the pathways from the NCI Pathways
Database in R graph objects and to re-format them.")
    (license license:gpl3)))

(define-public r-ncgtw
  (package
    (name "r-ncgtw")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ncGTW" version))
       (sha256
        (base32 "1dlfdzxkjy9yihd3acpr4ynj1s4387xihscx5qz0r463fcz6kr1y"))))
    (properties `((upstream-name . "ncGTW")))
    (build-system r-build-system)
    (propagated-inputs (list r-xcms r-rcpp r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ncGTW")
    (synopsis
     "Alignment of LC-MS Profiles by Neighbor-wise Compound-specific Graphical Time Warping with Misalignment Detection")
    (description
     "The purpose of @code{ncGTW} is to help XCMS for LC-MS data alignment.
Currently, @code{ncGTW} can detect the misaligned feature groups by XCMS, and
the user can choose to realign these feature groups by @code{ncGTW} or not.")
    (license license:gpl2)))

(define-public r-nbamseq
  (package
    (name "r-nbamseq")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NBAMSeq" version))
       (sha256
        (base32 "0msk3hpm4169q1ldfmi1kfh1b5q1wah8x2shlcsmgr2987vl4war"))))
    (properties `((upstream-name . "NBAMSeq")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-mgcv
                             r-genefilter
                             r-deseq2
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/reese3928/NBAMSeq")
    (synopsis "Negative Binomial Additive Model for RNA-Seq Data")
    (description
     "High-throughput sequencing experiments followed by differential expression
analysis is a widely used approach to detect genomic biomarkers.  A fundamental
step in differential expression analysis is to model the association between
gene counts and covariates of interest.  NBAMSeq a flexible statistical model
based on the generalized additive model and allows for information sharing
across genes in variance estimation.")
    (license license:gpl2)))

(define-public r-nanotube
  (package
    (name "r-nanotube")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NanoTube" version))
       (sha256
        (base32 "1wdhg25hmgypr5y18x88sgjdf296k5ci0k9fvbjhsi75dsyy00bv"))))
    (properties `((upstream-name . "NanoTube")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape r-limma r-ggplot2 r-fgsea r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/NanoTube")
    (synopsis "An Easy Pipeline for NanoString nCounter Data Analysis")
    (description
     "@code{NanoTube} includes functions for the processing, quality control,
analysis, and visualization of @code{NanoString} @code{nCounter} data.  Analysis
functions include differential analysis and gene set analysis methods, as well
as postprocessing steps to help understand the results.  Additional functions
are included to enable interoperability with other Bioconductor
@code{NanoString} data analysis packages.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-nanotator
  (package
    (name "r-nanotator")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nanotatoR" version))
       (sha256
        (base32 "1nnh4g4b7k6mp922pr52sxlrh6wvfyx7jhckmwrd12l1yjq010pb"))))
    (properties `((upstream-name . "nanotatoR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2r
                             r-xml
                             r-varfrompdb
                             r-tidyverse
                             r-testthat
                             r-stringr
                             r-rlang
                             r-rentrez
                             r-org-hs-eg-db
                             r-openxlsx
                             r-knitr
                             r-httr
                             r-hash
                             r-genomicranges
                             r-dplyr
                             r-curl
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/VilainLab/nanotatoR")
    (synopsis
     "Next generation structural variant annotation and classification")
    (description
     "Whole genome sequencing (WGS) has successfully been used to identify
single-nucleotide variants (SNV), small insertions and deletions (INDELs) and,
more recently, small copy number variants (CNVs).  However, due to utilization
of short reads, it is not well suited for identification of structural variants
(SV).  Optical mapping (OM) from Bionano Genomics, utilizes long fluorescently
labeled megabase size DNA molecules for de novo genome assembly and
identification of SVs with a much higher sensitivity than WGS. Nevertheless,
currently available SV annotation tools have limited number of functions.
@code{NanotatoR} is an R package written to provide a set of annotations for SVs
identified by OM. It uses Database of Genomic Variants (DGV), Database of
Chromosomal Imbalance and Phenotype in Humans Using Ensembl Resources (DECIPHER)
as well as a subset (154 samples) of 1000 Genome Project to calculate the
population frequencies of the SVs (an optional internal cohort SV frequency
calculation is also available). @code{NanotatoR} creates a primary gene list
(PG) from NCBI databases based on proband’s phenotype specific keywords and
compares the list to the set of genes overlapping/near SVs.  The output is given
in an Excel file format, which is subdivided into multiple sheets based on SV
type (e.g., INDELs, Inversions, Translocations).  Users then have a choice to
filter SVs using the provided annotations for de novo (if parental samples are
available) or inherited rare variants.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-nanostringnctools
  (package
    (name "r-nanostringnctools")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NanoStringNCTools" version))
       (sha256
        (base32 "0zrv51vbsdf2m74bd0syd0qka9f4fm0i3479z2w4p1k5ima7az5j"))))
    (properties `((upstream-name . "NanoStringNCTools")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rcolorbrewer
                             r-pheatmap
                             r-iranges
                             r-ggthemes
                             r-ggplot2
                             r-ggiraph
                             r-ggbeeswarm
                             r-biostrings
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/NanoStringNCTools")
    (synopsis "NanoString nCounter Tools")
    (description
     "This package provides tools for @code{NanoString} Technologies @code{nCounter}
Technology.  Provides support for reading RCC files into an @code{ExpressionSet}
derived object.  Also includes methods for QC and normalizaztion of
@code{NanoString} data.")
    (license license:expat)))

(define-public r-nanostringdiff
  (package
    (name "r-nanostringdiff")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NanoStringDiff" version))
       (sha256
        (base32 "08xq7yiga7225ld9xz7wwshb541kr5fclci94w4vzg13hwvs6x6v"))))
    (properties `((upstream-name . "NanoStringDiff")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-matrixstats r-biobase))
    (home-page "https://bioconductor.org/packages/NanoStringDiff")
    (synopsis "Differential Expression Analysis of NanoString nCounter Data")
    (description
     "This Package utilizes a generalized linear model(GLM) of the negative binomial
family to characterize count data and allows for multi-factor design.
@code{NanoStrongDiff} incorporate size factors, calculated from positive
controls and housekeeping controls, and background level, obtained from negative
controls, in the model framework so that all the normalization information
provided by @code{NanoString} @code{nCounter} Analyzer is fully utilized.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-nanomethviz
  (package
    (name "r-nanomethviz")
    (version "2.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NanoMethViz" version))
       (sha256
        (base32 "0rwwb8y99h5rq1fxyqs7j3kc2vfmjxkbiv2wp7ndp373xjij0rcz"))))
    (properties `((upstream-name . "NanoMethViz")))
    (build-system r-build-system)
    (propagated-inputs (list r-zlibbioc
                             r-withr
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-scico
                             r-scales
                             r-s4vectors
                             r-rsamtools
                             r-rlang
                             r-readr
                             r-rcpp
                             r-r-utils
                             r-purrr
                             r-patchwork
                             r-limma
                             r-iranges
                             r-glue
                             r-ggrastr
                             r-ggplot2
                             r-genomicranges
                             r-fs
                             r-forcats
                             r-e1071
                             r-dplyr
                             r-dbscan
                             r-data-table
                             r-cpp11
                             r-cli
                             r-bsseq
                             r-biostrings
                             r-biocsingular
                             r-assertthat
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/shians/NanoMethViz")
    (synopsis "Visualise methlation data from Oxford Nanopore sequencing")
    (description
     "@code{NanoMethViz} is a toolkit for visualising methylation data from Oxford
Nanopore sequencing.  It can be used to explore methylation patterns from reads
derived from Oxford Nanopore direct DNA sequencing with methylation called by
callers including nanopolish, f5c and megalodon.  The plots in this package
allow the visualisation of methylation profiles aggregated over experimental
groups and across classes of genomic features.")
    (license license:asl2.0)))

(define-public r-nadfinder
  (package
    (name "r-nadfinder")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NADfinder" version))
       (sha256
        (base32 "1ig27q6cww3b0gjxd3abj026znry32q4jfmgv2wh1icb2rp1xxxq"))))
    (properties `((upstream-name . "NADfinder")))
    (build-system r-build-system)
    (propagated-inputs (list r-trackviewer
                             r-summarizedexperiment
                             r-signal
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-metap
                             r-limma
                             r-iranges
                             r-genomicranges
                             r-genomicalignments
                             r-genomeinfodb
                             r-empiricalbrownsmethod
                             r-csaw
                             r-corrplot
                             r-biocgenerics
                             r-baseline
                             r-atacseqqc))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/NADfinder")
    (synopsis "Call wide peaks for sequencing data")
    (description
     "Nucleolus is an important structure inside the nucleus in eukaryotic cells.  It
is the site for transcribing @code{rDNA} into @code{rRNA} and for assembling
ribosomes, aka ribosome biogenesis.  In addition, nucleoli are dynamic hubs
through which numerous proteins shuttle and contact specific non-@code{rDNA}
genomic loci.  Deep sequencing analyses of DNA associated with isolated nucleoli
(NAD- seq) have shown that specific loci, termed nucleolus- associated domains
(NADs) form frequent three- dimensional associations with nucleoli.  NAD-seq has
been used to study the biological functions of NAD and the dynamics of NAD
distribution during embryonic stem cell (ESC) differentiation.  Here, we
developed a Bioconductor package NADfinder for bioinformatic analysis of the
NAD-seq data, including baseline correction, smoothing, normalization, peak
calling, and annotation.")
    (license license:gpl2+)))

