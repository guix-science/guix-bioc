(define-module (guix-bioc packages n)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages gcc)
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
  #:use-module (guix-cran packages g)
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
  #:use-module (guix-bioc packages m)
  #:use-module (guix-bioc packages l)
  #:use-module (guix-bioc packages k)
  #:use-module (guix-bioc packages j)
  #:use-module (guix-bioc packages i)
  #:use-module (guix-bioc packages h)
  #:use-module (guix-bioc packages g)
  #:use-module (guix-bioc packages f)
  #:use-module (guix-bioc packages e)
  #:use-module (guix-bioc packages d)
  #:use-module (guix-bioc packages c)
  #:use-module (guix-bioc packages b)
  #:use-module (guix-bioc packages a))

(define-public r-nxtirfdata
  (package
    (name "r-nxtirfdata")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NxtIRFdata" version
                              'experiment))
       (sha256
        (base32 "0qwqpzaqp9m8202sp7pdpii90j9yh97ipk36ivh9ba3s05agwq8p"))))
    (properties `((upstream-name . "NxtIRFdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-rtracklayer r-r-utils r-experimenthub
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/alexchwong/NxtIRFdata")
    (synopsis "Data for NxtIRF")
    (description
     "@code{NxtIRFdata} is a companion package for @code{SpliceWiz}, an interactive
analysis and visualization tool for alternative splicing quantitation (including
intron retention) for RNA-seq BAM files. @code{NxtIRFdata} contains Mappability
files required for the generation of human and mouse references.
@code{NxtIRFdata} also contains a synthetic genome reference and example BAM
files used to demonstrate @code{SpliceWiz's} functionality.  BAM files are based
on 6 samples from the Leucegene dataset provided by NCBI Gene Expression Omnibus
under accession number GSE67039.")
    (license license:expat)))

(define-public r-nupop
  (package
    (name "r-nupop")
    (version "2.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NuPoP" version))
       (sha256
        (base32 "1w6q7ms57wixw5w3fx74qc6l8mgcklysqq1s6jg69mipwgch62hm"))))
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

(define-public r-nullrangesdata
  (package
    (name "r-nullrangesdata")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nullrangesData" version
                              'experiment))
       (sha256
        (base32 "099ynygy9ld7ckzh38rf5nglx70mjwha0jz3ngn85ncnaz64cw26"))))
    (properties `((upstream-name . "nullrangesData")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-interactionset r-genomicranges r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/nullrangesData")
    (synopsis "ExperimentHub datasets for the nullranges package")
    (description
     "This package provides datasets for the nullranges package vignette, in
particular example datasets for DNase hypersensitivity sites (DHS), CTCF binding
sites, and CTCF genomic interactions.  These are used to demonstrate generation
of null hypothesis feature sets, either through block bootstrapping or matching,
in the nullranges vignette.  For more details, see the data object man pages,
and the R scripts for object construction provided within the package.")
    (license license:gpl3)))

(define-public r-nullranges
  (package
    (name "r-nullranges")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nullranges" version))
       (sha256
        (base32 "0a20aqqja5nkp39v7mxjnc98in63zhl00mnhsm952ja7v1l2xfsw"))))
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

(define-public r-nugomm1a520177probe
  (package
    (name "r-nugomm1a520177probe")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nugomm1a520177probe" version
                              'annotation))
       (sha256
        (base32 "1n70k0mhv146983myjgk1cgkr9rmmcpqdv8wpkcr320qcvgf9bn7"))))
    (properties `((upstream-name . "nugomm1a520177probe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/nugomm1a520177probe")
    (synopsis "Probe sequence data for microarrays of type nugomm1a520177")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.20.  The probe sequence data was obtained from http://www.affymetrix.com.")
    (license license:lgpl2.0+)))

(define-public r-nugomm1a520177cdf
  (package
    (name "r-nugomm1a520177cdf")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nugomm1a520177cdf" version
                              'annotation))
       (sha256
        (base32 "0skd5b76si0vydzk5qhg4f1a1j655alxflm9sqci8fi8safwj96a"))))
    (properties `((upstream-name . "nugomm1a520177cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/nugomm1a520177cdf")
    (synopsis "nugomm1a520177cdf")
    (description
     "This package provides a package containing an environment representing the
@code{NuGO_Mm1a520177.cdf} file.")
    (license license:lgpl2.0+)))

(define-public r-nugomm1a520177-db
  (package
    (name "r-nugomm1a520177-db")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nugomm1a520177.db" version
                              'annotation))
       (sha256
        (base32 "1s3q5hgyz3ikf8bd8c20s6dsl48nymmjz9fwqpq58xrx91sqb7q5"))))
    (properties `((upstream-name . "nugomm1a520177.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/nugomm1a520177.db")
    (synopsis
     "Affymetrix nugomm1a520177 annotation data (chip nugomm1a520177)")
    (description
     "Affymetrix nugomm1a520177 annotation data (chip nugomm1a520177) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-nugohs1a520180probe
  (package
    (name "r-nugohs1a520180probe")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nugohs1a520180probe" version
                              'annotation))
       (sha256
        (base32 "1zyy4w7c2hx790kxa5bv94nijhmk5fb22ps19jbwwqf7r0d2ffhn"))))
    (properties `((upstream-name . "nugohs1a520180probe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/nugohs1a520180probe")
    (synopsis "Probe sequence data for microarrays of type nugohs1a520180")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.20.  The probe sequence data was obtained from http://www.affymetrix.com.")
    (license license:lgpl2.0+)))

(define-public r-nugohs1a520180cdf
  (package
    (name "r-nugohs1a520180cdf")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nugohs1a520180cdf" version
                              'annotation))
       (sha256
        (base32 "1gpa769y27bs4ncicld4994sn6l1h738m1cbv27g58k58r930m1i"))))
    (properties `((upstream-name . "nugohs1a520180cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/nugohs1a520180cdf")
    (synopsis "nugohs1a520180cdf")
    (description
     "This package provides a package containing an environment representing the
@code{NuGO_Hs1a520180.cdf} file.")
    (license license:lgpl2.0+)))

(define-public r-nugohs1a520180-db
  (package
    (name "r-nugohs1a520180-db")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nugohs1a520180.db" version
                              'annotation))
       (sha256
        (base32 "0r0x8j3safvdncm4s91qircqdcxzyhmq2ad2sf73dcg74pjv0s2w"))))
    (properties `((upstream-name . "nugohs1a520180.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/nugohs1a520180.db")
    (synopsis
     "Affymetrix nugohs1a520180 annotation data (chip nugohs1a520180)")
    (description
     "Affymetrix nugohs1a520180 annotation data (chip nugohs1a520180) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-nucpos
  (package
    (name "r-nucpos")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nuCpos" version))
       (sha256
        (base32 "03qv4p5mvwbnm2grfnrszphv3c0k2lwja5cbq27cv6il7bnz8m0m"))))
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
    (version "2.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nucleR" version))
       (sha256
        (base32 "1gbn4rpgil579xkrwd78wc7h6h0f8j1kjz0vvlijy63i6g380wfk"))))
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nucleoSim" version))
       (sha256
        (base32 "0f64601jm3bvcdpls3d5njpparkb5h5v6zvhb1jf46fdvyg4xcss"))))
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
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NTW" version))
       (sha256
        (base32 "1knkqrs3rlhl9qvp6670hc7qhgyi6pmcs47xcivpn2jk6ss00xhk"))))
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
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "npGSEA" version))
       (sha256
        (base32 "1d9q7jy6axmh62xs4m1lxfh8j7vwq4k995l28hcfwh7qk38k4gqr"))))
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NPARC" version))
       (sha256
        (base32 "0giq5nxqnsqppz12adln7kvdb8lifch57wg6avdl88xrdzpl3vfw"))))
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

