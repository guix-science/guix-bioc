(define-module (guix-bioc packages i)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages cran)
  #:use-module (guix-cran packages b)
  #:use-module (gnu packages web)
  #:use-module (guix-cran packages h)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages s)
  #:use-module (guix-cran packages l)
  #:use-module (guix-cran packages r)
  #:use-module (guix-cran packages w)
  #:use-module (guix-cran packages m)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages maths)
  #:use-module (guix-cran packages c)
  #:use-module (gnu packages python)
  #:use-module (guix-bioc packages z)
  #:use-module (guix-bioc packages y)
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
  #:use-module (guix-bioc packages n)
  #:use-module (guix-bioc packages m)
  #:use-module (guix-bioc packages l)
  #:use-module (guix-bioc packages k)
  #:use-module (guix-bioc packages j)
  #:use-module (guix-bioc packages h)
  #:use-module (guix-bioc packages g)
  #:use-module (guix-bioc packages f)
  #:use-module (guix-bioc packages e)
  #:use-module (guix-bioc packages d)
  #:use-module (guix-bioc packages c)
  #:use-module (guix-bioc packages b)
  #:use-module (guix-bioc packages a))

(define-public r-iyer517
  (package
    (name "r-iyer517")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Iyer517" version
                              'experiment))
       (sha256
        (base32 "0b9j6bc0dfx5mqyd7z7bzmfp6s59cy4dqr1pxzjy05yyfznbc72p"))))
    (properties `((upstream-name . "Iyer517")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/Iyer517")
    (synopsis "exprSets for Iyer, Eisen et all 1999 Science paper")
    (description "representation of public Iyer data from
http://genome-www.stanford.edu/serum/clusters.html")
    (license license:artistic2.0)))

(define-public r-iwtomics
  (package
    (name "r-iwtomics")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IWTomics" version))
       (sha256
        (base32 "0ksmpa6f5zlgdhma1vxsfd64g7jhisffg5sbnz2xhf7faz14gc08"))))
    (properties `((upstream-name . "IWTomics")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-kernsmooth
                             r-iranges
                             r-gtable
                             r-genomicranges
                             r-fda))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/IWTomics")
    (synopsis "Interval-Wise Testing for Omics Data")
    (description
     "Implementation of the Interval-Wise Testing (IWT) for omics data.  This
inferential procedure tests for differences in \"Omics\" data between two groups
of genomic regions (or between a group of genomic regions and a reference center
of symmetry), and does not require fixing location and scale at the outset.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-ivygapse
  (package
    (name "r-ivygapse")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ivygapSE" version))
       (sha256
        (base32 "00i91a1r3xk7czcv5f7kxppgzjsvalxmzwyqj6mg5m3z4l77m17n"))))
    (properties `((upstream-name . "ivygapSE")))
    (build-system r-build-system)
    (propagated-inputs (list r-upsetr
                             r-survminer
                             r-survival
                             r-summarizedexperiment
                             r-shiny
                             r-s4vectors
                             r-plotly
                             r-hwriter
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ivygapSE")
    (synopsis "SummarizedExperiment for Ivy-GAP data")
    (description
     "Define a @code{SummarizedExperiment} and exploratory app for Ivy-GAP
glioblastoma image, expression, and clinical data.")
    (license license:artistic2.0)))

(define-public r-ivas
  (package
    (name "r-ivas")
    (version "2.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IVAS" version))
       (sha256
        (base32 "15l0qga9a4q79y1r3pwcv3c0m0qpyjay3fvv7b4zwx7hvmkjfy1b"))))
    (properties `((upstream-name . "IVAS")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-matrix
                             r-lme4
                             r-iranges
                             r-ggplot2
                             r-ggfortify
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-foreach
                             r-doparallel
                             r-biocparallel
                             r-biocgenerics
                             r-biobase
                             r-annotationdbi))
    (home-page "https://bioconductor.org/packages/IVAS")
    (synopsis
     "Identification of genetic Variants affecting Alternative Splicing")
    (description
     "Identification of genetic variants affecting alternative splicing.")
    (license license:gpl2)))

(define-public r-iterativebmasurv
  (package
    (name "r-iterativebmasurv")
    (version "1.62.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iterativeBMAsurv" version))
       (sha256
        (base32 "1g0bg1cbk95pg1zf1xqk5dxii3cwfkwzx5ys1mzzab6b9i740las"))))
    (properties `((upstream-name . "iterativeBMAsurv")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-leaps r-bma))
    (home-page "http://expression.washington.edu/ibmasurv/protected")
    (synopsis
     "The Iterative Bayesian Model Averaging (BMA) Algorithm For Survival Analysis")
    (description
     "The iterative Bayesian Model Averaging (BMA) algorithm for survival analysis is
a variable selection method for applying survival analysis to microarray data.")
    (license license:gpl2+)))

(define-public r-iterativebma
  (package
    (name "r-iterativebma")
    (version "1.62.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iterativeBMA" version))
       (sha256
        (base32 "1h2nz7pfagd4ncm64b7zfqawp3gd88kvz8920wmk5s732490x522"))))
    (properties `((upstream-name . "iterativeBMA")))
    (build-system r-build-system)
    (propagated-inputs (list r-leaps r-bma r-biobase))
    (home-page "http://faculty.washington.edu/kayee/research.html")
    (synopsis "The Iterative Bayesian Model Averaging (BMA) algorithm")
    (description
     "The iterative Bayesian Model Averaging (BMA) algorithm is a variable selection
and classification algorithm with an application of classifying 2-class
microarray samples, as described in Yeung, Bumgarner and Raftery (Bioinformatics
2005, 21: 2394-2402).")
    (license license:gpl2+)))

(define-public r-isomirs
  (package
    (name "r-isomirs")
    (version "1.32.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "isomiRs" version))
       (sha256
        (base32 "020ij0byr9pnzxp083yyjscn3iwv7yq7v2zsdalqs4bzn6z7mzq8"))))
    (properties `((upstream-name . "isomiRs")))
    (build-system r-build-system)
    (arguments
     (list
      #:modules '((guix build r-build-system)
                  (guix build minify-build-system)
                  (guix build utils)
                  (ice-9 match))
      #:imported-modules `(,@%r-build-system-modules (guix build
                                                      minify-build-system))
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'process-javascript
                    (lambda* (#:key inputs #:allow-other-keys)
                      (with-directory-excursion "inst/"
                        (for-each (match-lambda
                                    ((source . target) (minify source
                                                               #:target target)))
                                  '())))))))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-s4vectors
                             r-rlang
                             r-reshape
                             r-readr
                             r-rcolorbrewer
                             r-limma
                             r-iranges
                             r-gtools
                             r-gridextra
                             r-gplots
                             r-ggplot2
                             r-ggally
                             r-genomicranges
                             r-dplyr
                             r-deseq2
                             r-degreport
                             r-cowplot
                             r-cluster
                             r-broom
                             r-biocgenerics
                             r-biobase
                             r-annotationdbi))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://bioconductor.org/packages/isomiRs")
    (synopsis "Analyze isomiRs and miRNAs from small RNA-seq")
    (description
     "Characterization of @code{miRNAs} and @code{isomiRs}, clustering and
differential expression.")
    (license license:expat)))

(define-public r-isolde
  (package
    (name "r-isolde")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ISoLDE" version))
       (sha256
        (base32 "1yq7h8jjapjr7j9f2p4ikkvxh46vz4y7pdwddsi4dx7xkfjhzxmm"))))
    (properties `((upstream-name . "ISoLDE")))
    (build-system r-build-system)
    (home-page "www.r-project.org")
    (synopsis "Integrative Statistics of alleLe Dependent Expression")
    (description
     "This package provides I@code{SoLDE} a new method for identifying imprinted
genes.  This method is dedicated to data arising from RNA sequencing
technologies.  The I@code{SoLDE} package implements original statistical
methodology described in the publication below.")
    (license license:gpl2+)))

(define-public r-isocorrectorgui
  (package
    (name "r-isocorrectorgui")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IsoCorrectoRGUI" version))
       (sha256
        (base32 "1zwnp50sargc3991v22sj7hg01c1ddqi487xmvj5in7yjccys2dm"))))
    (properties `((upstream-name . "IsoCorrectoRGUI")))
    (build-system r-build-system)
    (propagated-inputs (list r-tcltk2 r-readxl r-isocorrector))
    (native-inputs (list r-knitr))
    (home-page "https://genomics.ur.de/files/IsoCorrectoRGUI")
    (synopsis "Graphical User Interface for IsoCorrectoR")
    (description
     "@code{IsoCorrectoRGUI} is a Graphical User Interface for the @code{IsoCorrectoR}
package. @code{IsoCorrectoR} performs the correction of mass spectrometry data
from stable isotope labeling/tracing metabolomics experiments with regard to
natural isotope abundance and tracer impurity.  Data from both MS and MS/MS
measurements can be corrected (with any tracer isotope: 13C, 15N, 18O...), as
well as high resolution MS data from multiple-tracer experiments (e.g. 13C and
15N used simultaneously).")
    (license license:gpl3)))

(define-public r-isocorrector
  (package
    (name "r-isocorrector")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IsoCorrectoR" version))
       (sha256
        (base32 "19h5wndzj3sgvhb7blx07pjammh05kwp5vwjv0drvlj829pqhkia"))))
    (properties `((upstream-name . "IsoCorrectoR")))
    (build-system r-build-system)
    (propagated-inputs (list r-writexls
                             r-tibble
                             r-stringr
                             r-readxl
                             r-readr
                             r-quadprog
                             r-pracma
                             r-magrittr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://genomics.ur.de/files/IsoCorrectoR/")
    (synopsis
     "Correction for natural isotope abundance and tracer purity in MS and MS/MS data from stable isotope labeling experiments")
    (description
     "@code{IsoCorrectoR} performs the correction of mass spectrometry data from
stable isotope labeling/tracing metabolomics experiments with regard to natural
isotope abundance and tracer impurity.  Data from both MS and MS/MS measurements
can be corrected (with any tracer isotope: 13C, 15N, 18O...), as well as
ultra-high resolution MS data from multiple-tracer experiments (e.g. 13C and 15N
used simultaneously).  See the Bioconductor package @code{IsoCorrectoRGUI} for a
graphical user interface to @code{IsoCorrectoR}.  NOTE: With R version 4.0.0,
writing correction results to Excel files may currently not work on Windows.
However, writing results to csv works as before.")
    (license license:gpl3)))

(define-public r-isobayes
  (package
    (name "r-isobayes")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IsoBayes" version))
       (sha256
        (base32 "19vga38f9srbsb6vglb0ni33cfrzrn5z94d0v4apnki4r6plp2k2"))))
    (properties `((upstream-name . "IsoBayes")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-rcpparmadillo
                             r-rcpp
                             r-iterators
                             r-hdinterval
                             r-glue
                             r-ggplot2
                             r-foreach
                             r-dorng
                             r-doparallel
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/SimoneTiberi/IsoBayes")
    (synopsis
     "IsoBayes: Single Isoform protein inference Method via Bayesian Analyses")
    (description
     "@code{IsoBayes} is a Bayesian method to perform inference on single protein
isoforms.  Our approach infers the presence/absence of protein isoforms, and
also estimates their abundance; additionally, it provides a measure of the
uncertainty of these estimates, via: i) the posterior probability that a protein
isoform is present in the sample; ii) a posterior credible interval of its
abundance. @code{IsoBayes} inputs liquid cromatography mass spectrometry (MS)
data, and can work with both PSM counts, and intensities.  When available,
trascript isoform abundances (i.e., TPMs) are also incorporated: TPMs are used
to formulate an informative prior for the respective protein isoform relative
abundance.  We further identify isoforms where the relative abundance of
proteins and transcripts significantly differ.  We use a two-layer latent
variable approach to model two sources of uncertainty typical of MS data: i)
peptides may be erroneously detected (even when absent); ii) many peptides are
compatible with multiple protein isoforms.  In the first layer, we sample the
presence/absence of each peptide based on its estimated probability of being
mistakenly detected, also known as PEP (i.e., posterior error probability).  In
the second layer, for peptides that were estimated as being present, we allocate
their abundance across the protein isoforms they map to.  These two steps allow
us to recover the presence and abundance of each protein isoform.")
    (license license:gpl3)))

(define-public r-isobar
  (package
    (name "r-isobar")
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "isobar" version))
       (sha256
        (base32 "0vqiw5bwk4mivj8b1a96qglqsmsfi4p6vd40x0rxafifb46i83h3"))))
    (properties `((upstream-name . "isobar")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-ggplot2 r-distr r-biomart r-biobase))
    (home-page "https://github.com/fbreitwieser/isobar")
    (synopsis
     "Analysis and quantitation of isobarically tagged MSMS proteomics data")
    (description
     "isobar provides methods for preprocessing, normalization, and report generation
for the analysis of quantitative mass spectrometry proteomics data labeled with
isobaric tags, such as @code{iTRAQ} and TMT. Features modules for integrating
and validating PTM-centric datasets (isobar-PTM).  More information on
http://www.ms-isobar.org.")
    (license license:lgpl2.0)))

(define-public r-islet
  (package
    (name "r-islet")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ISLET" version))
       (sha256
        (base32 "0vhpxr0civdhcxiy39aycir8a68vgrydv3nx1p9rn4hhpw7dq7gi"))))
    (properties `((upstream-name . "ISLET")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-purrr
                             r-nnls
                             r-matrix
                             r-lme4
                             r-biocparallel
                             r-biocgenerics
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ISLET")
    (synopsis "Individual-Specific ceLl typE referencing Tool")
    (description
     "ISLET is a method to conduct signal deconvolution for general -omics data.  It
can estimate the individual-specific and cell-type-specific reference panels,
when there are multiple samples observed from each subject.  It takes the input
of the observed mixture data (feature by sample matrix), and the cell type
mixture proportions (sample by cell type matrix), and the sample-to-subject
information.  It can solve for the reference panel on the individual-basis and
conduct test to identify cell-type-specific differential expression
(@code{csDE}) genes.  It also improves estimated cell type mixture proportions
by integrating personalized reference panels.")
    (license license:gpl2)))

(define-public r-iseq
  (package
    (name "r-iseq")
    (version "1.56.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iSeq" version))
       (sha256
        (base32 "1jjp852ajk37m9rp1j1c3jlng450az54dx8ayl0whjcsr2ljw7hn"))))
    (properties `((upstream-name . "iSeq")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/iSeq")
    (synopsis
     "Bayesian Hierarchical Modeling of ChIP-seq Data Through Hidden Ising Models")
    (description
     "Bayesian hidden Ising models are implemented to identify IP-enriched genomic
regions from @code{ChIP-seq} data.  They can be used to analyze @code{ChIP-seq}
data with and without controls and replicates.")
    (license license:gpl2+)))

(define-public r-iseeu
  (package
    (name "r-iseeu")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iSEEu" version))
       (sha256
        (base32 "10l539zk0xha45h58j5y9sl0fmpr7vxy30n6xa54lbs3fs324jyv"))))
    (properties `((upstream-name . "iSEEu")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-shinyace
                             r-shiny
                             r-s4vectors
                             r-iseehex
                             r-isee
                             r-iranges
                             r-ggplot2
                             r-dt
                             r-colourpicker))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/iSEE/iSEEu")
    (synopsis "iSEE Universe")
    (description
     "@code{iSEEu} (the @code{iSEE} universe) contains diverse functionality to extend
the usage of the @code{iSEE} package, including additional classes for the
panels, or modes allowing easy configuration of @code{iSEE} applications.")
    (license license:expat)))

