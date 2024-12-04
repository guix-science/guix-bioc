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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NxtIRFdata" version
                              'experiment))
       (sha256
        (base32 "1i2s3mpv057qb543rs4dyqfr9h75w3v1rswrix5lbkp2654n323b"))))
    (properties `((upstream-name . "NxtIRFdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (version "2.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NuPoP" version))
       (sha256
        (base32 "1rrilv50pldi76sypxp42ibh676x9cp7d4cfcc9bh02220ai8zqv"))))
    (properties `((upstream-name . "NuPoP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nullrangesData" version
                              'experiment))
       (sha256
        (base32 "0mi1h40aagfxh79hpcd0bvbp7g4fwzggsnagny9i58sixbjj4kf8"))))
    (properties `((upstream-name . "nullrangesData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nullranges" version))
       (sha256
        (base32 "0kv1jgdsaj65g1j848clszbnf0zwlpq75sxm4xal5ai4llx16206"))))
    (properties `((upstream-name . "nullranges")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nuCpos" version))
       (sha256
        (base32 "0wsxwdwjf6fm2p92jnd1fs99mxchfdqpm1qa7q61g1l2xjsmjhpw"))))
    (properties `((upstream-name . "nuCpos")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "2.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nucleR" version))
       (sha256
        (base32 "0y63jh1d3ms4jpgvig64af64gandbn632fzibfjpyj015zyaamg8"))))
    (properties `((upstream-name . "nucleR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nucleoSim" version))
       (sha256
        (base32 "02fv54fb9qqmicyr8hkrr6rd9gg74wdg05v2k6gdmp9cph37dcqb"))))
    (properties `((upstream-name . "nucleoSim")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.56.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NTW" version))
       (sha256
        (base32 "044ampz8mwvs5kqfy97pz8f50d39ssjmgr5j5s7lyijr4y4dkvlx"))))
    (properties `((upstream-name . "NTW")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "npGSEA" version))
       (sha256
        (base32 "17gn5axgplx935s9f4y1m21nxagkpdd29rvmrxc0qya6a8zfriy3"))))
    (properties `((upstream-name . "npGSEA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NPARC" version))
       (sha256
        (base32 "1fic3ss8vnvz0gf8xfv0x995c0pw1s6qij3x3jyhwp0f4gn3h9mb"))))
    (properties `((upstream-name . "NPARC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "normr" version))
       (sha256
        (base32 "00rng96zpa0bp2j39ysvh6wf87pbbkxkaby651h8a3pl20bfs3s1"))))
    (properties `((upstream-name . "normr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NormqPCR" version))
       (sha256
        (base32 "1ykpyv8wbz2lvw5b6bwi3b97sk084wdzafy0zrghbxhvpjdkaqiy"))))
    (properties `((upstream-name . "NormqPCR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NormalyzerDE" version))
       (sha256
        (base32 "17f6224zl25vi2z2mf69i4273356bwrq8myr0dvqap63cmfilbbc"))))
    (properties `((upstream-name . "NormalyzerDE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vsn
                             r-summarizedexperiment
                             r-preprocesscore
                             r-matrixstats
                             r-mass
                             r-limma
                             r-ggplot2
                             r-ggforce
                             r-car
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
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "normalize450K" version))
       (sha256
        (base32 "1hlj8habzbsmxdia5aw3khpl12v4zchchs8nk4mmvvhwa81lr326"))))
    (properties `((upstream-name . "normalize450K")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NoRCE" version))
       (sha256
        (base32 "0npl2x2d5jxjljwd6z3rdhw39psy1mdv2rb03ag4mj1zkxqjdzyf"))))
    (properties `((upstream-name . "NoRCE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nnSVG" version))
       (sha256
        (base32 "0gvrazxcw7v9ylcvm73npgqsc0knyy8vrdf6ypkbiyjz5n9vw27b"))))
    (properties `((upstream-name . "nnSVG")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "2.70.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nnNorm" version))
       (sha256
        (base32 "1cr3ddbrfjhlqxjm43knmmmw8xzx9j2j1kkkxd1cj1nh86v3hn5n"))))
    (properties `((upstream-name . "nnNorm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nipalsMCIA" version))
       (sha256
        (base32 "08gcky7vcbsyv5pr254nnv2f7sjlal7092dsq74m2rcmmykb555c"))))
    (properties `((upstream-name . "nipalsMCIA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "2.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ngsReports" version))
       (sha256
        (base32 "01mgah5b8741y9pqrww9ikwmw823xr5i00jsjbazmhr82h2ksm4z"))))
    (properties `((upstream-name . "ngsReports")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NGScopyData" version
                              'experiment))
       (sha256
        (base32 "123gla377dck6vvki3dxv7absscp73229i2sl1p1kfzmy0bvf4lk"))))
    (properties `((upstream-name . "NGScopyData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NewWave" version))
       (sha256
        (base32 "14iwsgcl9pfljb0zvsfmm7wr38zrcvd5i9vpx4aira7b2l9c18rc"))))
    (properties `((upstream-name . "NewWave")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "0.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Neve2006" version
                              'experiment))
       (sha256
        (base32 "0qbqd501scsdx0d7s1pxfjdy2r7nj9d0dgfs368cpbf28wab51jw"))))
    (properties `((upstream-name . "Neve2006")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-hgu133a-db r-biobase r-annotate))
    (home-page "https://bioconductor.org/packages/Neve2006")
    (synopsis "expression and CGH data on breast cancer cell lines")
    (description
     "Experimental organization of combined expression and CGH data.")
    (license license:artistic2.0)))