(define-public r-norway981-db
  (package
    (name "r-norway981-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Norway981.db" version
                              'annotation))
       (sha256
        (base32 "04ngc2hilqi9m7933mnm7jcvkxlz68vqqh5b628db575vcxql9b9"))))
    (properties `((upstream-name . "Norway981.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/Norway981.db")
    (synopsis
     "Norway981 http://genome-www5.stanford.edu/ Annotation Data (Norway981)")
    (description
     "Norway981 http://genome-www5.stanford.edu/ Annotation Data (Norway981) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-normr
  (package
    (name "r-normr")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "normr" version))
       (sha256
        (base32 "1lkh4a6c499g4wicj4khkyhz361k4q0aydk4gc122vn4877z14c6"))))
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
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NormqPCR" version))
       (sha256
        (base32 "1fl7qm6qmzxvv41qd1y8ds3r6dqk39rqgh6sl8imbggmnpb27j9h"))))
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NormalyzerDE" version))
       (sha256
        (base32 "1kiwyf8fkdp7bml4b5f32schyl0s5c0b1ag4g826rakh487sb69b"))))
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "normalize450K" version))
       (sha256
        (base32 "0iavswwgv0qhnwlf99nxrpmswbd5m9ihi7i68gby07hmsl5gci2a"))))
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NoRCE" version))
       (sha256
        (base32 "0di23zmjfba4nmbbkcn2xhqamxxn4hfkhyh3skc46b66rl1yjy3n"))))
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

(define-public r-nnsvg
  (package
    (name "r-nnsvg")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nnSVG" version))
       (sha256
        (base32 "00346z7i5hgljylv00l5pcmj3y769mqnhac0f4l7jhiww3xswfbs"))))
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
    (version "2.68.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nnNorm" version))
       (sha256
        (base32 "1r3klap7yazz73jh7dja1wlgg9ladfw1aaljirbiq1dvlb1q1i8f"))))
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
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nipalsMCIA" version))
       (sha256
        (base32 "0r14hmglxlrwryc6qwn20vfrmy5k2pk7l73d3fz5bmfja06ms6n5"))))
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
    (version "2.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ngsReports" version))
       (sha256
        (base32 "11k4fbwy6shkb3z9np7wnnhbjpka3ymm8ja8dnw1jpdc3l1jx537"))))
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
                             r-plotly
                             r-patchwork
                             r-lubridate
                             r-lifecycle
                             r-jsonlite
                             r-ggplot2
                             r-ggdendro
                             r-forcats
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
    (license license:lgpl3)))

(define-public r-ngscopydata
  (package
    (name "r-ngscopydata")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NGScopyData" version
                              'experiment))
       (sha256
        (base32 "1j780dkzv08ajyz0c9dh2ygqsyycyhnzvxl1jrc3gvxdddr1syvj"))))
    (properties `((upstream-name . "NGScopyData")))
    (build-system r-build-system)
    (home-page
     "http://www.bioconductor.org/packages/release/data/experiment/html/NGScopyData.html")
    (synopsis
     "Subset of BAM files of human tumor and pooled normal sequencing data (Zhao et al. 2014) for the NGScopy package")
    (description
     "Subset of BAM files of human lung tumor and pooled normal samples by targeted
panel sequencing. [Zhao et al 2014.  Targeted Sequencing in Non-Small Cell Lung
Cancer (NSCLC) Using the University of North Carolina (UNC) Sequencing Assay
Captures Most Previously Described Genetic Aberrations in NSCLC. In
preparation.] Each sample is a 10 percent random subsample drawn from the
original sequencing data.  The pooled normal sample has been rescaled accroding
to the total number of normal samples in the \"pool\".  Here provided is the
subsampled data on chr6 (hg19).")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-newwave
  (package
    (name "r-newwave")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NewWave" version))
       (sha256
        (base32 "03m6dd0p2d542k36jwvz9ik8cddw1q3dz9ghqy0w1dbf685r0kf0"))))
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

(define-public r-neve2006
  (package
    (name "r-neve2006")
    (version "0.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Neve2006" version
                              'experiment))
       (sha256
        (base32 "0w3ph610lhxyg1knhsnnxpw32sw2n5p57svpbhqm3zmphx29nw3h"))))
    (properties `((upstream-name . "Neve2006")))
    (build-system r-build-system)
    (propagated-inputs (list r-hgu133a-db r-biobase r-annotate))
    (home-page "https://bioconductor.org/packages/Neve2006")
    (synopsis "expression and CGH data on breast cancer cell lines")
    (description
     "Experimental organization of combined expression and CGH data.")
    (license license:artistic2.0)))

(define-public r-neuca
  (package
    (name "r-neuca")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NeuCA" version))
       (sha256
        (base32 "0k5bqdrja3x238fyrd7dm5jm94igh25b0ipb2zj6scpa4m15n67l"))))
    (properties `((upstream-name . "NeuCA")))
    (build-system r-build-system)
    (propagated-inputs (list r-singlecellexperiment r-limma r-keras
                             r-kableextra r-e1071))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/NeuCA")
    (synopsis "NEUral network-based single-Cell Annotation tool")
    (description
     "@code{NeuCA} is is a neural-network based method for @code{scRNA-seq} data
annotation.  It can automatically adjust its classification strategy depending
on cell type correlations, to accurately annotate cell. @code{NeuCA} can
automatically utilize the structure information of the cell types through a
hierarchical tree to improve the annotation accuracy.  It is especially helpful
when the data contain closely correlated cell types.")
    (license license:gpl2)))

(define-public r-netzoor
  (package
    (name "r-netzoor")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "netZooR" version))
       (sha256
        (base32 "0z1wi0csnpjz70q5pl5wmdfgqnq66yk9gysxxid8rmkagqxvbg73"))))
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "netSmooth" version))
       (sha256
        (base32 "0nry64lvqwwq672c6callfjfa0y14igvqpvrvfs2hm0qj8qmg2q8"))))
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
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NetSAM" version))
       (sha256
        (base32 "07l5cgl72mkh3j96lciwalsb0ps0bs7rfxzm78m5279palawf6vb"))))
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
    (version "1.64.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "netresponse" version))
       (sha256
        (base32 "13lynfqsbv8cp6hd452bky4mkf029jwvryx8mzdcx15r4hwsqh5r"))))
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "netprioR" version))
       (sha256
        (base32 "0kgsgjc2q4wvdwbqfx79ql85k6xc60165zair7nwc89wn07rnswy"))))
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
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NetPathMiner" version))
       (sha256
        (base32 "1fv4ijiksp2ff5sxjgp1bfzxfcqr853nrsdgfn0i8zqz9ba20a6p"))))
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