(define-public r-iseepathways
  (package
    (name "r-iseepathways")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iSEEpathways" version))
       (sha256
        (base32 "168abrcfrrcnaz50lgkfqvap30xq63fjp61v365ar5zsh7qvys41"))))
    (properties `((upstream-name . "iSEEpathways")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-shinywidgets
                             r-shiny
                             r-s4vectors
                             r-isee
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/iSEE/iSEEpathways")
    (synopsis "iSEE extension for panels related to pathway analysis")
    (description
     "This package contains diverse functionality to extend the usage of the
@code{iSEE} package, including additional classes for the panels or modes
facilitating the analysis of pathway analysis results.  This package does not
perform pathway analysis.  Instead, it provides methods to embed precomputed
pathway analysis results in a @code{SummarizedExperiment} object, in a manner
that is compatible with interactive visualisation in @code{iSEE} applications.")
    (license license:artistic2.0)))

(define-public r-iseeindex
  (package
    (name "r-iseeindex")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iSEEindex" version))
       (sha256
        (base32 "0v8fww0rbldg6hdqyg9cfrsisahpwmc7q6pk156gz497av8gz250"))))
    (properties `((upstream-name . "iSEEindex")))
    (build-system r-build-system)
    (propagated-inputs (list r-urltools
                             r-summarizedexperiment
                             r-stringr
                             r-singlecellexperiment
                             r-shinyjs
                             r-shinydashboard
                             r-shiny
                             r-rintrojs
                             r-paws-storage
                             r-isee
                             r-dt
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/iSEE/iSEEindex")
    (synopsis
     "iSEE extension for a landing page to a custom collection of data sets")
    (description
     "This package provides an interface to any collection of data sets within a
single @code{iSEE} web-application.  The main functionality of this package is
to define a custom landing page allowing app maintainers to list a custom
collection of data sets that users can selected from and directly load objects
into an @code{iSEE} web-application.")
    (license license:artistic2.0)))

(define-public r-iseehub
  (package
    (name "r-iseehub")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iSEEhub" version))
       (sha256
        (base32 "0pwplhddy3nyszzbkjrv79kypc50pxr7jckfjdd0qy10v16314id"))))
    (properties `((upstream-name . "iSEEhub")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-shinyjs
                             r-shinydashboard
                             r-shiny
                             r-s4vectors
                             r-rintrojs
                             r-isee
                             r-experimenthub
                             r-dt
                             r-biocmanager
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/iSEE/iSEEhub")
    (synopsis "iSEE for the Bioconductor ExperimentHub")
    (description
     "This package defines a custom landing page for an @code{iSEE} app interfacing
with the Bioconductor @code{ExperimentHub}.  The landing page allows users to
browse the @code{ExperimentHub}, select a data set, download and cache it, and
import it directly into a Bioconductor @code{iSEE} app.")
    (license license:artistic2.0)))

(define-public r-iseehex
  (package
    (name "r-iseehex")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iSEEhex" version))
       (sha256
        (base32 "0lwifv4bpb8hp0y5d2fphzclf3c223x015bc7jj92kmpzl0hg41h"))))
    (properties `((upstream-name . "iSEEhex")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-shiny r-isee r-hexbin
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/iSEE/iSEEhex")
    (synopsis "iSEE extension for summarising data points in hexagonal bins")
    (description
     "This package provides panels summarising data points in hexagonal bins for
`@code{iSEE`}.  It is part of `@code{iSEEu`}, the @code{iSEE} universe of panels
that extend the `@code{iSEE`} package.")
    (license license:artistic2.0)))