(define-public r-netzoor
  (package
    (name "r-netzoor")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "netZooR" version))
       (sha256
        (base32 "11rq1lhxhwij6wik087wmnzk8aswhmmf3yzcpiljxbk8szsm8np7"))))
    (properties `((upstream-name . "netZooR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "netSmooth" version))
       (sha256
        (base32 "0pwnzapfv4c39zggzfylxp7lz7hid3483qq1wdphz99nf796x3hm"))))
    (properties `((upstream-name . "netSmooth")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NetSAM" version))
       (sha256
        (base32 "15c4z3fpk9kwqslkrds9jk8mf7gl618smi53dwgfbg3gi7vysgmp"))))
    (properties `((upstream-name . "NetSAM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.66.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "netresponse" version))
       (sha256
        (base32 "0xaikq96ip8g7xhsljr0z849aqj30sfdh4zdqxvabwbkh0ygxl8k"))))
    (properties `((upstream-name . "netresponse")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "netprioR" version))
       (sha256
        (base32 "15v33ckc58r9yars5wpbm32pvlsdwnc5a6wnalkg72xjr5s1vqjy"))))
    (properties `((upstream-name . "netprioR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NetPathMiner" version))
       (sha256
        (base32 "0dh2wp4ljg5vw13cg8h4hdvhd6n5sj50xjj04h7zpp96a2rjcr1i"))))
    (properties `((upstream-name . "NetPathMiner")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nethet" version))
       (sha256
        (base32 "11kyawxhzwda4n14h1hgvbvzbxl1khxn3ssrwhncdd3fmlkd67hx"))))
    (properties `((upstream-name . "nethet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-netboost
  (package
    (name "r-netboost")
    (version "2.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "netboost" version))
       (sha256
        (base32 "036n93rrcv1b892xmijdvg6slla6h6hmf28rq1cr5fabcjzx6vf5"))))
    (properties `((upstream-name . "netboost")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NetActivityData" version
                              'experiment))
       (sha256
        (base32 "0b6f07467l448dw2nrv243gf7mhhyq59w4by54iwdb9zk1gyvwlm"))))
    (properties `((upstream-name . "NetActivityData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NetActivity" version))
       (sha256
        (base32 "0m0256dsfkbx5b7qba04dywyphpqlw7zyciyddx48wzmxkasrabd"))))
    (properties `((upstream-name . "NetActivity")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NestLink" version
                              'experiment))
       (sha256
        (base32 "0fgl07gqipxmj0yqqa97inqdv8fma2n8lm20irpj825798f0iq6z"))))
    (properties `((upstream-name . "NestLink")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nempi" version))
       (sha256
        (base32 "16abvgv4vjbppkh41fsbjscxqjjfi0g8mqb8jf7k0psrvvfs0wg4"))))
    (properties `((upstream-name . "nempi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nearBynding" version))
       (sha256
        (base32 "0q5bpfvrb8qvklwc6zhvdrj0rq58p0gpqc08j7cgxhllkmiacisw"))))
    (properties `((upstream-name . "nearBynding")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ndexr" version))
       (sha256
        (base32 "0m6hzx0nk2bq9l40mnjil1vjqys9lvgflifp8gnk3skiw2ddjrsm"))))
    (properties `((upstream-name . "ndexr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ncRNAtools" version))
       (sha256
        (base32 "07kcwcf94vnm7byagnb4dkn1xpdimkp73vnglxh8d12s46vdpvcl"))))
    (properties `((upstream-name . "ncRNAtools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NCIgraphData" version
                              'experiment))
       (sha256
        (base32 "15bvrqyvd3lg9y5qy749dc7giq4hx9ixlk342gbf7n2jhnjhh0gz"))))
    (properties `((upstream-name . "NCIgraphData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/NCIgraphData")
    (synopsis "Data for the NCIgraph software package")
    (description
     "This package provides pathways from the NCI Pathways Database as R graph
objects.")
    (license license:gpl3)))

(define-public r-ncigraph
  (package
    (name "r-ncigraph")
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NCIgraph" version))
       (sha256
        (base32 "1bh1bpsb9fgnbyrfpi9n54ffxf513dqdr9w1i7xfnbkpv1q1zkmn"))))
    (properties `((upstream-name . "NCIgraph")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ncGTW" version))
       (sha256
        (base32 "1y1sc6qv5s2x0zg4wpvjflvzzi6zy4h0kvwds1j1kd9wm0ck9z6c"))))
    (properties `((upstream-name . "ncGTW")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NBAMSeq" version))
       (sha256
        (base32 "0cd3vmkprf4klkg5m0ak0mmdhbvy6rgvi96rn8r2s1jp6chdvcxp"))))
    (properties `((upstream-name . "NBAMSeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "nanotubes" version
                              'experiment))
       (sha256
        (base32 "0ah9f2arylvvg0ndbn65qc79f573lv8pl5mzv8mpcm3xdh0gcf7v"))))
    (properties `((upstream-name . "nanotubes")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NanoTube" version))
       (sha256
        (base32 "0phdjxvikia3bx6l8v9b1r85kclrc5zi6s0jrsg2dvpdyhcyjwn0"))))
    (properties `((upstream-name . "NanoTube")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NanoStringNCTools" version))
       (sha256
        (base32 "0yxp14jyw9xmnji1wc377hq3wnw4jrkcjwp1rqbfa75bnqcpfivk"))))
    (properties `((upstream-name . "NanoStringNCTools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NanoStringDiff" version))
       (sha256
        (base32 "12nags3h5261k4qhr8lclyyjbk4ai3hmw9wixpf3pp4qfjqcrmrq"))))
    (properties `((upstream-name . "NanoStringDiff")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NanoporeRNASeq" version
                              'experiment))
       (sha256
        (base32 "0z0aa9nd0f3l1ncl8gbm50x779lgpazi6fwzxl7p1xnrikwa7lzp"))))
    (properties `((upstream-name . "NanoporeRNASeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (version "3.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NanoMethViz" version))
       (sha256
        (base32 "17k55c7cr07ixnkas402jphjga5ixywmpiyd7bk8y6d5r5llxmgy"))))
    (properties `((upstream-name . "NanoMethViz")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib))
    (propagated-inputs (list r-zlibbioc
                             r-withr
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "NADfinder" version))
       (sha256
        (base32 "1vn1q0jks8d30mg9icn8s71ax9ixk2n2jxmsgprimvd9qrpwg7hj"))))
    (properties `((upstream-name . "NADfinder")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