(define-public r-nethet
  (package
    (name "r-nethet")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nethet" version))
       (sha256
        (base32 "1mr42pdm2sjpbmiiwjpqd0pvbnc5imlgmg14swc2pp66dl60g7b3"))))
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "netDx" version))
       (sha256
        (base32 "00ghcj5hzb06pi9aj2rdnasyqgqnvr9qjb0m6b0476yv2mx5x24k"))))
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
patient similarity networks.  Molecular Systems Biology.  15, e8497.")
    (license license:expat)))

(define-public r-netboost
  (package
    (name "r-netboost")
    (version "2.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "netboost" version))
       (sha256
        (base32 "0xirmys108qhxg7073vm90463a7qs6z557516ff1yczhldaq4psy"))))
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

(define-public r-netactivitydata
  (package
    (name "r-netactivitydata")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NetActivityData" version
                              'experiment))
       (sha256
        (base32 "1jcj9k5mzf30wimwwv4gix85n597bv20bjh32nrha2yqiihp9k34"))))
    (properties `((upstream-name . "NetActivityData")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/NetActivityData")
    (synopsis
     "Data required for getting the gene set scores with NetActivity package")
    (description
     "This package contains the weights from pre-trained shallow sparsely-connected
autoencoders.  This data is required for getting the gene set scores with
@code{NetActivity} package.")
    (license license:expat)))

(define-public r-netactivity
  (package
    (name "r-netactivity")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NetActivity" version))
       (sha256
        (base32 "0hssxa9i5c090929mnjs7nqn56fmg7qhq0iknfrl9d0wvpibm3bh"))))
    (properties `((upstream-name . "NetActivity")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-netactivitydata
                             r-deseq2
                             r-delayedmatrixstats
                             r-delayedarray
                             r-airway))
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

(define-public r-nestlink
  (package
    (name "r-nestlink")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NestLink" version
                              'experiment))
       (sha256
        (base32 "1yh1nivipyrx3h0par8cf943licl1rs47jvfwz1392hi09vji15j"))))
    (properties `((upstream-name . "NestLink")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-shortread
                             r-protviz
                             r-gplots
                             r-experimenthub
                             r-biostrings
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/NestLink")
    (synopsis
     "NestLink an R data package to guide through Engineered Peptide Barcodes for In-Depth Analyzes of Binding Protein Ensembles")
    (description
     "This package provides next-generation sequencing (NGS) and mass spectrometry
(MS) sample data, code snippets and replication material used for developing
@code{NestLink}.  The @code{NestLink} approach is a protein binder selection and
identification technology able to biophysically characterize thousands of
library members at once without handling individual clones at any stage of the
process.  Data were acquired on NGS and MS platforms at the Functional Genomics
Center Zurich.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-nempi
  (package
    (name "r-nempi")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nempi" version))
       (sha256
        (base32 "069b7kmpz38s7240ac8iw8m80w62lrly01khfl8b3kikhlr82jcq"))))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nearBynding" version))
       (sha256
        (base32 "0ni6mipdbwzc0gi8mws1d1b8ylj0pjlvi81kv9r3pm93psr67pj3"))))
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ndexr" version))
       (sha256
        (base32 "1jl7z4a1rdsivc774k15v3q40isgp1ly3lsmgflfkq7jsx62xl5j"))))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ncRNAtools" version))
       (sha256
        (base32 "151s12kg88x4nymzvpzwlfil7rvrbaa99agfxzz03r8dyjnqrqlq"))))
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

(define-public r-ncigraphdata
  (package
    (name "r-ncigraphdata")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NCIgraphData" version
                              'experiment))
       (sha256
        (base32 "0macj01775q3dzqhvsbfb2gkz0s8w49vgbfh2nhpgfykwzx5bwjm"))))
    (properties `((upstream-name . "NCIgraphData")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/NCIgraphData")
    (synopsis "Data for the NCIgraph software package")
    (description
     "This package provides pathways from the NCI Pathways Database as R graph
objects.")
    (license license:gpl3)))

(define-public r-ncigraph
  (package
    (name "r-ncigraph")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NCIgraph" version))
       (sha256
        (base32 "16kkg568hdjsn4jq9hd9gl1n31wavshn79bpwhg5jxci288zgai0"))))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ncGTW" version))
       (sha256
        (base32 "1x9q4c3xkz984nz33bbh753181qx655zkl46i00h7a9khnab9cdv"))))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NBAMSeq" version))
       (sha256
        (base32 "1iglbxv7wcgn7lwah8jd1q7gsrqjr3874nivl1msla35hkqw4v9a"))))
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