(define-public r-iseefier
  (package
    (name "r-iseefier")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iSEEfier" version))
       (sha256
        (base32 "0qg64qp2b3c5l11xa1hb8whvshv9xdi27da2j447jxa81r42xgyh"))))
    (properties `((upstream-name . "iSEEfier")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-rlang
                             r-iseeu
                             r-isee
                             r-igraph
                             r-ggplot2
                             r-biocbaseutils))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/NajlaAbassi/iSEEfier")
    (synopsis
     "Streamlining the creation of initial states for starting an iSEE instance")
    (description
     "@code{iSEEfier} provides a set of functionality to quickly and intuitively
create, inspect, and combine initial configuration objects.  These can be
conveniently passed in a straightforward manner to the function call to launch
@code{iSEE}() with the specified configuration.  This package currently works
seamlessly with the sets of panels provided by the @code{iSEE} and @code{iSEEu}
packages, but can be extended to accommodate the usage of any custom panel (e.g.
from @code{iSEEde}, @code{iSEEpathways}, or any panel developed independently by
the user).")
    (license license:expat)))

(define-public r-iseede
  (package
    (name "r-iseede")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iSEEde" version))
       (sha256
        (base32 "1fm7nav15kh2sn8lcgnywacsnv5z9mirv3vjvkk298141gdvnyiv"))))
    (properties `((upstream-name . "iSEEde")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-shiny
                             r-s4vectors
                             r-isee
                             r-edger
                             r-deseq2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/iSEE/iSEEde")
    (synopsis
     "iSEE extension for panels related to differential expression analysis")
    (description
     "This package contains diverse functionality to extend the usage of the
@code{iSEE} package, including additional classes for the panels or modes
facilitating the analysis of differential expression results.  This package does
not perform differential expression.  Instead, it provides methods to embed
precomputed differential expression results in a @code{SummarizedExperiment}
object, in a manner that is compatible with interactive visualisation in
@code{iSEE} applications.")
    (license license:artistic2.0)))

(define-public r-isee
  (package
    (name "r-isee")
    (version "2.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iSEE" version))
       (sha256
        (base32 "0rkk8n0hwmbqlnmjcdcljbsqqmbgw4x5cyjl5fndvzjs6xls4fal"))))
    (properties `((upstream-name . "iSEE")))
    (build-system r-build-system)
    (arguments
     (list
      #:modules '((guix build r-build-system)
                  (guix build minify-build-system)
                  (guix build utils)
                  (ice-9 match))
      #:imported-modules `(,@%r-build-system-modules (guix build
                                                      minify-build-system))
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'process-javascript
                    (lambda* (#:key inputs #:allow-other-keys)
                      (with-directory-excursion "inst/"
                        (for-each (match-lambda
                                    ((source . target) (minify source
                                                               #:target target)))
                                  '())))))))
    (propagated-inputs (list r-viridislite
                             r-vipor
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-shinywidgets
                             r-shinyjs
                             r-shinydashboard
                             r-shinyace
                             r-shiny
                             r-s4vectors
                             r-rintrojs
                             r-mgcv
                             r-listviewer
                             r-igraph
                             r-ggrepel
                             r-ggplot2
                             r-dt
                             r-complexheatmap
                             r-colourpicker
                             r-circlize
                             r-biocgenerics))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/iSEE/iSEE")
    (synopsis "Interactive SummarizedExperiment Explorer")
    (description
     "Create an interactive Shiny-based graphical user interface for exploring data
stored in @code{SummarizedExperiment} objects, including row- and column-level
metadata.  The interface supports transmission of selections between plots and
tables, code tracking, interactive tours, interactive or programmatic
initialization, preservation of app state, and extensibility to new panel types
via S4 classes.  Special attention is given to single-cell data in a
@code{SingleCellExperiment} object with visualization of dimensionality
reduction results.")
    (license license:expat)))

(define-public r-isanalytics
  (package
    (name "r-isanalytics")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ISAnalytics" version))
       (sha256
        (base32 "05khils483a1d64ikg4j5vl3rcwsjgik04b75a6rr3crkdba7fl4"))))
    (properties `((upstream-name . "ISAnalytics")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-shinywidgets
                             r-shiny
                             r-rlang
                             r-readxl
                             r-readr
                             r-purrr
                             r-lubridate
                             r-lifecycle
                             r-glue
                             r-ggrepel
                             r-ggplot2
                             r-fs
                             r-forcats
                             r-dt
                             r-dplyr
                             r-datamods
                             r-bslib))
    (native-inputs (list r-knitr))
    (home-page "https://calabrialab.github.io/ISAnalytics")
    (synopsis
     "Analyze gene therapy vector insertion sites data identified from genomics next generation sequencing reads for clonal tracking studies")
    (description
     "In gene therapy, stem cells are modified using viral vectors to deliver the
therapeutic transgene and replace functional properties since the genetic
modification is stable and inherited in all cell progeny.  The retrieval and
mapping of the sequences flanking the virus-host DNA junctions allows the
identification of insertion sites (IS), essential for monitoring the evolution
of genetically modified cells in vivo.  A comprehensive toolkit for the analysis
of IS is required to foster clonal trackign studies and supporting the
assessment of safety and long term efficacy in vivo.  This package is aimed at
(1) supporting automation of IS workflow, (2) performing base and advance
analysis for IS tracking (clonal abundance, clonal expansions and statistics for
insertional mutagenesis, etc.), (3) providing basic biology insights of
transduced stem cells in vivo.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-ipo
  (package
    (name "r-ipo")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IPO" version))
       (sha256
        (base32 "0sh4ajra67j2v359022s4cm2vfc0i9wjagcjv8jh1jf5jq70dyfh"))))
    (properties `((upstream-name . "IPO")))
    (build-system r-build-system)
    (propagated-inputs (list r-xcms r-rsm r-camera r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rietho/IPO")
    (synopsis "Automated Optimization of XCMS Data Processing parameters")
    (description
     "The outcome of XCMS data processing strongly depends on the parameter settings.
IPO (`Isotopologue Parameter Optimization`) is a parameter optimization tool
that is applicable for different kinds of samples and liquid chromatography
coupled to high resolution mass spectrometry devices, fast and free of labeling
steps.  IPO uses natural, stable 13C isotopes to calculate a peak picking score.
 Retention time correction is optimized by minimizing the relative retention
time differences within features and grouping parameters are optimized by
maximizing the number of features showing exactly one peak from each injection
of a pooled sample.  The different parameter settings are achieved by design of
experiment.  The resulting scores are evaluated using response surface models.")
    (license (license:fsdg-compatible "GPL (>= 2) + file LICENSE"))))

(define-public r-ipddb
  (package
    (name "r-ipddb")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ipdDb" version))
       (sha256
        (base32 "10pk87w4yd6kgsbg79ci6csmk3izpxc8kwhn5f0jywmjdci7k3nq"))))
    (properties `((upstream-name . "ipdDb")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsqlite
                             r-iranges
                             r-genomicranges
                             r-dbi
                             r-biostrings
                             r-assertthat
                             r-annotationhub
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DKMS-LSL/ipdDb")
    (synopsis "IPD IMGT/HLA and IPD KIR database for Homo sapiens")
    (description
     "All alleles from the IPD IMGT/HLA <https://www.ebi.ac.uk/ipd/imgt/hla/> and IPD
KIR <https://www.ebi.ac.uk/ipd/kir/> database for Homo sapiens.  Reference:
Robinson J, Maccari G, Marsh SGE, Walter L, Blokhuis J, Bimber B, Parham P, De
Groot NG, Bontrop RE, Guethlein LA, and Hammond JA KIR Nomenclature in non-human
species Immunogenetics (2018), in preparation.")
    (license license:artistic2.0)))

(define-public r-ipath
  (package
    (name "r-ipath")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iPath" version))
       (sha256
        (base32 "0dh57yif0wcapr54ba9ln45s9s9m52rzfgapz429i40dqbbc518v"))))
    (properties `((upstream-name . "iPath")))
    (build-system r-build-system)
    (propagated-inputs (list r-survminer
                             r-survival
                             r-rcpparmadillo
                             r-rcpp
                             r-mclust
                             r-matrixstats
                             r-ggpubr
                             r-ggplot2
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/iPath")
    (synopsis
     "iPath pipeline for detecting perturbed pathways at individual level")
    (description
     "@code{iPath} is the Bioconductor package used for calculating personalized
pathway score and test the association with survival outcomes.  Abundant
single-gene biomarkers have been identified and used in the clinics.  However,
hundreds of oncogenes or tumor-suppressor genes are involved during the process
of tumorigenesis.  We believe individual-level expression patterns of
pre-defined pathways or gene sets are better biomarkers than single genes.  In
this study, we devised a computational method named @code{iPath} to identify
prognostic biomarker pathways, one sample at a time.  To test its utility, we
conducted a pan-cancer analysis across 14 cancer types from The Cancer Genome
Atlas and demonstrated that @code{iPath} is capable of identifying highly
predictive biomarkers for clinical outcomes, including overall survival, tumor
subtypes, and tumor stage classifications.  We found that pathway-based
biomarkers are more robust and effective than single genes.")
    (license license:gpl2)))

(define-public r-ipac
  (package
    (name "r-ipac")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iPAC" version))
       (sha256
        (base32 "083lnwvc9b0w0gv21z2pcf4xvplz9alp6whv7ls1h8bgill4vc2a"))))
    (properties `((upstream-name . "iPAC")))
    (build-system r-build-system)
    (propagated-inputs (list r-scatterplot3d r-pwalign r-multtest r-gdata
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/iPAC")
    (synopsis "Identification of Protein Amino acid Clustering")
    (description
     "@code{iPAC} is a novel tool to identify somatic amino acid mutation clustering
within proteins while taking into account protein structure.")
    (license license:gpl2)))

(define-public r-intramirexplorer
  (package
    (name "r-intramirexplorer")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IntramiRExploreR" version))
       (sha256
        (base32 "19q6znbmqj4i6k60c5f05y7s7rp9h3ra3081ra3fc5p2b74gb6cv"))))
    (properties `((upstream-name . "IntramiRExploreR")))
    (build-system r-build-system)
    (propagated-inputs (list r-knitr r-igraph r-fgnet))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/VilainLab/IntramiRExploreR")
    (synopsis "Predicting Targets for Drosophila Intragenic miRNAs")
    (description
     "Intra-@code{miR-ExploreR}, an integrative @code{miRNA} target prediction
bioinformatics tool, identifies targets combining expression and biophysical
interactions of a given @code{microRNA} (@code{miR}).  Using the tool, we have
identified targets for 92 intragenic @code{miRs} in D. melanogaster, using
available microarray expression data, from Affymetrix 1 and Affymetrix2
microarray array platforms, providing a global perspective of intragenic
@code{miR} targets in Drosophila.  Predicted targets are grouped according to
biological functions using the DAVID Gene Ontology tool and are ranked based on
a biologically relevant scoring system, enabling the user to identify
functionally relevant targets for a given @code{miR}.")
    (license license:gpl2)))

(define-public r-interminer
  (package
    (name "r-interminer")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "InterMineR" version))
       (sha256
        (base32 "0isw4rg89139xmrcfb9r7jc3z8jj1my4radhinah0vad2cwb36l0"))))
    (properties `((upstream-name . "InterMineR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-xml
                             r-summarizedexperiment
                             r-sqldf
                             r-s4vectors
                             r-rjsonio
                             r-rcurl
                             r-iranges
                             r-igraph
                             r-httr
                             r-genomicranges
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/InterMineR")
    (synopsis "R Interface with InterMine-Powered Databases")
    (description
     "Databases based on the @code{InterMine} platform such as @code{FlyMine},
@code{modMine} (@code{modENCODE}), @code{RatMine}, @code{YeastMine},
@code{HumanMine} and @code{TargetMine} are integrated databases of genomic,
expression and protein data for various organisms.  Integrating data makes it
possible to run sophisticated data mining queries that span domains of
biological knowledge.  This R package provides interfaces with these databases
through webservices.  It makes most from the correspondence of the data frame
object in R and the table object in databases, while hiding the details of data
exchange through XML or JSON.")
    (license license:lgpl2.0+)))

(define-public r-interest
  (package
    (name "r-interest")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IntEREst" version))
       (sha256
        (base32 "0i6q422vhf94ka0v69hs5irg506wb467rwnnn12xvsfyq54ak4dm"))))
    (properties `((upstream-name . "IntEREst")))
    (build-system r-build-system)
    (propagated-inputs (list r-txdbmaker
                             r-summarizedexperiment
                             r-seqlogo
                             r-seqinr
                             r-s4vectors
                             r-rsamtools
                             r-rmysql
                             r-iranges
                             r-genomicranges
                             r-genomicfiles
                             r-genomicfeatures
                             r-genomicalignments
                             r-edger
                             r-dexseq
                             r-deseq2
                             r-dbi
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/IntEREst")
    (synopsis "Intron-Exon Retention Estimator")
    (description
     "This package performs Intron-Exon Retention analysis on RNA-seq data (.bam
files).")
    (license license:gpl2)))

(define-public r-intercellar
  (package
    (name "r-intercellar")
    (version "2.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "InterCellar" version))
       (sha256
        (base32 "020z08v199psgcl4z3kbwl1zgp10iwn5n60c4bq555fz6nbjb56n"))))
    (properties `((upstream-name . "InterCellar")))
    (build-system r-build-system)
    (propagated-inputs (list r-wordcloud2
                             r-visnetwork
                             r-umap
                             r-tidyr
                             r-tibble
                             r-signal
                             r-shinyfiles
                             r-shinyfeedback
                             r-shinydashboard
                             r-shinycssloaders
                             r-shinyalert
                             r-shiny
                             r-scales
                             r-rlang
                             r-readxl
                             r-plyr
                             r-plotly
                             r-igraph
                             r-htmlwidgets
                             r-htmltools
                             r-golem
                             r-ggplot2
                             r-fs
                             r-fmsb
                             r-factoextra
                             r-dt
                             r-dplyr
                             r-dendextend
                             r-data-table
                             r-config
                             r-complexheatmap
                             r-colourpicker
                             r-colorspace
                             r-circlize
                             r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/martaint/InterCellar")
    (synopsis
     "InterCellar: an R-Shiny app for interactive analysis and exploration of cell-cell communication in single-cell transcriptomics")
    (description
     "@code{InterCellar} is implemented as an R/Bioconductor Package containing a
Shiny app that allows users to interactively analyze cell-cell communication
from @code{scRNA-seq} data.  Starting from precomputed ligand-receptor
interactions, @code{InterCellar} provides filtering options, annotations and
multiple visualizations to explore clusters, genes and functions.  Finally,
based on functional annotation from Gene Ontology and pathway databases,
@code{InterCellar} implements data-driven analyses to investigate cell-cell
communication in one or multiple conditions.")
    (license license:expat)))

(define-public r-interactivecomplexheatmap
  (package
    (name "r-interactivecomplexheatmap")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "InteractiveComplexHeatmap" version))
       (sha256
        (base32 "0sfhr3f7fdw9zgw2wn7dhk1zwmhn3k3iy8xa0j9dv7bpa2mcvw1b"))))
    (properties `((upstream-name . "InteractiveComplexHeatmap")))
    (build-system r-build-system)
    (arguments
     (list
      #:modules '((guix build r-build-system)
                  (guix build minify-build-system)
                  (guix build utils)
                  (ice-9 match))
      #:imported-modules `(,@%r-build-system-modules (guix build
                                                      minify-build-system))
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'process-javascript
                    (lambda* (#:key inputs #:allow-other-keys)
                      (with-directory-excursion "inst/"
                        (for-each (match-lambda
                                    ((source . target) (minify source
                                                               #:target target)))
                                  '())))))))
    (propagated-inputs (list r-svglite
                             r-shiny
                             r-s4vectors
                             r-rcolorbrewer
                             r-kableextra
                             r-jsonlite
                             r-iranges
                             r-htmltools
                             r-getoptlong
                             r-fontawesome
                             r-digest
                             r-complexheatmap
                             r-clisymbols))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/jokergoo/InteractiveComplexHeatmap")
    (synopsis "Make Interactive Complex Heatmaps")
    (description
     "This package can easily make heatmaps which are produced by the
@code{ComplexHeatmap} package into interactive applications.  It provides two
types of interactivities: 1.  on the interactive graphics device, and 2.  on a
Shiny app.  It also provides functions for integrating the interactive heatmap
widgets for more complex Shiny app development.")
    (license license:expat)))

(define-public r-interaccircos
  (package
    (name "r-interaccircos")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "interacCircos" version))
       (sha256
        (base32 "084136v9ghzgqgqv3k523416q2wl4qb6ix862fagjgwmkzdmr5s8"))))
    (properties `((upstream-name . "interacCircos")))
    (build-system r-build-system)
    (arguments
     (list
      #:modules '((guix build r-build-system)
                  (guix build minify-build-system)
                  (guix build utils)
                  (ice-9 match))
      #:imported-modules `(,@%r-build-system-modules (guix build
                                                      minify-build-system))
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'process-javascript
                    (lambda* (#:key inputs #:allow-other-keys)
                      (with-directory-excursion "inst/"
                        (for-each (match-lambda
                                    ((source . target) (minify source
                                                               #:target target)))
                                  '())))))))
    (propagated-inputs (list r-rcolorbrewer r-plyr r-htmlwidgets))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://bioconductor.org/packages/interacCircos")
    (synopsis "The Generation of Interactive Circos Plot")
    (description
     "Implement in an efficient approach to display the genomic data, relationship,
information in an interactive circular genome(Circos) plot. @code{interacCircos}
are inspired by @code{circosJS}', @code{BioCircos.js} and NG-Circos and we
integrate the modules of @code{circosJS}', @code{BioCircos.js} and NG-Circos
into this R package, based on htmlwidgets framework.")
    (license license:gpl3)))

(define-public r-intansv
  (package
    (name "r-intansv")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "intansv" version))
       (sha256
        (base32 "1njvcyk4gdk2bxvs6zbz7dypcbmfismxpv8afxn02i2lz3ykdyzd"))))
    (properties `((upstream-name . "intansv")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-iranges r-ggbio r-genomicranges
                             r-biocgenerics))
    (home-page "https://bioconductor.org/packages/intansv")
    (synopsis "Integrative analysis of structural variations")
    (description
     "This package provides efficient tools to read and integrate structural
variations predicted by popular softwares.  Annotation and visulation of
structural variations are also implemented in the package.")
    (license license:expat)))

(define-public r-intad
  (package
    (name "r-intad")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "InTAD" version))
       (sha256
        (base32 "16npavms8qxccldpik27qbsv3w0drcjr132nz2ky2cvi01bcp4l2"))))
    (properties `((upstream-name . "InTAD")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-rtracklayer
                             r-qvalue
                             r-multiassayexperiment
                             r-mclust
                             r-iranges
                             r-ggpubr
                             r-ggplot2
                             r-genomicranges
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/InTAD")
    (synopsis
     "Search for correlation between epigenetic signals and gene expression in TADs")
    (description
     "The package is focused on the detection of correlation between expressed genes
and selected epigenomic signals (i.e.  enhancers obtained from @code{ChIP-seq}
data) either within topologically associated domains (TADs) or between chromatin
contact loop anchors.  Various parameters can be controlled to investigate the
influence of external factors and visualization plots are available for each
analysis step.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-intact
  (package
    (name "r-intact")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "INTACT" version))
       (sha256
        (base32 "1r1v8cvms0dyjf0f5f9v6qp7hz0rfb2yfbckvvrkq26yjwfbmlaa"))))
    (properties `((upstream-name . "INTACT")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-squarem r-numderiv r-bdsmatrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jokamoto97/INTACT")
    (synopsis
     "Integrate TWAS and Colocalization Analysis for Gene Set Enrichment Analysis")
    (description
     "This package integrates colocalization probabilities from colocalization
analysis with transcriptome-wide association study (TWAS) scan summary
statistics to implicate genes that may be biologically relevant to a complex
trait.  The probabilistic framework implemented in this package constrains the
TWAS scan z-score-based likelihood using a gene-level colocalization
probability.  Given gene set annotations, this package can estimate gene set
enrichment using posterior probabilities from the TWAS-colocalization
integration step.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-inpower
  (package
    (name "r-inpower")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "INPower" version))
       (sha256
        (base32 "1w3gjw1avjpvnqy5ladypkr862jqd910zi74ah8rdfzid4r79klm"))))
    (properties `((upstream-name . "INPower")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm))
    (home-page "https://bioconductor.org/packages/INPower")
    (synopsis "An R package for computing the number of susceptibility SNPs")
    (description
     "An R package for computing the number of susceptibility SNPs and power of future
studies")
    (license (license:fsdg-compatible "GPL-2 + file LICENSE"))))

(define-public r-inpas
  (package
    (name "r-inpas")
    (version "2.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "InPAS" version))
       (sha256
        (base32 "05hzd8rixqz5d86d4gv7wh68kfbiynbp2xij9r2nj0h90av0h95b"))))
    (properties `((upstream-name . "InPAS")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-reshape2
                             r-readr
                             r-preprocesscore
                             r-plyranges
                             r-parallelly
                             r-magrittr
                             r-limma
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-future-apply
                             r-future
                             r-flock
                             r-dplyr
                             r-depmixs4
                             r-cleanupdtseq
                             r-bsgenome
                             r-biostrings
                             r-biobase
                             r-batchtools
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/InPAS")
    (synopsis
     "Identify Novel Alternative PolyAdenylation Sites (PAS) from RNA-seq data")
    (description
     "Alternative polyadenylation (APA) is one of the important post- transcriptional
regulation mechanisms which occurs in most human genes. @code{InPAS} facilitates
the discovery of novel APA sites and the differential usage of APA sites from
RNA-Seq data.  It leverages @code{cleanUpdTSeq} to fine tune identified APA
sites by removing false sites.")
    (license license:gpl2+)))

(define-public r-informeasure
  (package
    (name "r-informeasure")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Informeasure" version))
       (sha256
        (base32 "0v4wy0gyap9w38a505hhhv1apmixazd4la8wjspdx718az92igg3"))))
    (properties `((upstream-name . "Informeasure")))
    (build-system r-build-system)
    (propagated-inputs (list r-entropy))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/chupan1218/Informeasure")
    (synopsis "R implementation of information measures")
    (description
     "This package consolidates a comprehensive set of information measurements,
encompassing mutual information, conditional mutual information, interaction
information, partial information decomposition, and part mutual information.")
    (license license:artistic2.0)))

(define-public r-infinityflow
  (package
    (name "r-infinityflow")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "infinityFlow" version))
       (sha256
        (base32 "112pnwg13wq9cw0lyl170pfby2kaaz2nm22gfwclf7hccnd9a46z"))))
    (properties `((upstream-name . "infinityFlow")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost
                             r-uwot
                             r-raster
                             r-png
                             r-pbapply
                             r-matlab
                             r-gtools
                             r-generics
                             r-flowcore
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/infinityFlow")
    (synopsis
     "Augmenting Massively Parallel Cytometry Experiments Using Multivariate Non-Linear Regressions")
    (description
     "Pipeline to analyze and merge data files produced by @code{BioLegend's}
LEGENDScreen or BD Human Cell Surface Marker Screening Panel (BD Lyoplates).")
    (license license:gpl3)))

(define-public r-inetgrate
  (package
    (name "r-inetgrate")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iNETgrate" version))
       (sha256
        (base32 "1lsj5lwwfr4h1n1nlgnbncrgsy4mzhj5lzygcb691fkvk84ki09p"))))
    (properties `((upstream-name . "iNETgrate")))
    (build-system r-build-system)
    (propagated-inputs (list r-wgcna
                             r-tidyselect
                             r-tidyr
                             r-survival
                             r-summarizedexperiment
                             r-rfast
                             r-pigengene
                             r-minfi
                             r-matrixstats
                             r-igraph
                             r-homo-sapiens
                             r-gplots
                             r-glmnet
                             r-genomicranges
                             r-caret
                             r-biocstyle))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/iNETgrate")
    (synopsis
     "Integrates DNA methylation data with gene expression in a single gene network")
    (description
     "The @code{iNETgrate} package provides functions to build a correlation network
in which nodes are genes.  DNA methylation and gene expression data are
integrated to define the connections between genes.  This network is used to
identify modules (clusters) of genes.  The biological information in each of the
resulting modules is represented by an eigengene.  These biological signatures
can be used as features e.g., for classification of patients into risk
categories.  The resulting biological signatures are very robust and give a
holistic view of the underlying molecular changes.")
    (license license:gpl3)))

(define-public r-indeed
  (package
    (name "r-indeed")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "INDEED" version))
       (sha256
        (base32 "0ky21l4igsfznzq8is8apjhiasxryn8sjhjqjnpp1z8m7q93a0sf"))))
    (properties `((upstream-name . "INDEED")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork r-igraph r-glasso r-devtools))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/ressomlab/INDEED")
    (synopsis
     "Interactive Visualization of Integrated Differential Expression and Differential Network Analysis for Biomarker Candidate Selection Package")
    (description
     "An R package for integrated differential expression and differential network
analysis based on omic data for cancer biomarker discovery.  Both correlation
and partial correlation can be used to generate differential network to aid the
traditional differential expression analysis to identify changes between
biomolecules on both their expression and pairwise association levels.  A
detailed description of the methodology has been published in Methods journal
(PMID: 27592383).  An interactive visualization feature allows for the
exploration and selection of candidate biomarkers.")
    (license license:artistic2.0)))

(define-public r-indac-db
  (package
    (name "r-indac-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "indac.db" version
                              'annotation))
       (sha256
        (base32 "0jjkiyhjcjgk9888a96g5w80k8a652cww5dhidbdiq5d8gakbnji"))))
    (properties `((upstream-name . "indac.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-dm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/indac.db")
    (synopsis
     "INDAC FlyChip_long_oligonucleotide_002 (FL002) annotation data (chip indac)")
    (description
     "INDAC @code{FlyChip_long_oligonucleotide_002} (FL002) annotation data (chip
indac) assembled using data from public repositories")
    (license license:artistic2.0)))

(define-public r-impcdata
  (package
    (name "r-impcdata")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IMPCdata" version))
       (sha256
        (base32 "0s0zap78lwgava7k3dng8hjpd1zifh9438iqfqghydq8scyr3akc"))))
    (properties `((upstream-name . "IMPCdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjson))
    (home-page "https://bioconductor.org/packages/IMPCdata")
    (synopsis "Retrieves data from IMPC database")
    (description
     "Package contains methods for data retrieval from IMPC Database.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-immunotation
  (package
    (name "r-immunotation")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "immunotation" version))
       (sha256
        (base32 "0g9yfm8kbcbfmb0xf1sqqv15h4ji0hya7p8j3czr2bc0gvmmka6q"))))
    (properties `((upstream-name . "immunotation")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tidyr
                             r-stringr
                             r-rvest
                             r-rlang
                             r-readr
                             r-ontologyindex
                             r-maps
                             r-ggplot2
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/immunotation")
    (synopsis "Tools for working with diverse immune genes")
    (description
     "MHC (major histocompatibility complex) molecules are cell surface complexes that
present antigens to T cells.  The repertoire of antigens presented in a given
genetic background largely depends on the sequence of the encoded MHC molecules,
and thus, in humans, on the highly variable HLA (human leukocyte antigen) genes
of the hyperpolymorphic HLA locus.  More than 28,000 different HLA alleles have
been reported, with significant differences in allele frequencies between human
populations worldwide.  Reproducible and consistent annotation of HLA alleles in
large-scale bioinformatics workflows remains challenging, because the available
reference databases and software tools often use different HLA naming schemes.
The package immunotation provides tools for consistent annotation of HLA genes
in typical immunoinformatics workflows such as for example the prediction of
MHC-presented peptides in different human donors.  Converter functions that
provide mappings between different HLA naming schemes are based on the MHC
restriction ontology (MRO).  The package also provides automated access to HLA
alleles frequencies in worldwide human reference populations stored in the
Allele Frequency Net Database.")
    (license license:gpl3)))

(define-public r-immunoclust
  (package
    (name "r-immunoclust")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "immunoClust" version))
       (sha256
        (base32 "00bshq0plfnh20117q9020gsyr65z1sfvmki8nbcz3ay6hq3rpm3"))))
    (properties `((upstream-name . "immunoClust")))
    (build-system r-build-system)
    (inputs (list gsl))
    (propagated-inputs (list r-lattice r-flowcore))
    (native-inputs (list pkg-config))
    (home-page "https://bioconductor.org/packages/immunoClust")
    (synopsis
     "immunoClust - Automated Pipeline for Population Detection in Flow Cytometry")
    (description
     "@code{immunoClust} is a model based clustering approach for Flow Cytometry
samples.  The cell-events of single Flow Cytometry samples are modelled by a
mixture of multinominal normal- or t-distributions.  The cell-event clusters of
several samples are modelled by a mixture of multinominal normal-distributions
aiming stable co-clusters across these samples.")
    (license license:artistic2.0)))

(define-public r-imman
  (package
    (name "r-imman")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IMMAN" version))
       (sha256
        (base32 "1yn0p53ar9b9g5d2gfyd70cp7vm69fsgn8av9lvc6qyac18w9y5j"))))
    (properties `((upstream-name . "IMMAN")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringdb r-seqinr r-pwalign r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/IMMAN")
    (synopsis
     "Interlog protein network reconstruction by Mapping and Mining ANalysis")
    (description
     "Reconstructing Interlog Protein Network (IPN) integrated from several Protein
protein Interaction Networks (PPINs).  Using this package, overlaying different
PPINs to mine conserved common networks between diverse species will be
applicable.")
    (license license:artistic2.0)))

(define-public r-imcrtools
  (package
    (name "r-imcrtools")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "imcRtools" version))
       (sha256
        (base32 "0wp5f0lrxi2f7kvdqqjl6gdhybcipppg3mr25r9zsfbaxf5d0160"))))
    (properties `((upstream-name . "imcRtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-vroom
                             r-viridis
                             r-tidyselect
                             r-tidygraph
                             r-summarizedexperiment
                             r-stringr
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-sf
                             r-scuttle
                             r-s4vectors
                             r-rtriangle
                             r-rlang
                             r-readr
                             r-pheatmap
                             r-matrixgenerics
                             r-magrittr
                             r-igraph
                             r-ggraph
                             r-ggplot2
                             r-ebimage
                             r-dt
                             r-dplyr
                             r-distances
                             r-data-table
                             r-cytomapper
                             r-concaveman
                             r-biocparallel
                             r-biocneighbors
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BodenmillerGroup/imcRtools")
    (synopsis "Methods for imaging mass cytometry data analysis")
    (description
     "This R package supports the handling and analysis of imaging mass cytometry and
other highly multiplexed imaging data.  The main functionality includes reading
in single-cell data after image segmentation and measurement, data formatting to
perform channel spillover correction and a number of spatial analysis
approaches.  First, cell-cell interactions are detected via spatial graph
construction; these graphs can be visualized with cells representing nodes and
interactions representing edges.  Furthermore, per cell, its direct neighbours
are summarized to allow spatial clustering.  Per image/grouping level,
interactions between types of cells are counted, averaged and compared against
random permutations.  In that way, types of cells that interact more
(attraction) or less (avoidance) frequently than expected by chance are
detected.")
    (license license:gpl3)))

(define-public r-imcdatasets
  (package
    (name "r-imcdatasets")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "imcdatasets" version
                              'experiment))
       (sha256
        (base32 "135sffkn322g6zp6wz6ri2cg4wj9pwadmv4b6zaaxwximpx5xy04"))))
    (properties `((upstream-name . "imcdatasets")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-spatialexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-hdf5array
                             r-experimenthub
                             r-delayedarray
                             r-cytomapper))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BodenmillerGroup/imcdatasets")
    (synopsis
     "Collection of publicly available imaging mass cytometry (IMC) datasets")
    (description
     "The imcdatasets package provides access to publicly available IMC datasets.  IMC
is a technology that enables measurement of > 40 proteins from tissue sections.
The generated images can be segmented to extract single cell data.  Datasets
typically consist of three elements: a @code{SingleCellExperiment} object
containing single cell data, a @code{CytoImageList} object containing
multichannel images and a @code{CytoImageList} object containing the cell masks
that were used to extract the single cell data from the images.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-imas
  (package
    (name "r-imas")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IMAS" version))
       (sha256
        (base32 "1n55qs4v5x7clpbhlrby5dcz9xldqrsfp6g4k6g0s1g0lk2rplqm"))))
    (properties `((upstream-name . "IMAS")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-s4vectors
                             r-rsamtools
                             r-matrix
                             r-lme4
                             r-lattice
                             r-ivas
                             r-iranges
                             r-gridextra
                             r-ggplot2
                             r-ggfortify
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-foreach
                             r-doparallel
                             r-biocparallel
                             r-biocgenerics
                             r-annotationdbi))
    (home-page "https://bioconductor.org/packages/IMAS")
    (synopsis
     "Integrative analysis of Multi-omics data for Alternative Splicing")
    (description
     "Integrative analysis of Multi-omics data for Alternative splicing.")
    (license license:gpl2)))

(define-public r-iloreg
  (package
    (name "r-iloreg")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ILoReg" version))
       (sha256
        (base32 "1zw6m2a5jr77mbjbzc966v98pdfw2s0sg1sqssdf7qsb0izj10b0"))))
    (properties `((upstream-name . "ILoReg")))
    (build-system r-build-system)
    (propagated-inputs (list r-umap
                             r-summarizedexperiment
                             r-sparsem
                             r-singlecellexperiment
                             r-scales
                             r-s4vectors
                             r-rtsne
                             r-rspectra
                             r-reshape2
                             r-plyr
                             r-pheatmap
                             r-paralleldist
                             r-matrix
                             r-liblinear
                             r-ggplot2
                             r-foreach
                             r-fastcluster
                             r-dplyr
                             r-dosnow
                             r-dorng
                             r-desctools
                             r-dendextend
                             r-cowplot
                             r-cluster
                             r-aricode))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/elolab/ILoReg")
    (synopsis
     "ILoReg: a tool for high-resolution cell population identification from scRNA-Seq data")
    (description
     "I@code{LoReg} is a tool for identification of cell populations from
@code{scRNA-seq} data.  In particular, I@code{LoReg} is useful for finding cell
populations with subtle transcriptomic differences.  The method utilizes a
self-supervised learning method, called Iteratitive Clustering Projection (ICP),
to find cluster probabilities, which are used in noise reduction prior to PCA
and the subsequent hierarchical clustering and t-SNE steps.  Additionally,
functions for differential expression analysis to find gene markers for the
populations and gene expression visualization are provided.")
    (license license:gpl3)))

(define-public r-illuminaratv1-db
  (package
    (name "r-illuminaratv1-db")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "illuminaRatv1.db" version
                              'annotation))
       (sha256
        (base32 "1krpp3pb3h2nrk5jrx54a3v6473qsjnz5wksysy8p4zpisvnxyfb"))))
    (properties `((upstream-name . "illuminaRatv1.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/illuminaRatv1.db")
    (synopsis "Illumina Ratv1 annotation data (chip illuminaRatv1)")
    (description
     "Illumina Ratv1 annotation data (chip @code{illuminaRatv1}) assembled using data
from public repositories")
    (license license:artistic2.0)))

(define-public r-illuminamousev2-db
  (package
    (name "r-illuminamousev2-db")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "illuminaMousev2.db" version
                              'annotation))
       (sha256
        (base32 "0vwi309ymhrbpa9dyk0fwqy7bfwvvp67q39xjav1s9npi3slv1h3"))))
    (properties `((upstream-name . "illuminaMousev2.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/illuminaMousev2.db")
    (synopsis "Illumina MouseWG6v2 annotation data (chip illuminaMousev2)")
    (description
     "Illumina @code{MouseWG6v2} annotation data (chip @code{illuminaMousev2})
assembled using data from public repositories")
    (license license:artistic2.0)))

(define-public r-illuminamousev1p1-db
  (package
    (name "r-illuminamousev1p1-db")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "illuminaMousev1p1.db" version
                              'annotation))
       (sha256
        (base32 "1sxqwrc3697361jp69xy9g8w5a699ifjvldqi9ks538h5yc157z1"))))
    (properties `((upstream-name . "illuminaMousev1p1.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/illuminaMousev1p1.db")
    (synopsis "Illumina MouseWG6v1p1 annotation data (chip illuminaMousev1p1)")
    (description
     "Illumina @code{MouseWG6v1p1} annotation data (chip @code{illuminaMousev1p1})
assembled using data from public repositories")
    (license license:artistic2.0)))

(define-public r-illuminamousev1-db
  (package
    (name "r-illuminamousev1-db")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "illuminaMousev1.db" version
                              'annotation))
       (sha256
        (base32 "0w2iziiw8axd1wll3h3vpwn4zr117y5v7c5ji121dh8yzkn1r2ng"))))
    (properties `((upstream-name . "illuminaMousev1.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/illuminaMousev1.db")
    (synopsis "Illumina MouseWG6v1 annotation data (chip illuminaMousev1)")
    (description
     "Illumina @code{MouseWG6v1} annotation data (chip @code{illuminaMousev1})
assembled using data from public repositories")
    (license license:artistic2.0)))

(define-public r-illuminahumanwgdaslv4-db
  (package
    (name "r-illuminahumanwgdaslv4-db")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "illuminaHumanWGDASLv4.db" version
                              'annotation))
       (sha256
        (base32 "0hirbzmfw08b1p3lga00yvfvpnvhij1fayhikc3l9n2sjxkba2xl"))))
    (properties `((upstream-name . "illuminaHumanWGDASLv4.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/illuminaHumanWGDASLv4.db")
    (synopsis
     "Illumina HumanWGDASLv4 annotation data (chip illuminaHumanWGDASLv4)")
    (description
     "Illumina @code{HumanWGDASLv4} annotation data (chip
@code{illuminaHumanWGDASLv4}) assembled using data from public repositories")
    (license license:artistic2.0)))

(define-public r-illuminahumanwgdaslv3-db
  (package
    (name "r-illuminahumanwgdaslv3-db")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "illuminaHumanWGDASLv3.db" version
                              'annotation))
       (sha256
        (base32 "0qcr9yx0xxqxmxl0lcl38lnj41nzxd581vp6fyz2y9z8041jar3a"))))
    (properties `((upstream-name . "illuminaHumanWGDASLv3.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/illuminaHumanWGDASLv3.db")
    (synopsis
     "Illumina HumanHT12WGDASLv3 annotation data (chip illuminaHumanWGDASLv3)")
    (description
     "Illumina @code{HumanHT12WGDASLv3} annotation data (chip
@code{illuminaHumanWGDASLv3}) assembled using data from public repositories")
    (license license:artistic2.0)))

(define-public r-illuminahumanv4-db
  (package
    (name "r-illuminahumanv4-db")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "illuminaHumanv4.db" version
                              'annotation))
       (sha256
        (base32 "11gf6gcbkhvvhca02mbx4rjs07lcnsj6hk0sdqhaczwcwzb4ha1n"))))
    (properties `((upstream-name . "illuminaHumanv4.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/illuminaHumanv4.db")
    (synopsis "Illumina HumanHT12v4 annotation data (chip illuminaHumanv4)")
    (description
     "Illumina @code{HumanHT12v4} annotation data (chip @code{illuminaHumanv4})
assembled using data from public repositories")
    (license license:artistic2.0)))

(define-public r-illuminahumanv3-db
  (package
    (name "r-illuminahumanv3-db")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "illuminaHumanv3.db" version
                              'annotation))
       (sha256
        (base32 "06rsa36lb3nnk2bc65774v7m3r08h7qv6320ax6ib5si2p6wk86f"))))
    (properties `((upstream-name . "illuminaHumanv3.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/illuminaHumanv3.db")
    (synopsis "Illumina HumanHT12v3 annotation data (chip illuminaHumanv3)")
    (description
     "Illumina @code{HumanHT12v3} annotation data (chip @code{illuminaHumanv3})
assembled using data from public repositories")
    (license license:artistic2.0)))

(define-public r-illuminahumanv2beadid-db
  (package
    (name "r-illuminahumanv2beadid-db")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "illuminaHumanv2BeadID.db" version
                              'annotation))
       (sha256
        (base32 "048znqv200bn5zgikmqzb7dazrys6h5sa1fhybi2x50k203yrslp"))))
    (properties `((upstream-name . "illuminaHumanv2BeadID.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/illuminaHumanv2BeadID.db")
    (synopsis
     "Illumina HumanWGv2 annotation data (chip illuminaHumanv2BeadID)")
    (description
     "Illumina @code{HumanWGv2} annotation data (chip @code{illuminaHumanv2BeadID})
assembled using data from public repositories to be used with data summarized
from bead-level data with numeric @code{ArrayAddressIDs} as keys.  Illumina
probes with a No match or Bad quality score were removed prior to annotation.
See http://www.compbio.group.cam.ac.uk/Resources/Annotation/index.html and
Barbosa-Morais et al (2010) A re-annotation pipeline for Illumina
@code{BeadArrays}: improving the interpretation of gene expression data.
Nucleic Acids Research.")
    (license license:artistic2.0)))

(define-public r-illuminahumanv2-db
  (package
    (name "r-illuminahumanv2-db")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "illuminaHumanv2.db" version
                              'annotation))
       (sha256
        (base32 "12pvq269glvk199996s5rcsyzkxyi2ixqrbpdanlw09x5igvfpk6"))))
    (properties `((upstream-name . "illuminaHumanv2.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/illuminaHumanv2.db")
    (synopsis "Illumina HumanWG6v2 annotation data (chip illuminaHumanv2)")
    (description
     "Illumina @code{HumanWG6v2} annotation data (chip @code{illuminaHumanv2})
assembled using data from public repositories")
    (license license:artistic2.0)))

(define-public r-illuminahumanv1-db
  (package
    (name "r-illuminahumanv1-db")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "illuminaHumanv1.db" version
                              'annotation))
       (sha256
        (base32 "1bd98sskkjqlrshmhkwdhfspyznsjissyk77x373rmq18nb0pjp9"))))
    (properties `((upstream-name . "illuminaHumanv1.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/illuminaHumanv1.db")
    (synopsis "Illumina HumanWG6v1 annotation data (chip illuminaHumanv1)")
    (description
     "Illumina @code{HumanWG6v1} annotation data (chip @code{illuminaHumanv1})
assembled using data from public repositories")
    (license license:artistic2.0)))

(define-public r-illuminahumanmethylationepicv2manifest
  (package
    (name "r-illuminahumanmethylationepicv2manifest")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IlluminaHumanMethylationEPICv2manifest" version
                              'annotation))
       (sha256
        (base32 "1z4b15x8cai27cqhl2lhl02nx0lv8q5c1774vdvvdajx2hivn77l"))))
    (properties `((upstream-name . "IlluminaHumanMethylationEPICv2manifest")))
    (build-system r-build-system)
    (propagated-inputs (list r-minfi))
    (native-inputs (list r-knitr))
    (home-page
     "https://www.illumina.com/products/by-type/microarray-kits/infinium-methylation-epic.html")
    (synopsis "Manifest for Illumina's EPIC v2.0 methylation arrays")
    (description
     "This package provides a manifest package for Illumina's EPIC v2.0 methylation
arrays.  The version 2 covers more than 935K @code{CpG} sites in the human
genome hg38.  It is an update of the original EPIC v1.0 array (i.e., the 850K
methylation array).")
    (license license:artistic2.0)))

(define-public r-illuminahumanmethylationepicv2anno-20a1-hg38
  (package
    (name "r-illuminahumanmethylationepicv2anno-20a1-hg38")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IlluminaHumanMethylationEPICv2anno.20a1.hg38"
                              version
                              'annotation))
       (sha256
        (base32 "0vp4m3a7qal4d8qc9xaj7z3x484i33ix4c67qlbw0kskdir7rq5a"))))
    (properties `((upstream-name . "IlluminaHumanMethylationEPICv2anno.20a1.hg38")))
    (build-system r-build-system)
    (propagated-inputs (list r-minfi))
    (native-inputs (list r-knitr))
    (home-page
     "https://www.illumina.com/products/by-type/microarray-kits/infinium-methylation-epic.html")
    (synopsis "Annotation for Illumina's EPIC v2.0 methylation arrays")
    (description
     "An annotation package for Illumina's EPIC v2.0 methylation arrays.  The version
2 covers more than 935K @code{CpG} sites in the human genome hg38.  It is an
update of the original EPIC v1.0 array (i.e., the 850K methylation array).")
    (license license:artistic2.0)))

(define-public r-illuminahumanmethylationepicanno-ilm10b3-hg19
  (package
    (name "r-illuminahumanmethylationepicanno-ilm10b3-hg19")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IlluminaHumanMethylationEPICanno.ilm10b3.hg19"
                              version
                              'annotation))
       (sha256
        (base32 "1rdkvbpbz8a8bd9ipycfmgn8a3x519abhwywka21ii9ziv3s6ah6"))))
    (properties `((upstream-name . "IlluminaHumanMethylationEPICanno.ilm10b3.hg19")))
    (build-system r-build-system)
    (propagated-inputs (list r-minfi))
    (home-page "https://bitbucket.com/kasperdanielhansen/Illumina_EPIC")
    (synopsis "Annotation for Illumina's EPIC methylation arrays")
    (description
     "An annotation package for Illumina's EPIC methylation arrays.")
    (license license:artistic2.0)))

(define-public r-illuminahumanmethylationepicanno-ilm10b2-hg19
  (package
    (name "r-illuminahumanmethylationepicanno-ilm10b2-hg19")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IlluminaHumanMethylationEPICanno.ilm10b2.hg19"
                              version
                              'annotation))
       (sha256
        (base32 "0sfdx0lpiw3l4passx93pjfswd0iv3hxdc7ciazh53baib3xpv2d"))))
    (properties `((upstream-name . "IlluminaHumanMethylationEPICanno.ilm10b2.hg19")))
    (build-system r-build-system)
    (propagated-inputs (list r-minfi))
    (home-page "https://bitbucket.com/kasperdanielhansen/Illumina_EPIC")
    (synopsis "Annotation for Illumina's EPIC methylation arrays")
    (description
     "An annotation package for Illumina's EPIC methylation arrays.")
    (license license:artistic2.0)))

(define-public r-illuminahumanmethylation450kprobe
  (package
    (name "r-illuminahumanmethylation450kprobe")
    (version "2.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IlluminaHumanMethylation450kprobe" version
                              'annotation))
       (sha256
        (base32 "1iah0rw7d8qvgwvn6n2l4cln39ky010gqpd9shml45m48m6whiia"))))
    (properties `((upstream-name . "IlluminaHumanMethylation450kprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/IlluminaHumanMethylation450kprobe")
    (synopsis
     "Probe sequence data for microarrays of type IlluminaHumanMethylation450k")
    (description
     "Probe sequences from Illumina (ftp.illumina.com) for hm450 probes")
    (license license:lgpl2.0+)))

(define-public r-illuminahumanmethylation27kmanifest
  (package
    (name "r-illuminahumanmethylation27kmanifest")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IlluminaHumanMethylation27kmanifest" version
                              'annotation))
       (sha256
        (base32 "1kvz6z7g61zdrc1i93wsk1zv5mwcswfkxkl114644q09djwbz1fx"))))
    (properties `((upstream-name . "IlluminaHumanMethylation27kmanifest")))
    (build-system r-build-system)
    (propagated-inputs (list r-minfi))
    (home-page
     "https://bioconductor.org/packages/IlluminaHumanMethylation27kmanifest")
    (synopsis "Annotation for Illumina's 27k methylation arrays")
    (description "Manifest for Illumina's 27k array data")
    (license license:artistic2.0)))

(define-public r-illuminahumanmethylation27kanno-ilmn12-hg19
  (package
    (name "r-illuminahumanmethylation27kanno-ilmn12-hg19")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IlluminaHumanMethylation27kanno.ilmn12.hg19"
                              version
                              'annotation))
       (sha256
        (base32 "0idy6xn3x5c640d47q52na03s29pj4l38dpxy8q9mh6hy8g29vp3"))))
    (properties `((upstream-name . "IlluminaHumanMethylation27kanno.ilmn12.hg19")))
    (build-system r-build-system)
    (propagated-inputs (list r-minfi))
    (home-page
     "https://bioconductor.org/packages/IlluminaHumanMethylation27kanno.ilmn12.hg19")
    (synopsis "Annotation for Illumina's 27k methylation arrays")
    (description
     "An annotation package for Illumina's EPIC methylation arrays.")
    (license license:artistic2.0)))

(define-public r-illuminahumanmethylation27k-db
  (package
    (name "r-illuminahumanmethylation27k-db")
    (version "1.4.8")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IlluminaHumanMethylation27k.db" version
                              'annotation))
       (sha256
        (base32 "0zw0n4a9v42ifmvw2hfzzvl8jz1d7f00ia59ljhcvvw9aj12q4zs"))))
    (properties `((upstream-name . "IlluminaHumanMethylation27k.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/IlluminaHumanMethylation27k.db")
    (synopsis
     "Illumina Illumina Human Methylation 27k annotation data (chip IlluminaHumanMethylation27k)")
    (description
     "Illumina Illumina Human Methylation 27k annotation data (chip
@code{IlluminaHumanMethylation27k}) assembled using data from public
repositories")
    (license license:artistic2.0)))

(define-public r-illuminadatatestfiles
  (package
    (name "r-illuminadatatestfiles")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IlluminaDataTestFiles" version
                              'experiment))
       (sha256
        (base32 "0xmyhqaa34chd2fxzbs7rk72wyx086cfhnjjh4lwjmb8acbp9xi8"))))
    (properties `((upstream-name . "IlluminaDataTestFiles")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/IlluminaDataTestFiles")
    (synopsis "Illumina microarray files (IDAT) for testing")
    (description
     "Example data for Illumina microarray output files, for testing purposes")
    (license license:artistic2.0)))

(define-public r-ihwpaper
  (package
    (name "r-ihwpaper")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IHWpaper" version
                              'experiment))
       (sha256
        (base32 "0s3x2chbr8ik3rhgzmfhaq8xlsnnkzfhjh4p327sn5aar6xhaj67"))))
    (properties `((upstream-name . "IHWpaper")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-rcpp
                             r-qvalue
                             r-ihw
                             r-ggplot2
                             r-genefilter
                             r-fdrtool
                             r-dplyr
                             r-deseq2
                             r-cowplot
                             r-biocparallel
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/IHWpaper")
    (synopsis "Reproduce figures in IHW paper")
    (description
     "This package conveniently wraps all functions needed to reproduce the figures in
the IHW paper (https://www.nature.com/articles/nmeth.3885) and the data analysis
in https://rss.onlinelibrary.wiley.com/doi/10.1111/rssb.12411, cf.  the
@code{arXiv} preprint (http://arxiv.org/abs/1701.05179).  Thus it is a companion
package to the Bioconductor IHW package.")
    (license license:artistic2.0)))

(define-public r-igvshiny
  (package
    (name "r-igvshiny")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "igvShiny" version))
       (sha256
        (base32 "0nb8cals6nw5l70yrnwq1pcfdc3m0w9ncsrdrd2zsm4ni2lpqjvx"))))
    (properties `((upstream-name . "igvShiny")))
    (build-system r-build-system)
    (arguments
     (list
      #:modules '((guix build r-build-system)
                  (guix build minify-build-system)
                  (guix build utils)
                  (ice-9 match))
      #:imported-modules `(,@%r-build-system-modules (guix build
                                                      minify-build-system))
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'process-javascript
                    (lambda* (#:key inputs #:allow-other-keys)
                      (with-directory-excursion "inst/"
                        (for-each (match-lambda
                                    ((source . target) (minify source
                                                               #:target target)))
                                  '())))))))
    (propagated-inputs (list r-shiny
                             r-rcurl
                             r-randomcolor
                             r-jsonlite
                             r-httr
                             r-htmlwidgets
                             r-genomicranges
                             r-genomeinfodbdata
                             r-futile-logger
                             r-checkmate
                             r-biocgenerics))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/gladkia/igvShiny")
    (synopsis
     "igvShiny: a wrapper of Integrative Genomics Viewer (IGV - an interactive tool for visualization and exploration integrated genomic data)")
    (description
     "This package is a wrapper of Integrative Genomics Viewer (IGV).  It comprises an
htmlwidget version of IGV. It can be used as a module in Shiny apps.")
    (license license:expat)))

(define-public r-igvr
  (package
    (name "r-igvr")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "igvR" version))
       (sha256
        (base32 "0rkps3zj1zg8rksyrnp94xvasgrlvwnq4fqgkrhr8wn0jcqkpna1"))))
    (properties `((upstream-name . "igvR")))
    (build-system r-build-system)
    (propagated-inputs (list r-variantannotation
                             r-rtracklayer
                             r-rcolorbrewer
                             r-httr
                             r-httpuv
                             r-genomicranges
                             r-genomicalignments
                             r-browserviz
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://gladkia.github.io/igvR/")
    (synopsis "igvR: integrative genomics viewer")
    (description
     "Access to igv.js, the Integrative Genomics Viewer running in a web browser.")
    (license license:expat)))

(define-public r-iggeneusage
  (package
    (name "r-iggeneusage")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IgGeneUsage" version))
       (sha256
        (base32 "0b2bndc36yd0a4yi2z3870g1b9c1ddpwp44gl42ysk29qwis2yi6"))))
    (properties `((upstream-name . "IgGeneUsage")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-summarizedexperiment
                             r-stanheaders
                             r-rstantools
                             r-rstan
                             r-reshape2
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/snaketron/IgGeneUsage")
    (synopsis "Differential gene usage in immune repertoires")
    (description
     "Detection of biases in the usage of immunoglobulin (Ig) genes is an important
task in immune repertoire profiling. @code{IgGeneUsage} detects aberrant Ig gene
usage between biological conditions using a probabilistic model which is
analyzed computationally by Bayes inference.  With this @code{IgGeneUsage} also
avoids some common problems related to the current practice of null-hypothesis
significance testing.")
    (license license:expat)))

(define-public r-igc
  (package
    (name "r-igc")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iGC" version))
       (sha256
        (base32 "1xn04rv4p5aqvb4f696kfpcpyn4iqvryhgc84a8pk29yfx1hk38p"))))
    (properties `((upstream-name . "iGC")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-data-table))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/ccwang002/iGC")
    (synopsis
     "An integrated analysis package of Gene expression and Copy number alteration")
    (description
     "This package is intended to identify differentially expressed genes driven by
Copy Number Alterations from samples with both gene expression and CNA data.")
    (license license:gpl2)))

(define-public r-ifaa
  (package
    (name "r-ifaa")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "IFAA" version))
       (sha256
        (base32 "1y2vsz14d5a22m21n7zmfm64ffvh8hq0hkwnr44ifysy4zfmjg0x"))))
    (properties `((upstream-name . "IFAA")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-stringr
                             r-s4vectors
                             r-parallelly
                             r-matrixextra
                             r-matrix
                             r-mathjaxr
                             r-hdci
                             r-glmnet
                             r-foreach
                             r-dorng
                             r-doparallel
                             r-desctools))
    (native-inputs (list r-knitr))
    (home-page "https://pubmed.ncbi.nlm.nih.gov/35241863/")
    (synopsis "Robust Inference for Absolute Abundance in Microbiome Analysis")
    (description
     "This package offers a robust approach to make inference on the association of
covariates with the absolute abundance (AA) of microbiome in an ecosystem.  It
can be also directly applied to relative abundance (RA) data to make inference
on AA because the ratio of two RA is equal to the ratio of their AA. This
algorithm can estimate and test the associations of interest while adjusting for
potential confounders.  The estimates of this method have easy interpretation
like a typical regression analysis.  High-dimensional covariates are handled
with regularization and it is implemented by parallel computing.  False
discovery rate is automatically controlled by this approach.  Zeros do not need
to be imputed by a positive value for the analysis.  The IFAA package also
offers the MZILN function for estimating and testing associations of abundance
ratios with covariates.")
    (license license:gpl2)))

(define-public r-idr2d
  (package
    (name "r-idr2d")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "idr2d" version))
       (sha256
        (base32 "1c1x9nazmapdk820i3k2b4b956zy5ym333y2fjxg9nqfsvq153mn"))))
    (properties `((upstream-name . "idr2d")))
    (build-system r-build-system)
    (inputs (list python))
    (propagated-inputs (list r-stringr
                             r-scales
                             r-reticulate
                             r-magrittr
                             r-iranges
                             r-idr
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-futile-logger
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://idr2d.mit.edu")
    (synopsis "Irreproducible Discovery Rate for Genomic Interactions Data")
    (description
     "This package provides a tool to measure reproducibility between genomic
experiments that produce two-dimensional peaks (interactions between peaks),
such as @code{ChIA-PET}, @code{HiChIP}, and @code{HiC}.  idr2d is an extension
of the original idr package, which is intended for (one-dimensional)
@code{ChIP-seq} peaks.")
    (license license:expat)))

(define-public r-idpr
  (package
    (name "r-idpr")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "idpr" version))
       (sha256
        (base32 "1g6g1265ncwlz4qz3w2v66jimx68pwmlzn8yw94pm242c2ikyn78"))))
    (properties `((upstream-name . "idpr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-plyr
                             r-magrittr
                             r-jsonlite
                             r-ggplot2
                             r-dplyr
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/idpr")
    (synopsis "Profiling and Analyzing Intrinsically Disordered Proteins in R")
    (description
     "‘idpr’ aims to integrate tools for the computational analysis of intrinsically
disordered proteins (IDPs) within R. This package is used to identify known
characteristics of IDPs for a sequence of interest with easily reported and
dynamic results.  Additionally, this package includes tools for IDP-based
sequence analysis to be used in conjunction with other R packages.  Described in
@code{McFadden} WM & Yanowitz JL (2022). \"idpr: A package for profiling and
analyzing Intrinsically Disordered Proteins in R.\" @code{PloS} one, 17(4),
e0266929. <https://doi.org/10.1371/journal.pone.0266929>.")
    (license license:lgpl3+)))

(define-public r-idiogram
  (package
    (name "r-idiogram")
    (version "1.80.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "idiogram" version))
       (sha256
        (base32 "0hhgxsc4lk2lpi7ih1z72n4ly8kh8pj9j3w79x7nn0jha5krjv48"))))
    (properties `((upstream-name . "idiogram")))
    (build-system r-build-system)
    (propagated-inputs (list r-plotrix r-biobase r-annotate))
    (home-page "https://bioconductor.org/packages/idiogram")
    (synopsis "idiogram")
    (description
     "This package provides a package for plotting genomic data by chromosomal
location")
    (license license:gpl2)))

(define-public r-icnv
  (package
    (name "r-icnv")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iCNV" version))
       (sha256
        (base32 "08kqlpzkjd8m87n9yjdw0jmxdv7d90rh8s2rbmpywcs74qcrdq62"))))
    (properties `((upstream-name . "iCNV")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncnorm
                             r-tidyr
                             r-rlang
                             r-ggplot2
                             r-fields
                             r-dplyr
                             r-data-table
                             r-codex))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/iCNV")
    (synopsis "Integrated Copy Number Variation detection")
    (description
     "Integrative copy number variation (CNV) detection from multiple platform and
experimental design.")
    (license license:gpl2)))

(define-public r-ichip
  (package
    (name "r-ichip")
    (version "1.58.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iChip" version))
       (sha256
        (base32 "13qzd4f3iskf8g0l3d7bi22kp0mp5hpfidjvyxzi5zyx787vpaw2"))))
    (properties `((upstream-name . "iChip")))
    (build-system r-build-system)
    (propagated-inputs (list r-limma))
    (home-page "https://bioconductor.org/packages/iChip")
    (synopsis
     "Bayesian Modeling of ChIP-chip Data Through Hidden Ising Models")
    (description
     "Hidden Ising models are implemented to identify enriched genomic regions in
@code{ChIP-chip} data.  They can be used to analyze the data from multiple
platforms (e.g., Affymetrix, Agilent, and @code{NimbleGen}), and the data with
single to multiple replicates.")
    (license license:gpl2+)))

(define-public r-icheck
  (package
    (name "r-icheck")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iCheck" version))
       (sha256
        (base32 "1yz4f8cs8vna8rq3064md37mgidg4nzn2204zzbbpnwsx23mz1mc"))))
    (properties `((upstream-name . "iCheck")))
    (build-system r-build-system)
    (propagated-inputs (list r-scatterplot3d
                             r-rgl
                             r-randomforest
                             r-preprocesscore
                             r-mass
                             r-lumi
                             r-lmtest
                             r-limma
                             r-gplots
                             r-geneselectmmd
                             r-biobase
                             r-affy))
    (home-page "https://bioconductor.org/packages/iCheck")
    (synopsis
     "QC Pipeline and Data Analysis Tools for High-Dimensional Illumina mRNA Expression Data")
    (description
     "QC pipeline and data analysis tools for high-dimensional Illumina @code{mRNA}
expression data.")
    (license license:gpl2+)))

(define-public r-icetea
  (package
    (name "r-icetea")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "icetea" version))
       (sha256
        (base32 "0l204ak1br5xhlmp21v4qxc5fzrpg74ylaac63dvvhpkhphl51iz"))))
    (properties `((upstream-name . "icetea")))
    (build-system r-build-system)
    (propagated-inputs (list r-variantannotation
                             r-txdb-dmelanogaster-ucsc-dm6-ensgene
                             r-summarizedexperiment
                             r-shortread
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-limma
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-edger
                             r-deseq2
                             r-csaw
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vivekbhr/icetea")
    (synopsis "Integrating Cap Enrichment with Transcript Expression Analysis")
    (description
     "icetea (Integrating Cap Enrichment with Transcript Expression Analysis) provides
functions for end-to-end analysis of multiple 5'-profiling methods such as CAGE,
RAMPAGE and MAPCap, beginning from raw reads to detection of transcription start
sites using replicates.  It also allows performing differential TSS detection
between group of samples, therefore, integrating the @code{mRNA} cap enrichment
information with transcript expression analysis.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-icare
  (package
    (name "r-icare")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iCARE" version))
       (sha256
        (base32 "0m6cfcpviw1fxcg73zzjv1s8ynx47x2mfdpydsnkwfvc3r536xca"))))
    (properties `((upstream-name . "iCARE")))
    (build-system r-build-system)
    (propagated-inputs (list r-plotrix r-hmisc r-gtools))
    (home-page "https://bioconductor.org/packages/iCARE")
    (synopsis
     "Tool for Individualized Coherent Absolute Risk Estimation (iCARE)")
    (description
     "An R package to compute Individualized Coherent Absolute Risk Estimators.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-ibmq
  (package
    (name "r-ibmq")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iBMQ" version))
       (sha256
        (base32 "11i8fzf2i84x36xmq3dwndhvqgbrcj48p3ambn643r9pp27vmpdm"))))
    (properties `((upstream-name . "iBMQ")))
    (build-system r-build-system)
    (inputs (list gsl))
    (propagated-inputs (list r-ggplot2 r-biobase))
    (native-inputs (list pkg-config))
    (home-page "http://www.rglab.org")
    (synopsis "integrated Bayesian Modeling of eQTL data")
    (description "integrated Bayesian Modeling of @code{eQTL} data")
    (license license:artistic2.0)))

(define-public r-ibh
  (package
    (name "r-ibh")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ibh" version))
       (sha256
        (base32 "1xwcvj5zaax3z7c8nnlrmg1bj1wjrrpx5fg5zknhfkv96ycvbk5s"))))
    (properties `((upstream-name . "ibh")))
    (build-system r-build-system)
    (propagated-inputs (list r-simpintlists))
    (home-page "https://bioconductor.org/packages/ibh")
    (synopsis "Interaction Based Homogeneity for Evaluating Gene Lists")
    (description
     "This package contains methods for calculating Interaction Based Homogeneity to
evaluate fitness of gene lists to an interaction network which is useful for
evaluation of clustering results and gene list analysis. @code{BioGRID}
interactions are used in the calculation.  The user can also provide their own
interactions.")
    (license license:gpl2+)))

(define-public r-ibbig
  (package
    (name "r-ibbig")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iBBiG" version))
       (sha256
        (base32 "1vysyhayxls2vpll48gskw82aizjhyqbf234j1say13kjnnn8fb3"))))
    (properties `((upstream-name . "iBBiG")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable r-biclust r-ade4))
    (home-page "http://bcb.dfci.harvard.edu/~aedin/publications/")
    (synopsis "Iterative Binary Biclustering of Genesets")
    (description
     "@code{iBBiG} is a bi-clustering algorithm which is optimizes for binary data
analysis.  We apply it to meta-gene set analysis of large numbers of gene
expression datasets.  The iterative algorithm extracts groups of phenotypes from
multiple studies that are associated with similar gene sets. @code{iBBiG} does
not require prior knowledge of the number or scale of clusters and allows
discovery of clusters with diverse sizes")
    (license license:artistic2.0)))

(define-public r-iasva
  (package
    (name "r-iasva")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iasva" version))
       (sha256
        (base32 "14p159ffi41lg56kjc2yafrxd8d0miqnavdnbspaal8l6r4qr10y"))))
    (properties `((upstream-name . "iasva")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-irlba r-cluster
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/iasva")
    (synopsis "Iteratively Adjusted Surrogate Variable Analysis")
    (description
     "Iteratively Adjusted Surrogate Variable Analysis (IA-SVA) is a statistical
framework to uncover hidden sources of variation even when these sources are
correlated.  IA-SVA provides a flexible methodology to i) identify a hidden
factor for unwanted heterogeneity while adjusting for all known factors; ii)
test the significance of the putative hidden factor for explaining the unmodeled
variation in the data; and iii), if significant, use the estimated factor as an
additional known factor in the next iteration to uncover further hidden factors.")
    (license license:gpl2)))

(define-public r-iaseq
  (package
    (name "r-iaseq")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "iASeq" version))
       (sha256
        (base32 "0jaa4y13c6ra5axfw07g9pvmzybmyf3l2f6jya4cg9inqxvircv6"))))
    (properties `((upstream-name . "iASeq")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/iASeq")
    (synopsis
     "iASeq: integrating multiple sequencing datasets for detecting allele-specific events")
    (description
     "It fits correlation motif model to multiple RNAseq or @code{ChIPseq} studies to
improve detection of allele-specific events and describe correlation patterns
across studies.")
    (license license:gpl2)))