(define-public r-nanotubes
  (package
    (name "r-nanotubes")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nanotubes" version
                              'experiment))
       (sha256
        (base32 "0gsgs0i3117753pxypr2q8pc3zc8bd3fkp5xj30jx142wvi4y0al"))))
    (properties `((upstream-name . "nanotubes")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/MalteThodberg/nanotubes")
    (synopsis "Mouse nanotube CAGE data")
    (description
     "Cap Analysis of Gene Expression (CAGE) data from \"Identification of Gene
Transcription Start Sites and Enhancers Responding to Pulmonary Carbon Nanotube
Exposure in Vivo\" by Bornholdt et al.  supplied as CAGE Transcription Start
Sites (CTSSs).")
    (license license:gpl3)))

(define-public r-nanotube
  (package
    (name "r-nanotube")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NanoTube" version))
       (sha256
        (base32 "1i5fs2lkqmyl0hb1s6f56z3wmwhmvw2mkygl3ibn0qwfh460l4f1"))))
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

(define-public r-nanostringnctools
  (package
    (name "r-nanostringnctools")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NanoStringNCTools" version))
       (sha256
        (base32 "1n1zc99v5xzd89q512v24wa7gmbgdp8g9aixvh6cjismah0vpgjr"))))
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
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NanoStringDiff" version))
       (sha256
        (base32 "0rasmzc12xl6mh9l2989wgp9q30665iqqgxr1fy6r57j7hixwbc1"))))
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

(define-public r-nanoporernaseq
  (package
    (name "r-nanoporernaseq")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NanoporeRNASeq" version
                              'experiment))
       (sha256
        (base32 "0lpjxpw5jd4zj9pjd3xjcaxkcn135rbhz628zpl44qrdnmyjg2wk"))))
    (properties `((upstream-name . "NanoporeRNASeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/GoekeLab/NanoporeRNASeq")
    (synopsis "Nanopore RNA-Seq Example data")
    (description
     "The @code{NanoporeRNASeq} package contains long read RNA-Seq data generated
using Oxford Nanopore Sequencing.  The data consists of 6 samples from two human
cell lines (K562 and MCF7) that were generated by the SG-NEx project.  Each of
these cell lines has three replicates, with 1 direct RNA sequencing data and 2
@code{cDNA} sequencing data.  Reads are aligned to chromosome 22 (Grch38) and
stored as bam files.  The original data is from the SG-NEx project.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-nanomethviz
  (package
    (name "r-nanomethviz")
    (version "3.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NanoMethViz" version))
       (sha256
        (base32 "0nlbkikmxdq08m24sch8cy10m63v33536p5rx1zy5c4f4pa86yrw"))))
    (properties `((upstream-name . "NanoMethViz")))
    (build-system r-build-system)
    (inputs (list zlib))
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
    (synopsis "Visualise methylation data from Oxford Nanopore sequencing")
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NADfinder" version))
       (sha256
        (base32 "18bq7jf7f89263s4f4ib3qzlpwxsp181zjjm0cblkhjs7lw8p2zh"))))
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

