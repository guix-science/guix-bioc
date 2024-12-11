(define-module (guix-bioc packages r)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages bioconductor)
  #:use-module (guix-cran packages g)
  #:use-module (guix-cran packages k)
  #:use-module (gnu packages web)
  #:use-module (guix-cran packages s)
  #:use-module (guix-cran packages m)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages java)
  #:use-module (guix-cran packages e)
  #:use-module (guix-cran packages r)
  #:use-module (gnu packages chemistry)
  #:use-module (gnu packages maths)
  #:use-module (guix-cran packages l)
  #:use-module (guix-cran packages n)
  #:use-module (guix-cran packages i)
  #:use-module (gnu packages databases)
  #:use-module (gnu packages node)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages t)
  #:use-module (guix-bioc packages z)
  #:use-module (guix-bioc packages y)
  #:use-module (guix-bioc packages x)
  #:use-module (guix-bioc packages w)
  #:use-module (guix-bioc packages v)
  #:use-module (guix-bioc packages u)
  #:use-module (guix-bioc packages t)
  #:use-module (guix-bioc packages s)
  #:use-module (guix-bioc packages q)
  #:use-module (guix-bioc packages p)
  #:use-module (guix-bioc packages o)
  #:use-module (guix-bioc packages n)
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

(define-public r-rwikipathways
  (package
    (name "r-rwikipathways")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rWikiPathways" version))
       (sha256
        (base32 "025dd7w0fy6lbg56y5h2xqhax47p3kzsa90sac4fak3skaivg248"))))
    (properties `((upstream-name . "rWikiPathways")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml
                             r-tidyr
                             r-stringr
                             r-rjson
                             r-readr
                             r-rcurl
                             r-purrr
                             r-lubridate
                             r-httr
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/wikipathways/rwikipathways")
    (synopsis "rWikiPathways - R client library for the WikiPathways API")
    (description
     "Use this package to interface with the @code{WikiPathways} API. It provides
programmatic access to @code{WikiPathways} content in multiple data and image
formats, including official monthly release files and convenient GMT read/write
functions.")
    (license license:expat)))

(define-public r-rwgcod-db
  (package
    (name "r-rwgcod-db")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rwgcod.db" version
                              'annotation))
       (sha256
        (base32 "1k0fpnv314lx2jf3mm6xfqa3jx353sp42awxqys9byzhg9zyj2j3"))))
    (properties `((upstream-name . "rwgcod.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rwgcod.db")
    (synopsis
     "Codelink Rat Whole Genome Bioarray (~34 000 rat gene targets) annotation data (chip rwgcod)")
    (description
     "Codelink Rat Whole Genome Bioarray (~34 000 rat gene targets) annotation data
(chip rwgcod) assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-rvs
  (package
    (name "r-rvs")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RVS" version))
       (sha256
        (base32 "13f9m4w9dy3j6ayqpysiahmsn8mf03mhrjjcq094g58nqxpqly8s"))))
    (properties `((upstream-name . "RVS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-snpstats r-r-utils r-kinship2 r-grain r-genlib))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RVS")
    (synopsis
     "Computes estimates of the probability of related individuals sharing a rare variant")
    (description
     "Rare Variant Sharing (RVS) implements tests of association and linkage between
rare genetic variant genotypes and a dichotomous phenotype, e.g. a disease
status, in family samples.  The tests are based on probabilities of rare variant
sharing by relatives under the null hypothesis of absence of linkage and
association between the rare variants and the phenotype and apply to single
variants or multiple variants in a region (e.g. gene-based test).")
    (license license:gpl2)))

(define-public r-rvisdiff
  (package
    (name "r-rvisdiff")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rvisdiff" version))
       (sha256
        (base32 "0l90dykrhjqdww8667i825d0dik44q0bprxz8rwqyb4bc0pwqicq"))))
    (properties `((upstream-name . "Rvisdiff")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (propagated-inputs (list r-edger))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/BioinfoUSAL/Rvisdiff/")
    (synopsis "Interactive Graphs for Differential Expression")
    (description
     "This package creates a muti-graph web page which allows the interactive
exploration of differential expression results.  The graphical web interface
presents results as a table which is integrated with five interactive graphs:
MA-plot, volcano plot, box plot, lines plot and cluster heatmap.  Graphical
aspect and information represented in the graphs can be customized by means of
user controls.  Final graphics can be exported as PNG format.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-ruvnormalizedata
  (package
    (name "r-ruvnormalizedata")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RUVnormalizeData" version
                              'experiment))
       (sha256
        (base32 "1rbyrni2bfsm377vlmaw02wy0gz8llls7ad9h1mjiz0jw1jnql8i"))))
    (properties `((upstream-name . "RUVnormalizeData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/RUVnormalizeData")
    (synopsis "Gender data for the RUVnormalize package")
    (description
     "Microarray gene expression data from the study of Vawter et al., 2004.")
    (license license:gpl3)))

(define-public r-ruvnormalize
  (package
    (name "r-ruvnormalize")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RUVnormalize" version))
       (sha256
        (base32 "0ds9s7xlaz02jrk57gzn4dnalgs2l4gwx1s8rlk806la8zdj25dq"))))
    (properties `((upstream-name . "RUVnormalize")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ruvnormalizedata r-biobase))
    (home-page "https://bioconductor.org/packages/RUVnormalize")
    (synopsis "RUV for normalization of expression array data")
    (description
     "RUVnormalize is meant to remove unwanted variation from gene expression data
when the factor of interest is not defined, e.g., to clean up a dataset for
general use or to do any kind of unsupervised analysis.")
    (license license:gpl3)))

(define-public r-ruvcorr
  (package
    (name "r-ruvcorr")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RUVcorr" version))
       (sha256
        (base32 "174h0dvm8xaqg7mikmzzc2870gwfnx9bcbbf5ys5ksnifzh8ihz8"))))
    (properties `((upstream-name . "RUVcorr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-snowfall
                             r-reshape2
                             r-psych
                             r-mass
                             r-lattice
                             r-gridextra
                             r-corrplot
                             r-bladderbatch
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RUVcorr")
    (synopsis
     "Removal of unwanted variation for gene-gene correlations and related analysis")
    (description
     "RUVcorr allows to apply global removal of unwanted variation (ridged version of
RUV) to real and simulated gene expression data.")
    (license license:gpl2)))

(define-public r-runibic
  (package
    (name "r-runibic")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "runibic" version))
       (sha256
        (base32 "1gqv3bkz9ngfdgg639xa6zg1ysmzkxm5pr78s86an4f3bs63xppr"))))
    (properties `((upstream-name . "runibic")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-testthat r-summarizedexperiment r-rcpp
                             r-biclust))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/athril/runibic")
    (synopsis
     "runibic: row-based biclustering algorithm for analysis of gene expression data in R")
    (description
     "This package implements @code{UbiBic} algorithm in R. This biclustering
algorithm for analysis of gene expression data was introduced by Zhenjia Wang et
al.  in 2016.  It is currently considered the most promising biclustering method
for identification of meaningful structures in complex and noisy data.")
    (license license:expat)))

(define-public r-rtu34probe
  (package
    (name "r-rtu34probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rtu34probe" version
                              'annotation))
       (sha256
        (base32 "0mcp9lmc65j3ds73gyak72pkshnx6km0d2cm324yaxlp9bqzfchw"))))
    (properties `((upstream-name . "rtu34probe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rtu34probe")
    (synopsis "Probe sequence data for microarrays of type rtu34")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was RT-U34\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-rtu34cdf
  (package
    (name "r-rtu34cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rtu34cdf" version
                              'annotation))
       (sha256
        (base32 "10f5wnvk820c8brl2qqs7mv6jcn1v6pmz680kvlpyz9s2sz16936"))))
    (properties `((upstream-name . "rtu34cdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rtu34cdf")
    (synopsis "rtu34cdf")
    (description
     "This package provides a package containing an environment representing the
RT_U34.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-rtu34-db
  (package
    (name "r-rtu34-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rtu34.db" version
                              'annotation))
       (sha256
        (base32 "0ylny01v73m1v1bghk190i2nnjnymadvmp7s073ir7nyyw8gvzkf"))))
    (properties `((upstream-name . "rtu34.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rtu34.db")
    (synopsis
     "Affymetrix Affymetrix RT_U34 Array annotation data (chip rtu34)")
    (description
     "Affymetrix Affymetrix RT_U34 Array annotation data (chip rtu34) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-rtrmui
  (package
    (name "r-rtrmui")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rTRMui" version))
       (sha256
        (base32 "1dlivwfhzhdzn3gclg75pabswrydn1wap6izw0agdqj5pza5a9mp"))))
    (properties `((upstream-name . "rTRMui")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny r-rtrm r-org-mm-eg-db r-org-hs-eg-db
                             r-motifdb))
    (home-page "https://github.com/ddiez/rTRMui")
    (synopsis "shiny user interface for rTRM")
    (description
     "This package provides a web interface to compute transcriptional regulatory
modules with @code{rTRM}.")
    (license license:gpl3)))

(define-public r-rtrm
  (package
    (name "r-rtrm")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rTRM" version))
       (sha256
        (base32 "1fqfb0nzh9nil8x7q1w08i156qx45f82y99hs9ndfq8rmcfiqw8j"))))
    (properties `((upstream-name . "rTRM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsqlite r-igraph r-dbi r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ddiez/rTRM")
    (synopsis
     "Identification of Transcriptional Regulatory Modules from Protein-Protein Interaction Networks")
    (description
     "@code{rTRM} identifies transcriptional regulatory modules (TRMs) from
protein-protein interaction networks.")
    (license license:gpl3)))

(define-public r-rtreemix
  (package
    (name "r-rtreemix")
    (version "1.68.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rtreemix" version))
       (sha256
        (base32 "1n5wfwsj6x2rjq0b7ix8yhwsrxbmik55fnsk1681y7xd5krqprgh"))))
    (properties `((upstream-name . "Rtreemix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-hmisc r-graph r-biobase))
    (home-page "https://bioconductor.org/packages/Rtreemix")
    (synopsis "Rtreemix: Mutagenetic trees mixture models")
    (description
     "Rtreemix is a package that offers an environment for estimating the mutagenetic
trees mixture models from cross-sectional data and using them for various
predictions.  It includes functions for fitting the trees mixture models,
likelihood computations, model comparisons, waiting time estimations, stability
analysis, etc.")
    (license license:lgpl2.0+)))

(define-public r-rtpca
  (package
    (name "r-rtpca")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rtpca" version))
       (sha256
        (base32 "1kznxx9l61gdcbdzxxckgmbf3m9gjcm416jbz78cqjvismbq07m3"))))
    (properties `((upstream-name . "Rtpca")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-proc
                             r-ggplot2
                             r-fdrtool
                             r-dplyr
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Rtpca")
    (synopsis "Thermal proximity co-aggregation with R")
    (description
     "R package for performing thermal proximity co-aggregation analysis with thermal
proteome profiling datasets to analyse protein complex assembly and
(differential) protein-protein interactions across conditions.")
    (license license:gpl3)))

(define-public r-rtopper
  (package
    (name "r-rtopper")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTopper" version))
       (sha256
        (base32 "0qxbapwky27zc75sjsm2msqp0nrwvqfx4n386z7jlp4hqbj992wq"))))
    (properties `((upstream-name . "RTopper")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-multtest r-limma r-biobase))
    (home-page "https://bioconductor.org/packages/RTopper")
    (synopsis
     "This package is designed to perform Gene Set Analysis across multiple genomic platforms")
    (description
     "the RTopper package is designed to perform and integrate gene set enrichment
results across multiple genomic platforms.")
    (license (license:fsdg-compatible "GPL (>= 3) + file LICENSE"))))

(define-public r-rtnsurvival
  (package
    (name "r-rtnsurvival")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTNsurvival" version))
       (sha256
        (base32 "02jixshfbk2jxhj1659fmr5bxjqmb71c3pfljl7yff6wsl33a2g6"))))
    (properties `((upstream-name . "RTNsurvival")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-scales
                             r-rtnduals
                             r-rtn
                             r-rcolorbrewer
                             r-pheatmap
                             r-ggplot2
                             r-egg
                             r-dunn-test
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RTNsurvival")
    (synopsis
     "Survival analysis using transcriptional networks inferred by the RTN package")
    (description
     "RTNsurvival is a tool for integrating regulons generated by the RTN package with
survival information.  For a given regulon, the 2-tailed GSEA approach computes
a differential Enrichment Score (@code{dES}) for each individual sample, and the
@code{dES} distribution of all samples is then used to assess the survival
statistics for the cohort.  There are two main survival analysis workflows: a
Cox Proportional Hazards approach used to model regulons as predictors of
survival time, and a Kaplan-Meier analysis assessing the stratification of a
cohort based on the regulon activity.  All plots can be fine-tuned to the user's
specifications.")
    (license license:artistic2.0)))

(define-public r-rtnduals
  (package
    (name "r-rtnduals")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTNduals" version))
       (sha256
        (base32 "18qzwzjzn97js7ms9pzyvxyj14axplzn4ji5lh2nfvk6biw06ir1"))))
    (properties `((upstream-name . "RTNduals")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rtn))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RTNduals")
    (synopsis "Analysis of co-regulation and inference of 'dual regulons'")
    (description
     "RTNduals is a tool that searches for possible co-regulatory loops between
regulon pairs generated by the RTN package.  It compares the shared targets in
order to infer dual regulons', a new concept that tests whether regulators can
co-operate or compete in influencing targets.")
    (license license:artistic2.0)))

(define-public r-rtn
  (package
    (name "r-rtn")
    (version "2.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTN" version))
       (sha256
        (base32 "05kn9lwcg5cmlsg6yi2f4ccp8slcmfgppikk80rp5cvqs9ymhcmm"))))
    (properties `((upstream-name . "RTN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viper
                             r-summarizedexperiment
                             r-snow
                             r-s4vectors
                             r-reder
                             r-pwr
                             r-pheatmap
                             r-mixtools
                             r-minet
                             r-limma
                             r-iranges
                             r-igraph
                             r-data-table
                             r-car))
    (native-inputs (list r-knitr))
    (home-page "http://dx.doi.org/10.1038/ncomms3464")
    (synopsis
     "RTN: Reconstruction of Transcriptional regulatory Networks and analysis of regulons")
    (description
     "This package provides a transcriptional regulatory network (TRN) consists of a
collection of transcription factors (TFs) and the regulated target genes.  TFs
are regulators that recognize specific DNA sequences and guide the expression of
the genome, either activating or repressing the expression the target genes.
The set of genes controlled by the same TF forms a regulon.  This package
provides classes and methods for the reconstruction of TRNs and analysis of
regulons.")
    (license license:artistic2.0)))

(define-public r-rtcga-rppa
  (package
    (name "r-rtcga-rppa")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTCGA.RPPA" version
                              'experiment))
       (sha256
        (base32 "0n0gsijswgphpp6grjq8j7rgjml1zqcfkns48535v5pjgdz07qyk"))))
    (properties `((upstream-name . "RTCGA.RPPA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rtcga))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RTCGA.RPPA")
    (synopsis "RPPA datasets from The Cancer Genome Atlas Project")
    (description
     "Package provides RPPA datasets from The Cancer Genome Atlas Project for all
available cohorts types from http://gdac.broadinstitute.org/.  Data format is
explained here https://wiki.nci.nih.gov/display/TCGA/Protein+Array
+Data+Format+Specification?src=search.")
    (license license:gpl2)))

(define-public r-rtcga-pancan12
  (package
    (name "r-rtcga-pancan12")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTCGA.PANCAN12" version
                              'experiment))
       (sha256
        (base32 "0qkkzrqhyixbrlib6k4918mv66kdvjrz95a6mlcybp1vfscj65p2"))))
    (properties `((upstream-name . "RTCGA.PANCAN12")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rtcga))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RTCGA.PANCAN12")
    (synopsis "PanCan 12 from Genome Cancer Browser")
    (description
     "Package provides clinical, expression, cnv and mutation data from Genome Cancer
Browser.")
    (license license:gpl2)))

(define-public r-rtcga-mutations
  (package
    (name "r-rtcga-mutations")
    (version "20151101.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTCGA.mutations" version
                              'experiment))
       (sha256
        (base32 "1bklbf6rywgd5azig861iqg4x0czrx0rbf1s16x54g5ww8aci2bz"))))
    (properties `((upstream-name . "RTCGA.mutations")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rtcga))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RTCGA.mutations")
    (synopsis "Mutations datasets from The Cancer Genome Atlas Project")
    (description
     "Package provides mutations datasets from The Cancer Genome Atlas Project for all
cohorts types from http://gdac.broadinstitute.org/.  Mutations data format is
explained here
https://wiki.nci.nih.gov/display/TCGA/Mutation+Annotation+Format+(MAF)+Specification.
 There is extra one column with patients barcodes.  Data from 2015-11-01
snapshot.")
    (license license:gpl2)))

(define-public r-rtcga-mrna
  (package
    (name "r-rtcga-mrna")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTCGA.mRNA" version
                              'experiment))
       (sha256
        (base32 "1cmak5japs4afq3i2xh33dcxhj2h5qws2s33qkd8hy8rvk09x2vk"))))
    (properties `((upstream-name . "RTCGA.mRNA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rtcga))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RTCGA.mRNA")
    (synopsis "mRNA datasets from The Cancer Genome Atlas Project")
    (description
     "Package provides @code{mRNA} datasets from The Cancer Genome Atlas Project for
all available cohorts types from http://gdac.broadinstitute.org/.  Data format
is explained here https://wiki.nci.nih.gov/display/TCGA/Gene+expression+data
Data from 2015-11-01 snapshot.")
    (license license:gpl2)))

(define-public r-rtcga-mirnaseq
  (package
    (name "r-rtcga-mirnaseq")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTCGA.miRNASeq" version
                              'experiment))
       (sha256
        (base32 "1p2350rw2dwzpw5wa1cq1yijrhym2vwlf3khmvbjjlm4khgwznzq"))))
    (properties `((upstream-name . "RTCGA.miRNASeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rtcga))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RTCGA.miRNASeq")
    (synopsis "miRNASeq datasets from The Cancer Genome Atlas Project")
    (description
     "Package provides @code{miRNASeq} datasets from The Cancer Genome Atlas Project
for all available cohorts types from http://gdac.broadinstitute.org/.  Data
format is explained here
https://wiki.nci.nih.gov/display/TCGA/@code{miRNASeq#miRNASeq-DataOverview} Data
from 2015-11-01 snapshot.")
    (license license:gpl2)))

(define-public r-rtcga-methylation
  (package
    (name "r-rtcga-methylation")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTCGA.methylation" version
                              'experiment))
       (sha256
        (base32 "19k0c8q1xmzgjh59wv3c9p1wxkpssp072vpwnpyrgi0zrigxdz4q"))))
    (properties `((upstream-name . "RTCGA.methylation")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rtcga))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RTCGA.methylation")
    (synopsis "Methylation datasets from The Cancer Genome Atlas Project")
    (description
     "Package provides methylation (humanmethylation27) datasets from The Cancer
Genome Atlas Project for all available cohorts types from
http://gdac.broadinstitute.org/.  Data format is explained here
https://wiki.nci.nih.gov/display/TCGA/DNA+methylation Data from 2015-11-01
snapshot.")
    (license license:gpl2)))

(define-public r-rtcga-cnv
  (package
    (name "r-rtcga-cnv")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTCGA.CNV" version
                              'experiment))
       (sha256
        (base32 "0g41nvnp3h35l4yvidbfcmdfx891vfh1h1iqg0fnyhammj6kkf3j"))))
    (properties `((upstream-name . "RTCGA.CNV")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rtcga))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RTCGA.CNV")
    (synopsis
     "CNV (Copy-number variation) datasets from The Cancer Genome Atlas Project")
    (description
     "Package provides CNV (based on Merge snp) datasets from The Cancer Genome Atlas
Project for all cohorts types from http://gdac.broadinstitute.org/.  Data format
is explained here https://wiki.nci.nih.gov/display/TCGA/Retrieving
+Data+Using+the+Data+Matrix.  Data from 2015-11-01 snapshot.")
    (license license:gpl2)))

(define-public r-rtcga-clinical
  (package
    (name "r-rtcga-clinical")
    (version "20151101.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTCGA.clinical" version
                              'experiment))
       (sha256
        (base32 "1ax41ngjrngvnsgysffgh9wyixn2izbjyb4s494vkmhqrrsww055"))))
    (properties `((upstream-name . "RTCGA.clinical")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rtcga))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RTCGA.clinical")
    (synopsis "Clinical datasets from The Cancer Genome Atlas Project")
    (description
     "Package provides clinical datasets from The Cancer Genome Atlas Project for all
cohorts types from http://gdac.broadinstitute.org/.  Clinical data format is
explained here https://wiki.nci.nih.gov/display/TCGA/Clinical+Data+Overview.
Data from 2015-11-01 snapshot.")
    (license license:gpl2)))

(define-public r-rtca
  (package
    (name "r-rtca")
    (version "1.58.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTCA" version))
       (sha256
        (base32 "1bvkpg1lj4cmqib3r3i6v477d0sl620g51ihl9ay409c7z3d09k2"))))
    (properties `((upstream-name . "RTCA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcolorbrewer r-gtools r-biobase))
    (home-page "http://code.google.com/p/xcelligence/")
    (synopsis
     "Open-source toolkit to analyse data from xCELLigence System (RTCA)")
    (description
     "Import, analyze and visualize data from Roche(R) @code{xCELLigence} RTCA
systems.  The package imports real-time cell electrical impedance data into R.
As an alternative to commercial software shipped along the system, the
Bioconductor package RTCA provides several unique transformation (normalization)
strategies and various visualization tools.")
    (license license:lgpl3)))

(define-public r-rta10transcriptcluster-db
  (package
    (name "r-rta10transcriptcluster-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rta10transcriptcluster.db" version
                              'annotation))
       (sha256
        (base32 "101mvy8bwsy235dnvga9hccxwn3hjxvqx2hxypl82i3wk2vrm5dj"))))
    (properties `((upstream-name . "rta10transcriptcluster.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rta10transcriptcluster.db")
    (synopsis "Affymetrix rta10 annotation data (chip rta10transcriptcluster)")
    (description
     "Affymetrix rta10 annotation data (chip rta10transcriptcluster) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-rta10probeset-db
  (package
    (name "r-rta10probeset-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rta10probeset.db" version
                              'annotation))
       (sha256
        (base32 "1v5d278bs2wv6bq0clihlribg3pzhdbppf635php0207gx7hnx89"))))
    (properties `((upstream-name . "rta10probeset.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rta10probeset.db")
    (synopsis "Affymetrix rta10 annotation data (chip rta10probeset)")
    (description
     "Affymetrix rta10 annotation data (chip rta10probeset) assembled using data from
public repositories.")
    (license license:artistic2.0)))

(define-public r-rsweep
  (package
    (name "r-rsweep")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rSWeeP" version))
       (sha256
        (base32 "0lm61fxpfbcnbl15yk9nlnxv9lg3vmj05makcn3ljwwyr5xh60ng"))))
    (properties `((upstream-name . "rSWeeP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringi r-foreach r-doparallel r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/rSWeeP")
    (synopsis "Spaced Words Projection (SWeeP)")
    (description
     "\"Spaced Words Projection (S@code{WeeP})\" is a method for representing biological
sequences using vectors preserving inter-sequence comparability.")
    (license license:gpl2+)))

(define-public r-rsvsim
  (package
    (name "r-rsvsim")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RSVSim" version))
       (sha256
        (base32 "0pqzxk26wsnsw6a7nir1nkv3kbyjwc67hyfw829jlipgfbjb0pn5"))))
    (properties `((upstream-name . "RSVSim")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shortread r-iranges r-genomicranges
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/RSVSim")
    (synopsis
     "RSVSim: an R/Bioconductor package for the simulation of structural variations")
    (description
     "RSVSim is a package for the simulation of deletions, insertions, inversion,
tandem-duplications and translocations of various sizes in any genome available
as FASTA-file or BSgenome data package.  SV breakpoints can be placed uniformly
accross the whole genome, with a bias towards repeat regions and regions of high
homology (for hg19) or at user-supplied coordinates.")
    (license license:lgpl3)))

(define-public r-rseqan
  (package
    (name "r-rseqan")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RSeqAn" version))
       (sha256
        (base32 "14a20xi288c88m5m82qqarnsz6bj2kf20k2r6pxldc9w1y524l2j"))))
    (properties `((upstream-name . "RSeqAn")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RSeqAn")
    (synopsis "R SeqAn")
    (description
     "Headers and some wrapper functions from the @code{SeqAn} C++ library for ease of
usage in R.")
    (license license:bsd-3)))

(define-public r-rsemmed
  (package
    (name "r-rsemmed")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rsemmed" version))
       (sha256
        (base32 "0f964j7q3xz5mmghvx5pinyrrgwgnddadzpsqb72nkz8vqaasbz3"))))
    (properties `((upstream-name . "rsemmed")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-magrittr r-igraph r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lmyint/rsemmed")
    (synopsis "An interface to the Semantic MEDLINE database")
    (description
     "This package provides a programmatic interface to the Semantic MEDLINE database.
 It provides functions for searching the database for concepts and finding paths
between concepts.  Path searching can also be tailored to user specifications,
such as placing restrictions on concept types and the type of link between
concepts.  It also provides functions for summarizing and visualizing those
paths.")
    (license license:artistic2.0)))

(define-public r-rscudo
  (package
    (name "r-rscudo")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rScudo" version))
       (sha256
        (base32 "1vid2j7i3cq4b357mx57j840gc59wbg3yl5f748vjjsqkmj812gf"))))
    (properties `((upstream-name . "rScudo")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-stringr
                             r-s4vectors
                             r-igraph
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Matteo-Ciciani/scudo")
    (synopsis "Signature-based Clustering for Diagnostic Purposes")
    (description
     "SCUDO (Signature-based Clustering for Diagnostic Purposes) is a rank-based
method for the analysis of gene expression profiles for diagnostic and
classification purposes.  It is based on the identification of sample-specific
gene signatures composed of the most up- and down-regulated genes for that
sample.  Starting from gene expression data, functions in this package identify
sample-specific gene signatures and use them to build a graph of samples.  In
this graph samples are joined by edges if they have a similar expression
profile, according to a pre-computed similarity matrix.  The similarity between
the expression profiles of two samples is computed using a method similar to
GSEA. The graph of samples can then be used to perform community clustering or
to perform supervised classification of samples in a testing set.")
    (license license:gpl3)))

(define-public r-rrvgo
  (package
    (name "r-rrvgo")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rrvgo" version))
       (sha256
        (base32 "19y5cn3lp57p3biz442ml8i4fqpyjsv92a7zb5liwmcazbv7bgcq"))))
    (properties `((upstream-name . "rrvgo")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wordcloud
                             r-umap
                             r-treemap
                             r-tm
                             r-shiny
                             r-pheatmap
                             r-gosemsim
                             r-go-db
                             r-ggrepel
                             r-ggplot2
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://www.bioconductor.org/packages/rrvgo")
    (synopsis "Reduce + Visualize GO")
    (description
     "Reduce and visualize lists of Gene Ontology terms by identifying redudance based
on semantic similarity.")
    (license license:gpl3)))

(define-public r-rrho
  (package
    (name "r-rrho")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RRHO" version))
       (sha256
        (base32 "0hil5s0b1xfl0hh2vsgiw13kdn3qb6bx6wxqv60xx1qgy6sd33y6"))))
    (properties `((upstream-name . "RRHO")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-venndiagram))
    (home-page "https://bioconductor.org/packages/RRHO")
    (synopsis "Inference on agreement between ordered lists")
    (description
     "The package is aimed at inference on the amount of agreement in two sorted lists
using the Rank-Rank Hypergeometric Overlap test.")
    (license license:gpl2)))

(define-public r-rrdpdata
  (package
    (name "r-rrdpdata")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rRDPData" version
                              'experiment))
       (sha256
        (base32 "0f662rxavvzrfmg275h4fs12v36dlm5vagjxdwfrslpayw10mjf9"))))
    (properties `((upstream-name . "rRDPData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rrdp))
    (home-page "https://github.com/mhahsler/rRDP")
    (synopsis "Databases for the Default RDP Classifier")
    (description
     "The package provides the data for the RDP Classifier 2.14 released in August
2023.  It contains the latest bacterial and archaeal taxonomy training set No.
19 as described in Wang Q, Cole JR. 2024.  Updated RDP taxonomy and RDP
Classifier for more accurate taxonomic classification.  Microbiol Resour Announc
0:e01063-23. <doi.org/10.1128/mra.01063-23>.")
    (license license:gpl2)))

(define-public r-rrdp
  (package
    (name "r-rrdp")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rRDP" version))
       (sha256
        (base32 "0al6yq0fcpc6b97wyz5qgbrbw4q78cvdkxzprmf0f3x4c9yw3f96"))))
    (properties `((upstream-name . "rRDP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rjava r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mhahsler/rRDP/")
    (synopsis "Interface to the RDP Classifier")
    (description
     "This package installs and interfaces the naive Bayesian classifier for 16S
@code{rRNA} sequences developed by the Ribosomal Database Project (RDP).  With
this package the classifier trained with the standard training set can be used
or a custom classifier can be trained.")
    (license (license:fsdg-compatible "GPL-2 + file LICENSE"))))

(define-public r-rrbsdata
  (package
    (name "r-rrbsdata")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RRBSdata" version
                              'experiment))
       (sha256
        (base32 "1yxx7ssm831bph0qhzl9qv9mm4l4hgj9j1x7mn4kf2qqacpkvgjz"))))
    (properties `((upstream-name . "RRBSdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biseq))
    (home-page "https://bioconductor.org/packages/RRBSdata")
    (synopsis "An RRBS data set with 12 samples and 10,000 simulated DMRs")
    (description
     "RRBS data set comprising 12 samples with simulated differentially methylated
regions (DMRs).")
    (license license:lgpl3)))

(define-public r-rqubic
  (package
    (name "r-rqubic")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rqubic" version))
       (sha256
        (base32 "18yx1nva368pvg1r02j5zxvjnqabsavcbr0v1gqbf6iklbm80mhg"))))
    (properties `((upstream-name . "rqubic")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biocgenerics r-biobase r-biclust))
    (home-page "https://bioconductor.org/packages/rqubic")
    (synopsis
     "Qualitative biclustering algorithm for expression data analysis in R")
    (description
     "This package implements the QUBIC algorithm introduced by Li et al.  for the
qualitative biclustering with gene expression data.")
    (license license:gpl2)))

(define-public r-rqt
  (package
    (name "r-rqt")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rqt" version))
       (sha256
        (base32 "02c197p0al9ifc5l21p9f1dkk4cxaj3a4ml82l4rkc2s86ia8fin"))))
    (properties `((upstream-name . "rqt")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-runit
                             r-ropls
                             r-pls
                             r-metap
                             r-matrix
                             r-glmnet
                             r-compquadform
                             r-car))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/izhbannikov/rqt")
    (synopsis "rqt: utilities for gene-level meta-analysis")
    (description
     "Despite the recent advances of modern GWAS methods, it still remains an
important problem of addressing calculation an effect size and corresponding
p-value for the whole gene rather than for single variant.  The R- package rqt
offers gene-level GWAS meta-analysis.  For more information, see: \"Gene-set
association tests for next-generation sequencing data\" by Lee et al (2016),
Bioinformatics, 32(17), i611-i619, <doi:10.1093/bioinformatics/btw429>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-rprimer
  (package
    (name "r-rprimer")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rprimer" version))
       (sha256
        (base32 "13mcw4wxffz1jcx1sbijdxx9qdd592b6frv728av1vk6rdqhycx3"))))
    (properties `((upstream-name . "rprimer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shinyfeedback
                             r-shinycssloaders
                             r-shiny
                             r-s4vectors
                             r-reshape2
                             r-patchwork
                             r-mathjaxr
                             r-iranges
                             r-ggplot2
                             r-dt
                             r-bslib
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sofpn/rprimer")
    (synopsis
     "Design Degenerate Oligos from a Multiple DNA Sequence Alignment")
    (description
     "Functions, workflow, and a Shiny application for visualizing sequence
conservation and designing degenerate primers, probes, and (RT)-(q/d)PCR assays
from a multiple DNA sequence alignment.  The results can be presented in data
frame format and visualized as dashboard-like plots.  For more information,
please see the package vignette.")
    (license license:gpl3)))

(define-public r-rpa
  (package
    (name "r-rpa")
    (version "1.62.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RPA" version))
       (sha256
        (base32 "1xgz995kxw8ydrra7npwsxywy1darm45fhgmmf9hlrkq05cqpjqa"))))
    (properties `((upstream-name . "RPA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rmarkdown r-phyloseq r-biocstyle r-biocgenerics
                             r-affy))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/antagomir/RPA")
    (synopsis "RPA: Robust Probabilistic Averaging for probe-level analysis")
    (description
     "Probabilistic analysis of probe reliability and differential gene expression on
short oligonucleotide arrays.")
    (license license:bsd-2)))

(define-public r-roseq
  (package
    (name "r-roseq")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ROSeq" version))
       (sha256
        (base32 "0p2ws8i3yns98b3nq8w46kd005r994da7fkbnd0sic05af29piqx"))))
    (properties `((upstream-name . "ROSeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pbmcapply r-limma r-edger))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/krishan57gupta/ROSeq")
    (synopsis
     "Modeling expression ranks for noise-tolerant differential expression analysis of scRNA-Seq data")
    (description
     "ROSeq - A rank based approach to modeling gene expression with filtered and
normalized read count matrix.  ROSeq takes filtered and normalized read matrix
and cell-annotation/condition as input and determines the differentially
expressed genes between the contrasting groups of single cells.  One of the
input parameters is the number of cores to be used.")
    (license license:gpl3)))

(define-public r-rontotools
  (package
    (name "r-rontotools")
    (version "2.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ROntoTools" version))
       (sha256
        (base32 "1yaidmivm4qhm6d1dqzl88wp637wp64pk2agbwykqgxah537j7rs"))))
    (properties `((upstream-name . "ROntoTools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rgraphviz r-keggrest r-kegggraph r-graph r-boot))
    (home-page "https://bioconductor.org/packages/ROntoTools")
    (synopsis "R Onto-Tools suite")
    (description "Suite of tools for functional analysis.")
    (license (license:fsdg-compatible "CC BY-NC-ND 4.0 + file LICENSE"))))

(define-public r-rols
  (package
    (name "r-rols")
    (version "3.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rols" version))
       (sha256
        (base32 "1shaxlh620l9p1bkmf6ps62xs81ksx6vvv3ynxlljcr7kgwgdjyn"))))
    (properties `((upstream-name . "rols")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-jsonlite r-httr2 r-biocgenerics r-biobase))
    (native-inputs (list r-knitr))
    (home-page "http://lgatto.github.io/rols/")
    (synopsis "An R interface to the Ontology Lookup Service")
    (description
     "The rols package is an interface to the Ontology Lookup Service (OLS) to access
and query hundred of ontolgies directly from R.")
    (license license:gpl2)))

(define-public r-rolde
  (package
    (name "r-rolde")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RolDE" version))
       (sha256
        (base32 "1pc5lysp9diazskcw8sn969i5iibksbhwff2kfnxzjgxhw3h2c5s"))))
    (properties `((upstream-name . "RolDE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-rots
                             r-rngtools
                             r-qvalue
                             r-nlme
                             r-matrixstats
                             r-foreach
                             r-dorng
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/elolab/RolDE")
    (synopsis "RolDE: Robust longitudinal Differential Expression")
    (description
     "@code{RolDE} detects longitudinal differential expression between two conditions
in noisy high-troughput data.  Suitable even for data with a moderate amount of
missing values.@code{RolDE} is a composite method, consisting of three
independent modules with different approaches to detecting longitudinal
differential expression.  The combination of these diverse modules allows
@code{RolDE} to robustly detect varying differences in longitudinal trends and
expression levels in diverse data types and experimental settings.")
    (license license:gpl3)))

(define-public r-rocpai
  (package
    (name "r-rocpai")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ROCpAI" version))
       (sha256
        (base32 "0xsfcvc4n4yfyxnzp27jzmw3rlmcgz29aqvr262xf0g49p9j1fxv"))))
    (properties `((upstream-name . "ROCpAI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-knitr r-fission r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ROCpAI")
    (synopsis
     "Receiver Operating Characteristic Partial Area Indexes for evaluating classifiers")
    (description
     "The package analyzes the Curve ROC, identificates it among different types of
Curve ROC and calculates the area under de curve through the method that is most
accuracy.  This package is able to standarizate proper and improper @code{pAUC}.")
    (license license:gpl3)))

(define-public r-roberts2005annotation-db
  (package
    (name "r-roberts2005annotation-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Roberts2005Annotation.db" version
                              'annotation))
       (sha256
        (base32 "1fc95c6x36n7zbr5ca680hyffxngma26gz0bdzylbw0w4mqmj6ga"))))
    (properties `((upstream-name . "Roberts2005Annotation.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/Roberts2005Annotation.db")
    (synopsis "Roberts2005Annotation Annotation Data (Roberts2005Annotation)")
    (description
     "Roberts2005Annotation Annotation Data (Roberts2005Annotation) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-roastgsa
  (package
    (name "r-roastgsa")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "roastgsa" version))
       (sha256
        (base32 "0jy7psw93cdb23rspqmvc389nff8g90c9s1qamv5q8j477a51p2l"))))
    (properties `((upstream-name . "roastgsa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcolorbrewer r-limma r-gplots r-ggplot2
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/roastgsa")
    (synopsis "Rotation based gene set analysis")
    (description
     "This package implements a variety of functions useful for gene set analysis
using rotations to approximate the null distribution.  It contributes with the
implementation of seven test statistic scores that can be used with different
goals and interpretations.  Several functions are available to complement the
statistical results with graphical representations.")
    (license license:gpl3)))

(define-public r-rnu34probe
  (package
    (name "r-rnu34probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rnu34probe" version
                              'annotation))
       (sha256
        (base32 "1rzjha1v453fxiwqs2zgwcbrvz6w96biz2jny0hrh5s86d5f6xpb"))))
    (properties `((upstream-name . "rnu34probe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rnu34probe")
    (synopsis "Probe sequence data for microarrays of type rnu34")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was RN-U34\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-rnu34cdf
  (package
    (name "r-rnu34cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rnu34cdf" version
                              'annotation))
       (sha256
        (base32 "1snb89530zxdbsfs1vgw30b1wdc5sdr1q46bmvz5m9g57gyficr0"))))
    (properties `((upstream-name . "rnu34cdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rnu34cdf")
    (synopsis "rnu34cdf")
    (description
     "This package provides a package containing an environment representing the
RN_U34.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-rnu34-db
  (package
    (name "r-rnu34-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rnu34.db" version
                              'annotation))
       (sha256
        (base32 "155spriq65xpvf1wjw632jsfabzd4lm06l8qqzhs70qqjbnlkln0"))))
    (properties `((upstream-name . "rnu34.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rnu34.db")
    (synopsis
     "Affymetrix Affymetrix RN_U34 Array annotation data (chip rnu34)")
    (description
     "Affymetrix Affymetrix RN_U34 Array annotation data (chip rnu34) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-rnits
  (package
    (name "r-rnits")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rnits" version))
       (sha256
        (base32 "1s848gr4vmwhl74ar1fam260cwd5ffba2qj2ssfnbvzr9mp16ydg"))))
    (properties `((upstream-name . "Rnits")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reshape2
                             r-qvalue
                             r-limma
                             r-impute
                             r-ggplot2
                             r-boot
                             r-biobase
                             r-affy))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Rnits")
    (synopsis "R Normalization and Inference of Time Series data")
    (description
     "R/Bioconductor package for normalization, curve registration and inference in
time course gene expression data.")
    (license license:gpl3)))

(define-public r-rnbeads-rn5
  (package
    (name "r-rnbeads-rn5")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RnBeads.rn5" version
                              'experiment))
       (sha256
        (base32 "12vbjjw70l0fgx45bf66mpvxifck1sqpnkn6xdf3i8gdijj06jzp"))))
    (properties `((upstream-name . "RnBeads.rn5")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicranges))
    (home-page "https://bioconductor.org/packages/RnBeads.rn5")
    (synopsis "RnBeads.rn5")
    (description
     "Automatically generated @code{RnBeads} annotation package for the assembly rn5.")
    (license license:gpl3)))

(define-public r-rnbeads-mm9
  (package
    (name "r-rnbeads-mm9")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RnBeads.mm9" version
                              'experiment))
       (sha256
        (base32 "0s6fq6zqrfm4ixchhqm21imar1hrcn8wmk0dp9wsi4wpc9rffn07"))))
    (properties `((upstream-name . "RnBeads.mm9")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicranges))
    (home-page "https://bioconductor.org/packages/RnBeads.mm9")
    (synopsis "RnBeads.mm9")
    (description
     "Automatically generated @code{RnBeads} annotation package for the assembly mm9.")
    (license license:gpl3)))

(define-public r-rnbeads-mm10
  (package
    (name "r-rnbeads-mm10")
    (version "2.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RnBeads.mm10" version
                              'experiment))
       (sha256
        (base32 "1yb22lkklsjs62vj6l5hhp80z5zgil4n93bc1yavixzf81hd7msq"))))
    (properties `((upstream-name . "RnBeads.mm10")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicranges))
    (home-page "https://bioconductor.org/packages/RnBeads.mm10")
    (synopsis "RnBeads.mm10")
    (description
     "Automatically generated @code{RnBeads} annotation package for the assembly mm10.")
    (license license:gpl3)))

(define-public r-rnbeads-hg38
  (package
    (name "r-rnbeads-hg38")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RnBeads.hg38" version
                              'experiment))
       (sha256
        (base32 "1wpnkh1rsirnvbbl7y89lmr9q5r6hr331n20qjav92j3g41r3bqp"))))
    (properties `((upstream-name . "RnBeads.hg38")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicranges))
    (home-page "https://bioconductor.org/packages/RnBeads.hg38")
    (synopsis "RnBeads.hg38")
    (description "@code{RnBeads} annotation package for genome assembly hg38.")
    (license license:gpl3)))

(define-public r-rnaseqsamplesizedata
  (package
    (name "r-rnaseqsamplesizedata")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RnaSeqSampleSizeData" version
                              'experiment))
       (sha256
        (base32 "094m8n0r4imwy9mqj1qqrn3wxbqazvbk6vj5b189sh3ll42xqddq"))))
    (properties `((upstream-name . "RnaSeqSampleSizeData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-edger))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RnaSeqSampleSizeData")
    (synopsis "RnaSeqSampleSizeData")
    (description
     "@code{RnaSeqSampleSizeData} package provides the read counts and dispersion
distribution from real RNA-seq experiments.  It can be used by
@code{RnaSeqSampleSize} package to estimate sample size and power for RNA-seq
experiment design.")
    (license license:gpl2+)))

(define-public r-rnaseqsamplesize
  (package
    (name "r-rnaseqsamplesize")
    (version "2.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RnaSeqSampleSize" version))
       (sha256
        (base32 "1lrcqpcclc1a77vbqpwlq31nv7v0x357rkwmw5ybfx8b5bwivqsw"))))
    (properties `((upstream-name . "RnaSeqSampleSize")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-summarizedexperiment
                             r-rnaseqsamplesizedata
                             r-recount
                             r-rcpp
                             r-matlab
                             r-keggrest
                             r-heatmap3
                             r-ggpubr
                             r-ggplot2
                             r-edger
                             r-dplyr
                             r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RnaSeqSampleSize")
    (synopsis "RnaSeqSampleSize")
    (description
     "@code{RnaSeqSampleSize} package provides a sample size calculation method based
on negative binomial model and the exact test for assessing differential
expression analysis of RNA-seq data.  It controls FDR for multiple testing and
utilizes the average read count and dispersion distributions from real data to
estimate a more reliable sample size.  It is also equipped with several unique
features, including estimation for interested genes or pathway, power curve
visualization, and parameter optimization.")
    (license license:gpl2+)))

(define-public r-rnaseqpower
  (package
    (name "r-rnaseqpower")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNASeqPower" version))
       (sha256
        (base32 "0990h7zkfspnxmkfb7lb6i4v7g63ja6yvxxr6k5dvg2pzqpd8bdb"))))
    (properties `((upstream-name . "RNASeqPower")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/RNASeqPower")
    (synopsis "Sample size for RNAseq studies")
    (description "RNA-seq, sample size.")
    (license (license:fsdg-compatible "LGPL (>=2)"))))

(define-public r-rnaseqcovarimpute
  (package
    (name "r-rnaseqcovarimpute")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAseqCovarImpute" version))
       (sha256
        (base32 "1w5nzf21yagnzb8m3npf1za970fpnki2vfccziihwg24i8mr1klz"))))
    (properties `((upstream-name . "RNAseqCovarImpute")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang
                             r-mice
                             r-magrittr
                             r-limma
                             r-foreach
                             r-edger
                             r-dplyr
                             r-biocparallel
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/brennanhilton/RNAseqCovarImpute")
    (synopsis "Impute Covariate Data in RNA Sequencing Studies")
    (description
     "The RN@code{AseqCovarImpute} package makes linear model analysis for RNA
sequencing read counts compatible with multiple imputation (MI) of missing
covariates.  A major problem with implementing MI in RNA sequencing studies is
that the outcome data must be included in the imputation prediction models to
avoid bias.  This is difficult in omics studies with high-dimensional data.  The
first method we developed in the RN@code{AseqCovarImpute} package surmounts the
problem of high-dimensional outcome data by binning genes into smaller groups to
analyze pseudo-independently.  This method implements covariate MI in gene
expression studies by 1) randomly binning genes into smaller groups, 2) creating
M imputed datasets separately within each bin, where the imputation predictor
matrix includes all covariates and the log counts per million (CPM) for the
genes within each bin, 3) estimating gene expression changes using `limma::voom`
followed by `limma::@code{lmFit`} functions, separately on each M imputed
dataset within each gene bin, 4) un-binning the gene sets and stacking the M
sets of model results before applying the `limma::@code{squeezeVar`} function to
apply a variance shrinking Bayesian procedure to each M set of model results, 5)
pooling the results with Rubins’ rules to produce combined coefficients,
standard errors, and P-values, and 6) adjusting P-values for multiplicity to
account for false discovery rate (FDR).  A faster method uses principal
component analysis (PCA) to avoid binning genes while still retaining outcome
information in the MI models.  Binning genes into smaller groups requires that
the MI and limma-voom analysis is run many times (typically hundreds).  The more
computationally efficient MI PCA method implements covariate MI in gene
expression studies by 1) performing PCA on the log CPM values for all genes
using the Bioconductor `PCAtools` package, 2) creating M imputed datasets where
the imputation predictor matrix includes all covariates and the optimum number
of PCs to retain (e.g., based on Horn’s parallel analysis or the number of PCs
that account for >80% explained variation), 3) conducting the standard
limma-voom pipeline with the `voom` followed by `@code{lmFit`} followed by
`@code{eBayes`} functions on each M imputed dataset, 4) pooling the results with
Rubins’ rules to produce combined coefficients, standard errors, and P-values,
and 5) adjusting P-values for multiplicity to account for false discovery rate
(FDR).")
    (license license:gpl3)))

(define-public r-rnaseqcomp
  (package
    (name "r-rnaseqcomp")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rnaseqcomp" version))
       (sha256
        (base32 "01jx6vk334gfblz5a8dic12a8bi1fm2ybmzijk9cm0ny4d66n5sf"))))
    (properties `((upstream-name . "rnaseqcomp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcolorbrewer))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tengmx/rnaseqcomp")
    (synopsis "Benchmarks for RNA-seq Quantification Pipelines")
    (description
     "Several quantitative and visualized benchmarks for RNA-seq quantification
pipelines.  Two-condition quantifications for genes, transcripts, junctions or
exons by each pipeline with necessary meta information should be organized into
numeric matrices in order to proceed the evaluation.")
    (license license:gpl3)))

(define-public r-rnasense
  (package
    (name "r-rnasense")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAsense" version))
       (sha256
        (base32 "0n187h5sw9idzs897c9gvx2wfw9qzlzs2w5a0vkgphfd9jnk29r3"))))
    (properties `((upstream-name . "RNAsense")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-qvalue r-nbpseq
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RNAsense")
    (synopsis "Analysis of Time-Resolved RNA-Seq Data")
    (description
     "RNA-sense tool compares RNA-seq time curves in two experimental conditions, i.e.
 wild-type and mutant, and works in three steps.  At Step 1, it builds
expression profile for each transcript in one condition (i.e.  wild-type) and
tests if the transcript abundance grows or decays significantly.  Dynamic
transcripts are then sorted to non-overlapping groups (time profiles) by the
time point of switch up or down.  At Step 2, RNA-sense outputs the groups of
differentially expressed transcripts, which are up- or downregulated in the
mutant compared to the wild-type at each time point.  At Step 3, Correlations
(Fisher's exact test) between the outputs of Step 1 (switch up- and switch down-
time profile groups) and the outputs of Step2 (differentially expressed
transcript groups) are calculated.  The results of the correlation analysis are
printed as two-dimensional color plot, with time profiles and differential
expression groups at y- and x-axis, respectively, and facilitates the biological
interpretation of the data.")
    (license license:gpl3)))

(define-public r-rnamodr-ribomethseq
  (package
    (name "r-rnamodr-ribomethseq")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAmodR.RiboMethSeq" version))
       (sha256
        (base32 "0z2xaf6f5w9sdkvjf3w6yd01faw12wnppsw82770b56q56a16rvb"))))
    (properties `((upstream-name . "RNAmodR.RiboMethSeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rnamodr
                             r-iranges
                             r-gviz
                             r-genomicranges
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/FelixErnst/RNAmodR.RiboMethSeq")
    (synopsis "Detection of 2'-O methylations by RiboMethSeq")
    (description
     "RN@code{AmodR.RiboMethSeq} implements the detection of 2'-O methylations on RNA
from experimental data generated with the @code{RiboMethSeq} protocol.  The
package builds on the core functionality of the RN@code{AmodR} package to detect
specific patterns of the modifications in high throughput sequencing data.")
    (license license:artistic2.0)))

(define-public r-rnamodr-ml
  (package
    (name "r-rnamodr-ml")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAmodR.ML" version))
       (sha256
        (base32 "10gc7wq2drdbgch09lwn3q1xwkf63z6wlr40kjr9cs3r1lggmn5h"))))
    (properties `((upstream-name . "RNAmodR.ML")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rnamodr
                             r-ranger
                             r-iranges
                             r-genomicranges
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/FelixErnst/RNAmodR.ML")
    (synopsis
     "Detecting patterns of post-transcriptional modifications using machine learning")
    (description
     "RN@code{AmodR.ML} extend the functionality of the RN@code{AmodR} package and
classical detection strategies towards detection through machine learning
models.  RN@code{AmodR.ML} provides classes, functions and an example workflow
to establish a detection stratedy, which can be packaged.")
    (license license:artistic2.0)))

(define-public r-rnamodr-data
  (package
    (name "r-rnamodr-data")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAmodR.Data" version
                              'experiment))
       (sha256
        (base32 "0msav01jgpv1vhf9p4q5zs50kgg6f1r8lrfad377zbflhf1pf2aw"))))
    (properties `((upstream-name . "RNAmodR.Data")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-experimenthubdata r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/FelixErnst/RNAmodR.Data")
    (synopsis "Example data for the RNAmodR package")
    (description
     "RN@code{AmodR.Data} contains example data, which is used for vignettes and
example workflows in the RN@code{AmodR} and dependent packages.")
    (license license:artistic2.0)))

(define-public r-rnamodr-alkanilineseq
  (package
    (name "r-rnamodr-alkanilineseq")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAmodR.AlkAnilineSeq" version))
       (sha256
        (base32 "19ibdmwns9489s42ydym30x0g8g2jhynvayplvw0g24r31q1hkv4"))))
    (properties `((upstream-name . "RNAmodR.AlkAnilineSeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rnamodr
                             r-iranges
                             r-gviz
                             r-genomicranges
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/FelixErnst/RNAmodR.AlkAnilineSeq")
    (synopsis "Detection of m7G, m3C and D modification by AlkAnilineSeq")
    (description
     "RN@code{AmodR.AlkAnilineSeq} implements the detection of m7G, m3C and D
modifications on RNA from experimental data generated with the
@code{AlkAnilineSeq} protocol.  The package builds on the core functionality of
the RN@code{AmodR} package to detect specific patterns of the modifications in
high throughput sequencing data.")
    (license license:artistic2.0)))

(define-public r-rnamodr
  (package
    (name "r-rnamodr")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAmodR" version))
       (sha256
        (base32 "01ghazxhl2vgbr215nah46wm5l25ksws69d0lkzbxqv3gbn55q5k"))))
    (properties `((upstream-name . "RNAmodR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdbmaker
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-rocr
                             r-reshape2
                             r-rcolorbrewer
                             r-modstrings
                             r-matrixstats
                             r-iranges
                             r-gviz
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-colorramps
                             r-bsgenome
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/FelixErnst/RNAmodR")
    (synopsis
     "Detection of post-transcriptional modifications in high throughput sequencing data")
    (description
     "RN@code{AmodR} provides classes and workflows for loading/aggregation data from
high througput sequencing aimed at detecting post-transcriptional modifications
through analysis of specific patterns.  In addition, utilities are provided to
validate and visualize the results.  The RN@code{AmodR} package provides a core
functionality from which specific analysis strategies can be easily implemented
as a seperate package.")
    (license license:artistic2.0)))

(define-public r-rnainteractmapk
  (package
    (name "r-rnainteractmapk")
    (version "1.41.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAinteractMAPK" version
                              'experiment))
       (sha256
        (base32 "0dfxy6hhcwx8xd4c2a02v41dnrrj97lg7ddl4pfn492rk4qvd4s6"))))
    (properties `((upstream-name . "RNAinteractMAPK")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sparselda
                             r-mass
                             r-lattice
                             r-genefilter
                             r-gdata
                             r-fields
                             r-biobase))
    (home-page "https://bioconductor.org/packages/RNAinteractMAPK")
    (synopsis
     "Mapping of Signalling Networks through Synthetic Genetic Interaction Analysis by RNAi")
    (description
     "This package includes all data used in the paper -Mapping of Signalling Networks
through Synthetic Genetic Interaction Analysis by RNAi- by Horn, Sandmann,
Fischer et al.., Nat.  Methods, 2011.  The package vignette shows the R code to
reproduce all figures in the paper.")
    (license license:artistic2.0)))

(define-public r-rnagilentdesign028282-db
  (package
    (name "r-rnagilentdesign028282-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RnAgilentDesign028282.db" version
                              'annotation))
       (sha256
        (base32 "00qri74spbpym7krk1clx0kl429b1592afk5bfr3j8j3iw99g4af"))))
    (properties `((upstream-name . "RnAgilentDesign028282.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/RnAgilentDesign028282.db")
    (synopsis
     "Agilent Chips that use Agilent design number 028282 annotation data (chip RnAgilentDesign028282)")
    (description
     "Agilent Chips that use Agilent design number 028282 annotation data (chip
@code{RnAgilentDesign028282}) assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-rnaeditr
  (package
    (name "r-rnaeditr")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rnaEditr" version))
       (sha256
        (base32 "165n04bh3g1sb15sfng9ax7bjb6zwy43xhdk9sgijrm7aj6p3cna"))))
    (properties `((upstream-name . "rnaEditr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-s4vectors
                             r-plyr
                             r-logistf
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-corrplot
                             r-bumphunter
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/TransBioInfoLab/rnaEditr")
    (synopsis
     "Statistical analysis of RNA editing sites and hyper-editing regions")
    (description
     "RNAeditr analyzes site-specific RNA editing events, as well as hyper-editing
regions.  The editing frequencies can be tested against binary, continuous or
survival outcomes.  Multiple covariate variables as well as interaction effects
can also be incorporated in the statistical models.")
    (license license:gpl3)))

(define-public r-rnadecay
  (package
    (name "r-rnadecay")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAdecay" version))
       (sha256
        (base32 "0vqxlncsx686xzdkh5phdaniypb8f5xqf57192qpmw7cimlff729"))))
    (properties `((upstream-name . "RNAdecay")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tmb r-scales r-nloptr r-gplots r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RNAdecay")
    (synopsis "Maximum Likelihood Decay Modeling of RNA Degradation Data")
    (description
     "RNA degradation is monitored through measurement of RNA abundance after
inhibiting RNA synthesis.  This package has functions and example scripts to
facilitate (1) data normalization, (2) data modeling using constant decay rate
or time-dependent decay rate models, (3) the evaluation of treatment or genotype
effects, and (4) plotting of the data and models.  Data Normalization: functions
and scripts make easy the normalization to the initial (T0) RNA abundance, as
well as a method to correct for artificial inflation of Reads per Million (RPM)
abundance in global assessments as the total size of the RNA pool decreases.
Modeling: Normalized data is then modeled using maximum likelihood to fit
parameters.  For making treatment or genotype comparisons (up to four), the
modeling step models all possible treatment effects on each gene by repeating
the modeling with constraints on the model parameters (i.e., the decay rate of
treatments A and B are modeled once with them being equal and again allowing
them to both vary independently).  Model Selection: The AICc value is calculated
for each model, and the model with the lowest AICc is chosen.  Modeling results
of selected models are then compiled into a single data frame.  Graphical
Plotting: functions are provided to easily visualize decay data model, or
half-life distributions using ggplot2 package functions.")
    (license license:gpl2)))

(define-public r-rnaagecalc
  (package
    (name "r-rnaagecalc")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAAgeCalc" version))
       (sha256
        (base32 "1f4vvx56jfs3ag0z1d815ysg54ff5p5l13cqq2gl9xfq2glqv6qn"))))
    (properties `((upstream-name . "RNAAgeCalc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-recount
                             r-org-hs-eg-db
                             r-impute
                             r-ggplot2
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/reese3928/RNAAgeCalc")
    (synopsis "multi-tissue transcriptional age calculator")
    (description
     "It has been shown that both DNA methylation and RNA transcription are linked to
chronological age and age related diseases.  Several estimators have been
developed to predict human aging from DNA level and RNA level.  Most of the
human transcriptional age predictor are based on microarray data and limited to
only a few tissues.  To date, transcriptional studies on aging using RNASeq data
from different human tissues is limited.  The aim of this package is to provide
a tool for across-tissue and tissue-specific transcriptional age calculation
based on GTEx RNASeq data.")
    (license license:gpl2)))

(define-public r-rmmquant
  (package
    (name "r-rmmquant")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rmmquant" version))
       (sha256
        (base32 "1glgrwf1bb0lm31fsq0jil866b1xqd2gv75nc2fapnbmvkcc65gj"))))
    (properties `((upstream-name . "Rmmquant")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib))
    (propagated-inputs (list r-txdb-mmusculus-ucsc-mm9-knowngene
                             r-tbx20bamsubset
                             r-summarizedexperiment
                             r-s4vectors
                             r-rcpp
                             r-org-mm-eg-db
                             r-genomicranges
                             r-devtools
                             r-deseq2
                             r-biocstyle
                             r-apeglm))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Rmmquant")
    (synopsis "RNA-Seq multi-mapping Reads Quantification Tool")
    (description
     "RNA-Seq is currently used routinely, and it provides accurate information on
gene transcription.  However, the method cannot accurately estimate duplicated
genes expression.  Several strategies have been previously used, but all of them
provide biased results.  With Rmmquant, if a read maps at different positions,
the tool detects that the corresponding genes are duplicated; it merges the
genes and creates a merged gene.  The counts of ambiguous reads is then based on
the input genes and the merged genes.  Rmmquant is a drop-in replacement of the
widely used tools @code{findOverlaps} and @code{featureCounts} that handles
multi-mapping reads in an unabiased way.")
    (license license:gpl3)))

(define-public r-rmir-hsa
  (package
    (name "r-rmir-hsa")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RmiR.hsa" version
                              'annotation))
       (sha256
        (base32 "1c663vxjxgrs4p9wfbg0zli5qqbvq6hp11kzbqrn70ndkpsbnb3z"))))
    (properties `((upstream-name . "RmiR.hsa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/RmiR.hsa")
    (synopsis "Various databases of microRNA Targets")
    (description "Various databases of @code{microRNA} Targets.")
    (license (license:fsdg-compatible "The Artistic License, Version 2.0"))))

(define-public r-rmir-hs-mirna
  (package
    (name "r-rmir-hs-mirna")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RmiR.Hs.miRNA" version
                              'annotation))
       (sha256
        (base32 "0pybw908mlfrskwhnhc0bfaaqw2z13kvr10apf68s74zs0ss57b4"))))
    (properties `((upstream-name . "RmiR.Hs.miRNA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/RmiR.Hs.miRNA")
    (synopsis "Various databases of microRNA Targets")
    (description "Various databases of @code{microRNA} Targets.")
    (license (license:fsdg-compatible "The Artistic License, Version 2.0"))))

(define-public r-rmelting
  (package
    (name "r-rmelting")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rmelting" version))
       (sha256
        (base32 "08maaxhahqxfal1pdbsg665l7qzqiz9w6989ll45y3gx9zz1z3ql"))))
    (properties `((upstream-name . "rmelting")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list openjdk))
    (propagated-inputs (list r-rjava r-rdpack))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/aravind-j/rmelting")
    (synopsis "R Interface to MELTING 5")
    (description
     "R interface to the MELTING 5 program
(https://www.ebi.ac.uk/biomodels/tools/melting/) to compute melting temperatures
of nucleic acid duplexes along with other thermodynamic parameters.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-rmassbankdata
  (package
    (name "r-rmassbankdata")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RMassBankData" version
                              'experiment))
       (sha256
        (base32 "196n2qq63gkcjqlill2wc3v0hiq1zxqw75c2r4y9z6j6ac11ryz9"))))
    (properties `((upstream-name . "RMassBankData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/RMassBankData")
    (synopsis "Test dataset for RMassBank")
    (description
     "Example spectra, example compound list(s) and an example annotation list for a
narcotics dataset; required to test R@code{MassBank}.  The package is described
in the man page for R@code{MassBankData}.  Includes new XCMS test data.")
    (license license:artistic2.0)))

(define-public r-rmassbank
  (package
    (name "r-rmassbank")
    (version "3.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RMassBank" version))
       (sha256
        (base32 "13c4xd28zyvd903ix9x68684251yzyqpihzsjhr2s2d1dxpw8kga"))))
    (properties `((upstream-name . "RMassBank")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list openbabel))
    (propagated-inputs (list r-yaml
                             r-xml
                             r-webchem
                             r-tidyselect
                             r-tibble
                             r-s4vectors
                             r-rjson
                             r-readr
                             r-readjdx
                             r-rcpp
                             r-rcdk
                             r-r-utils
                             r-purrr
                             r-mzr
                             r-msnbase
                             r-logger
                             r-httr2
                             r-httr
                             r-glue
                             r-envipat
                             r-dplyr
                             r-digest
                             r-data-table
                             r-chemminer
                             r-biobase
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RMassBank")
    (synopsis "Workflow to process tandem MS files and build MassBank records")
    (description
     "Workflow to process tandem MS files and build @code{MassBank} records.
Functions include automated extraction of tandem MS spectra, formula assignment
to tandem MS fragments, recalibration of tandem MS spectra with assigned
fragments, spectrum cleanup, automated retrieval of compound information from
Internet databases, and export to @code{MassBank} records.")
    (license license:artistic2.0)))

(define-public r-rmagpie
  (package
    (name "r-rmagpie")
    (version "1.62.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rmagpie" version))
       (sha256
        (base32 "11qmda8w5na9hfjnhdgbycvpgvzwj956qav5i8l39r2p9vrajli9"))))
    (properties `((upstream-name . "Rmagpie")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pamr r-kernlab r-e1071 r-biobase))
    (home-page "http://www.bioconductor.org/")
    (synopsis
     "MicroArray Gene-expression-based Program In Error rate estimation")
    (description
     "Microarray Classification is designed for both biologists and statisticians.  It
offers the ability to train a classifier on a labelled microarray dataset and to
then use that classifier to predict the class of new observations.  A range of
modern classifiers are available, including support vector machines (SVMs),
nearest shrunken centroids (NSCs)...  Advanced methods are provided to estimate
the predictive error rate and to report the subset of genes which appear
essential in discriminating between classes.")
    (license license:gpl3+)))

(define-public r-rlmm
  (package
    (name "r-rlmm")
    (version "1.68.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RLMM" version))
       (sha256
        (base32 "00s9k5wylzkqb3256v4g0rnl7340a5fjb9a6m76p1fdhdr3bwcnv"))))
    (properties `((upstream-name . "RLMM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list))
    (propagated-inputs (list r-mass))
    (home-page "http://www.stat.berkeley.edu/users/nrabbee/RLMM")
    (synopsis "Genotype Calling Algorithm for Affymetrix SNP Arrays")
    (description
     "This package provides a classification algorithm, based on a multi-chip,
multi-SNP approach for Affymetrix SNP arrays.  Using a large training sample
where the genotype labels are known, this aglorithm will obtain more accurate
classification results on new data.  RLMM is based on a robust, linear model and
uses the Mahalanobis distance for classification.  The chip-to-chip
non-biological variation is removed through normalization.  This model-based
algorithm captures the similarities across genotype groups and probes, as well
as thousands other SNPs for accurate classification.  NOTE: 100K-Xba only at for
now.")
    (license license:lgpl2.0+)))

(define-public r-rlassocox
  (package
    (name "r-rlassocox")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RLassoCox" version))
       (sha256
        (base32 "0n142f0p5z5723jbz52j8psq37xjc081fdqzm48gcwq85cz6gy7c"))))
    (properties `((upstream-name . "RLassoCox")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-matrix r-igraph r-glmnet))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RLassoCox")
    (synopsis
     "reweighted Lasso-Cox by integrating gene interaction information")
    (description
     "R@code{LassoCox} is a package that implements the RLasso-Cox model proposed by
Wei Liu.  The RLasso-Cox model integrates gene interaction information into the
Lasso-Cox model for accurate survival prediction and survival biomarker
discovery.  It is based on the hypothesis that topologically important genes in
the gene interaction network tend to have stable expression changes.  The
RLasso-Cox model uses random walk to evaluate the topological weight of genes,
and then highlights topologically important genes to improve the generalization
ability of the Lasso-Cox model.  The RLasso-Cox model has the advantage of
identifying small gene sets with high prognostic performance on independent
datasets, which may play an important role in identifying robust survival
biomarkers for various cancer types.")
    (license license:artistic2.0)))

(define-public r-rjmcmcnucleosomes
  (package
    (name "r-rjmcmcnucleosomes")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RJMCMCNucleosomes" version))
       (sha256
        (base32 "069nyidfr6466z8bzcjikhdgfyjxzrh4fh93wvz06rvrj9wb0sgc"))))
    (properties `((upstream-name . "RJMCMCNucleosomes")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list gsl))
    (propagated-inputs (list r-s4vectors
                             r-rcpp
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-consensusseeker
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ArnaudDroitLab/RJMCMCNucleosomes")
    (synopsis
     "Bayesian hierarchical model for genome-wide nucleosome positioning with high-throughput short-read data (MNase-Seq)")
    (description
     "This package does nucleosome positioning using informative Multinomial-Dirichlet
prior in a t-mixture with reversible jump estimation of nucleosome positions for
genome-wide profiling.")
    (license license:artistic2.0)))

(define-public r-river
  (package
    (name "r-river")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RIVER" version))
       (sha256
        (base32 "04fdsfi1j8wrxkh5h18jfhgcbl1rvm7igpzxas5j037mfmfl55cl"))))
    (properties `((upstream-name . "RIVER")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-proc r-glmnet r-ggplot2 r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ipw012/RIVER")
    (synopsis
     "R package for RIVER (RNA-Informed Variant Effect on Regulation)")
    (description
     "An implementation of a probabilistic modeling framework that jointly analyzes
personal genome and transcriptome data to estimate the probability that a
variant has regulatory impact in that individual.  It is based on a generative
model that assumes that genomic annotations, such as the location of a variant
with respect to regulatory elements, determine the prior probability that
variant is a functional regulatory variant, which is an unobserved variable.
The functional regulatory variant status then influences whether nearby genes
are likely to display outlier levels of gene expression in that person.  See the
RIVER website for more information, documentation and examples.")
    (license license:gpl2+)))

(define-public r-ritandata
  (package
    (name "r-ritandata")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RITANdata" version
                              'experiment))
       (sha256
        (base32 "1azrkw0zxplmzlb3vs58mw9nka23p13xblrq9pqdfvv7cpcpq4la"))))
    (properties `((upstream-name . "RITANdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RITANdata")
    (synopsis
     "This package contains reference annotation and network data sets")
    (description
     "Data such as is contained in the two R data files in this package are required
for the RITAN package examples.  Users are highly encouraged to use their own or
additional resources in conjunction with RITANdata.  See the RITAN vignettes and
RITAN.md for more information, such as gathering more up-to-date annotation
data.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-ritan
  (package
    (name "r-ritan")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RITAN" version))
       (sha256
        (base32 "0afnaiv3xvnazx94bzmsh4xny6ingbyvasdgdd25m11i5hnhvy0y"))))
    (properties `((upstream-name . "RITAN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringdb
                             r-sqldf
                             r-ritandata
                             r-reshape2
                             r-rcolorbrewer
                             r-png
                             r-plotrix
                             r-mcl
                             r-linkcomm
                             r-knitr
                             r-igraph
                             r-hash
                             r-gsubfn
                             r-gridextra
                             r-gplots
                             r-ggplot2
                             r-genomicfeatures
                             r-ensembldb
                             r-ensdb-hsapiens-v86
                             r-dynamictreecut
                             r-bgeedb
                             r-annotationfilter))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RITAN")
    (synopsis "Rapid Integration of Term Annotation and Network resources")
    (description
     "This package provides tools for comprehensive gene set enrichment and extraction
of multi-resource high confidence subnetworks.  RITAN facilitates bioinformatic
tasks for enabling network biology research.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-rimmport
  (package
    (name "r-rimmport")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RImmPort" version))
       (sha256
        (base32 "007klfjgnaimqrplps50r4hfw22b032ynsb032kdx9z2lp5k8a9i"))))
    (properties `((upstream-name . "RImmPort")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sqldf
                             r-rsqlite
                             r-reshape2
                             r-plyr
                             r-dplyr
                             r-dbi
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "http://bioconductor.org/packages/RImmPort/")
    (synopsis "RImmPort: Enabling Ready-for-analysis Immunology Research Data")
    (description
     "The R@code{ImmPort} package simplifies access to @code{ImmPort} data for
analysis in the R environment.  It provides a standards-based interface to the
@code{ImmPort} study data that is in a proprietary format.")
    (license license:gpl3)))

(define-public r-rificomparative
  (package
    (name "r-rificomparative")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rifiComparative" version))
       (sha256
        (base32 "06l3lvif5c0vl4hr2iiqmhaxp5c0fwvcy5g0jjynjb9w25b5nakb"))))
    (properties `((upstream-name . "rifiComparative")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-writexl
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-scales
                             r-s4vectors
                             r-rtracklayer
                             r-rlang
                             r-reshape2
                             r-nnet
                             r-lsd
                             r-ggrepel
                             r-ggplot2
                             r-foreach
                             r-egg
                             r-dta
                             r-dplyr
                             r-domc
                             r-devtools
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/rifiComparative")
    (synopsis
     "'rifiComparative' compares the output of rifi from two different conditions")
    (description
     "@code{rifiComparative} is a continuation of rifi package.  It compares two
conditions output of rifi using half-life and @code{mRNA} at time 0 segments.
As an input for the segmentation, the difference between half-life of both
condtions and log2FC of the @code{mRNA} at time 0 are used.  The package
provides segmentation, statistics, summary table, fragments visualization and
some additional useful plots for further anaylsis.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-rifi
  (package
    (name "r-rifi")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rifi" version))
       (sha256
        (base32 "1apal2763n8bybcyrngd8zvxmkcp8sxgjj1dm4cn1jdaa51syzlq"))))
    (properties `((upstream-name . "rifi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-scales
                             r-s4vectors
                             r-rtracklayer
                             r-rlang
                             r-reshape2
                             r-nnet
                             r-nls2
                             r-ggplot2
                             r-foreach
                             r-egg
                             r-dplyr
                             r-domc
                             r-cowplot
                             r-car))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/rifi")
    (synopsis
     "'rifi' analyses data from rifampicin time series created by microarray or RNAseq")
    (description
     "rifi analyses data from rifampicin time series created by microarray or RNAseq.
rifi is a transcriptome data analysis tool for the holistic identification of
transcription and decay associated processes.  The decay constants and the delay
of the onset of decay is fitted for each probe/bin.  Subsequently, probes/bins
of equal properties are combined into segments by dynamic programming,
independent of a existing genome annotation.  This allows to detect transcript
segments of different stability or transcriptional events within one annotated
gene.  In addition to the classic decay constant/half-life analysis, rifi
detects processing sites, transcription pausing sites, internal transcription
start sites in operons, sites of partial transcription termination in operons,
identifies areas of likely transcriptional interference by the collision
mechanism and gives an estimate of the transcription velocity.  All data are
integrated to give an estimate of continous transcriptional units, i.e.
operons.  Comprehensive output tables and visualizations of the full genome
result and the individual fits for all probes/bins are produced.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-riceprobe
  (package
    (name "r-riceprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "riceprobe" version
                              'annotation))
       (sha256
        (base32 "0w6qvszdmnipn3v2bld46x7my2a9hni0jbxd0y1d6xcrrgs951ra"))))
    (properties `((upstream-name . "riceprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/riceprobe")
    (synopsis "Probe sequence data for microarrays of type rice")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Rice\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-ricecdf
  (package
    (name "r-ricecdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ricecdf" version
                              'annotation))
       (sha256
        (base32 "07lsw9rklk2rsvbkcj1ci8hg2x68k3qpkx9yw0cmd7rg5fvydgns"))))
    (properties `((upstream-name . "ricecdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ricecdf")
    (synopsis "ricecdf")
    (description
     "This package provides a package containing an environment representing the
Rice.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-ribosomeprofilingqc
  (package
    (name "r-ribosomeprofilingqc")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ribosomeProfilingQC" version))
       (sha256
        (base32 "1845ra8zsdrf0z457n5vfhknyv7g591rrj9mw7f2bxqbgrijgqpm"))))
    (properties `((upstream-name . "ribosomeProfilingQC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xvector
                             r-txdbmaker
                             r-scales
                             r-s4vectors
                             r-ruvseq
                             r-rtracklayer
                             r-rsubread
                             r-rsamtools
                             r-motifstack
                             r-iranges
                             r-ggrepel
                             r-ggplot2
                             r-ggfittext
                             r-ggextra
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-edaseq
                             r-cluster
                             r-bsgenome
                             r-biostrings
                             r-biocgenerics
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ribosomeProfilingQC")
    (synopsis "Ribosome Profiling Quality Control")
    (description
     "Ribo-Seq (also named ribosome profiling or footprinting) measures translatome
(unlike RNA-Seq, which sequences the transcriptome) by direct quantification of
the ribosome-protected fragments (RPFs).  This package provides the tools for
quality assessment of ribosome profiling.  In addition, it can preprocess
Ribo-Seq data for subsequent differential analysis.")
    (license (license:fsdg-compatible "GPL (>=3) + file LICENSE"))))

(define-public r-ribor
  (package
    (name "r-ribor")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ribor" version))
       (sha256
        (base32 "1153d770sw74xgrx9wd7d0a6yk8dhf16q1ck0d42gldkp2asrh83"))))
    (properties `((upstream-name . "ribor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-tidyr
                             r-s4vectors
                             r-rlang
                             r-rhdf5
                             r-hash
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ribor")
    (synopsis "An R Interface for Ribo Files")
    (description
     "The ribor package provides an R Interface for .ribo files.  It provides
functionality to read the .ribo file, which is of HDF5 format, and performs
common analyses on its contents.")
    (license license:gpl3)))

(define-public r-ribodipa
  (package
    (name "r-ribodipa")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RiboDiPA" version))
       (sha256
        (base32 "1p5d5z6g9yc060sp00kkkyi03b01gh463qyvbwhj7fcd0l6z2399"))))
    (properties `((upstream-name . "RiboDiPA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdbmaker
                             r-s4vectors
                             r-rsamtools
                             r-reldist
                             r-rcpp
                             r-qvalue
                             r-matrixstats
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-foreach
                             r-elitism
                             r-doparallel
                             r-deseq2
                             r-data-table
                             r-biocgenerics
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RiboDiPA")
    (synopsis "Differential pattern analysis for Ribo-seq data")
    (description
     "This package performs differential pattern analysis for Ribo-seq data.  It
identifies genes with significantly different patterns in the ribosome footprint
between two conditions. @code{RiboDiPA} contains five major components including
bam file processing, P-site mapping, data binning, differential pattern analysis
and footprint visualization.")
    (license license:lgpl3+)))

(define-public r-ribocrypt
  (package
    (name "r-ribocrypt")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RiboCrypt" version))
       (sha256
        (base32 "0in80q3b0h0ih2yjw990p3fy59bjf92aczywh9ari7s3qmjaickr"))))
    (properties `((upstream-name . "RiboCrypt")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (propagated-inputs (list r-stringr
                             r-shinyjqui
                             r-shinyhelper
                             r-shinycssloaders
                             r-shiny
                             r-rlang
                             r-rcurl
                             r-plotly
                             r-orfik
                             r-nglviewer
                             r-markdown
                             r-knitr
                             r-jsonlite
                             r-iranges
                             r-httr
                             r-htmlwidgets
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-dplyr
                             r-data-table
                             r-bslib
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/m-swirski/RiboCrypt")
    (synopsis "Interactive visualization in genomics")
    (description
     "R Package for interactive visualization and browsing NGS data.  It contains a
browser for both transcript and genomic coordinate view.  In addition a QC and
general metaplots are included, among others differential translation plots and
gene expression plots.  The package is still under development.")
    (license license:expat)))

(define-public r-ri16cod-db
  (package
    (name "r-ri16cod-db")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ri16cod.db" version
                              'annotation))
       (sha256
        (base32 "1xz533vxjdyxx1wkks0kgk6b90sxs44iqcsvyds0xcm573bx8c6q"))))
    (properties `((upstream-name . "ri16cod.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ri16cod.db")
    (synopsis
     "Codelink Rat Inflammation 16 Bioarray annotation data (chip ri16cod)")
    (description
     "Codelink Rat Inflammation 16 Bioarray annotation data (chip ri16cod) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-rhinotyper
  (package
    (name "r-rhinotyper")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rhinotypeR" version))
       (sha256
        (base32 "1ahag3dcal6mbfzy1kf2x1rj5znnpwl5107jz2xp8azcw18jidzw"))))
    (properties `((upstream-name . "rhinotypeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/omicscodeathon/rhinotypeR")
    (synopsis "Rhinovirus genotyping")
    (description
     "\"@code{rhinotypeR}\" is designed to automate the comparison of sequence data
against prototype strains, streamlining the genotype assignment process.  By
implementing predefined pairwise distance thresholds, this package makes
genotype assignment accessible to researchers and public health professionals.
This tool enhances our epidemiological toolkit by enabling more efficient
surveillance and analysis of rhinoviruses (RVs) and other viral pathogens with
complex genomic landscapes.  Additionally, \"@code{rhinotypeR}\" supports
comprehensive visualization and analysis of single nucleotide polymorphisms
(SNPs) and amino acid substitutions, facilitating in-depth genetic and
evolutionary studies.")
    (license license:expat)))

(define-public r-rheumaticconditionwollbold
  (package
    (name "r-rheumaticconditionwollbold")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rheumaticConditionWOLLBOLD" version
                              'experiment))
       (sha256
        (base32 "0749nv3qspwqvaqwd0mssyvqcz8nyircrn87bmmd9pdwsw1i4p18"))))
    (properties `((upstream-name . "rheumaticConditionWOLLBOLD")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://compbio.dfci.harvard.edu/")
    (synopsis
     "Normalized gene expression dataset published by Wollbold et al. [2009] (WOLLBOLD)")
    (description
     "Normalized gene expression data from rheumatic diseases from study published by
Wollbold et al.  in 2009, provided as an @code{eSet}.")
    (license license:artistic2.0)))

(define-public r-rhesusprobe
  (package
    (name "r-rhesusprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rhesusprobe" version
                              'annotation))
       (sha256
        (base32 "0fd8pvwvpcmx41k80nbccjxllh39fvjf7l9dr8facisl1x7gsfil"))))
    (properties `((upstream-name . "rhesusprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rhesusprobe")
    (synopsis "Probe sequence data for microarrays of type rhesus")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Rhesus\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-rhesuscdf
  (package
    (name "r-rhesuscdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rhesuscdf" version
                              'annotation))
       (sha256
        (base32 "0q2alkxm80wkzaf0q80df27q30qkswybavz05x6ywsihbs9h0nb8"))))
    (properties `((upstream-name . "rhesuscdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rhesuscdf")
    (synopsis "rhesuscdf")
    (description
     "This package provides a package containing an environment representing the
Rhesus.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-rhesus-db0
  (package
    (name "r-rhesus-db0")
    (version "3.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rhesus.db0" version
                              'annotation))
       (sha256
        (base32 "09b8lqna4vp92dwjs6cqw71kfb7w31zaph6x47l2aq0phn0zr0q4"))))
    (properties `((upstream-name . "rhesus.db0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rhesus.db0")
    (synopsis "Base Level Annotation databases for rhesus")
    (description
     "Base annotation databases for rhesus, intended ONLY to be used by
@code{AnnotationDbi} to produce regular annotation packages.")
    (license license:artistic2.0)))

(define-public r-rhdf5client
  (package
    (name "r-rhdf5client")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rhdf5client" version))
       (sha256
        (base32 "15dnba73sabvv8p5kdx53g289s3dssy3nsq72c726nsikba8dqgq"))))
    (properties `((upstream-name . "rhdf5client")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rjson r-httr r-delayedarray r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/rhdf5client")
    (synopsis "Access HDF5 content from HDF Scalable Data Service")
    (description
     "This package provides functionality for reading data from HDF Scalable Data
Service from within R. The HSDSArray function bridges from HSDS to the user via
the @code{DelayedArray} interface.  Bioconductor manages an open HSDS instance
graciously provided by John Readey of the HDF Group.")
    (license license:artistic2.0)))

(define-public r-rgug4131a-db
  (package
    (name "r-rgug4131a-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rgug4131a.db" version
                              'annotation))
       (sha256
        (base32 "1r272jf9cflf1yf4bznp4d59h7bd7adh1i3rf890h5ffc0xzf5cq"))))
    (properties `((upstream-name . "rgug4131a.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rgug4131a.db")
    (synopsis "Agilent \"Rat Genome, Whole\" annotation data (chip rgug4131a)")
    (description
     "Agilent \"Rat Genome, Whole\" annotation data (chip rgug4131a) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-rgug4130a-db
  (package
    (name "r-rgug4130a-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rgug4130a.db" version
                              'annotation))
       (sha256
        (base32 "0zlcn9spw23bj3px9z1l2f5afn09zbr6rv0nbd2h6dd12wrvy1zk"))))
    (properties `((upstream-name . "rgug4130a.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rgug4130a.db")
    (synopsis "Agilent Rat annotation data (chip rgug4130a)")
    (description
     "Agilent Rat annotation data (chip rgug4130a) assembled using data from public
repositories.")
    (license license:artistic2.0)))

(define-public r-rgug4105a-db
  (package
    (name "r-rgug4105a-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rgug4105a.db" version
                              'annotation))
       (sha256
        (base32 "0lq8k95qm0q7j65nf16p3f09dn9zs87n3k561wxrgi2lb0pf6j40"))))
    (properties `((upstream-name . "rgug4105a.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rgug4105a.db")
    (synopsis "Agilent annotation data (chip rgug4105a)")
    (description
     "Agilent annotation data (chip rgug4105a) assembled using data from public
repositories.")
    (license license:artistic2.0)))

(define-public r-rguatlas4k-db
  (package
    (name "r-rguatlas4k-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rguatlas4k.db" version
                              'annotation))
       (sha256
        (base32 "0q8xryvqixqbfqc9lfkmy9zymdlyk76vy4l3a74haj7k1m72nhi2"))))
    (properties `((upstream-name . "rguatlas4k.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rguatlas4k.db")
    (synopsis
     "Clontech BD Atlas Long Oligos Rat 4K annotation data (chip rguatlas4k)")
    (description
     "Clontech BD Atlas Long Oligos Rat 4K annotation data (chip rguatlas4k) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-rgu34cprobe
  (package
    (name "r-rgu34cprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rgu34cprobe" version
                              'annotation))
       (sha256
        (base32 "00v9hbq5vc6ah4gws196isglicxj1dpzp1a0vv4pkl2ph59hkf1q"))))
    (properties `((upstream-name . "rgu34cprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rgu34cprobe")
    (synopsis "Probe sequence data for microarrays of type rgu34c")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was RG-U34C\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-rgu34ccdf
  (package
    (name "r-rgu34ccdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rgu34ccdf" version
                              'annotation))
       (sha256
        (base32 "0v6glasybwg73synvlq6rf3fw4wckavp09waf3g3hya4qzy45r1x"))))
    (properties `((upstream-name . "rgu34ccdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rgu34ccdf")
    (synopsis "rgu34ccdf")
    (description
     "This package provides a package containing an environment representing the
RG_U34C.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-rgu34c-db
  (package
    (name "r-rgu34c-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rgu34c.db" version
                              'annotation))
       (sha256
        (base32 "0jfg2qrwzh7inyif7affwp3dwph9axnbsdqba4j97pjiavwc6232"))))
    (properties `((upstream-name . "rgu34c.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rgu34c.db")
    (synopsis
     "Affymetrix Affymetrix RG_U34C Array annotation data (chip rgu34c)")
    (description
     "Affymetrix Affymetrix RG_U34C Array annotation data (chip rgu34c) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-rgu34bprobe
  (package
    (name "r-rgu34bprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rgu34bprobe" version
                              'annotation))
       (sha256
        (base32 "097q0994fbn05b6iprncynpka9zm9ayh1pmjya44lj4ahfmflgiq"))))
    (properties `((upstream-name . "rgu34bprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rgu34bprobe")
    (synopsis "Probe sequence data for microarrays of type rgu34b")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was RG-U34B\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-rgu34bcdf
  (package
    (name "r-rgu34bcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rgu34bcdf" version
                              'annotation))
       (sha256
        (base32 "1iw0jydcjizkxybpbimcc9m8rjl4xm3jx431nvr28h14948jhrg3"))))
    (properties `((upstream-name . "rgu34bcdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rgu34bcdf")
    (synopsis "rgu34bcdf")
    (description
     "This package provides a package containing an environment representing the
RG_U34B.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-rgu34b-db
  (package
    (name "r-rgu34b-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rgu34b.db" version
                              'annotation))
       (sha256
        (base32 "0mig7x9ydkgrhqyj0kz3sq0s5mfjv5arppzmqmm2r4mk2dx1fidy"))))
    (properties `((upstream-name . "rgu34b.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rgu34b.db")
    (synopsis
     "Affymetrix Affymetrix RG_U34B Array annotation data (chip rgu34b)")
    (description
     "Affymetrix Affymetrix RG_U34B Array annotation data (chip rgu34b) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-rgu34aprobe
  (package
    (name "r-rgu34aprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rgu34aprobe" version
                              'annotation))
       (sha256
        (base32 "1gjxyq9128jgv3ic386f84rajgf3wz7yi2dja80y0ff4m0a48dlh"))))
    (properties `((upstream-name . "rgu34aprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rgu34aprobe")
    (synopsis "Probe sequence data for microarrays of type rgu34a")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was RG-U34A\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-rgu34acdf
  (package
    (name "r-rgu34acdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rgu34acdf" version
                              'annotation))
       (sha256
        (base32 "08z9f16xp1m2mwl9vlmbffxl4zyyl8cgzf6wp66rrm32lvl0nbwq"))))
    (properties `((upstream-name . "rgu34acdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rgu34acdf")
    (synopsis "rgu34acdf")
    (description
     "This package provides a package containing an environment representing the
RG_U34A.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-rgu34a-db
  (package
    (name "r-rgu34a-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rgu34a.db" version
                              'annotation))
       (sha256
        (base32 "1nl28gia0zh8xkfv8llxiysxk1k1gm6cs2wvl0n1xqhnr0rhla76"))))
    (properties `((upstream-name . "rgu34a.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rgu34a.db")
    (synopsis
     "Affymetrix Affymetrix RG_U34A Array annotation data (chip rgu34a)")
    (description
     "Affymetrix Affymetrix RG_U34A Array annotation data (chip rgu34a) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-rgsepd
  (package
    (name "r-rgsepd")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rgsepd" version))
       (sha256
        (base32 "11bs950drnwkan1mvhk9smx18gliwgkiw88dk7v21cg7qyh455aw"))))
    (properties `((upstream-name . "rgsepd")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-org-hs-eg-db
                             r-gplots
                             r-goseq
                             r-go-db
                             r-deseq2
                             r-biomart
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/rgsepd")
    (synopsis "Gene Set Enrichment / Projection Displays")
    (description
     "R/GSEPD is a bioinformatics package for R to help disambiguate transcriptome
samples (a matrix of RNA-Seq counts at transcript IDs) by automating
differential expression (with DESeq2), then gene set enrichment (with GOSeq),
and finally a N-dimensional projection to quantify in which ways each sample is
like either treatment group.")
    (license license:gpl3)))

(define-public r-rgsea
  (package
    (name "r-rgsea")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RGSEA" version))
       (sha256
        (base32 "0g3qw2f5qcb0lsqji3f6mrp62gp5xcx1ibvrv0j4mg6pg2hjp6k2"))))
    (properties `((upstream-name . "RGSEA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RGSEA")
    (synopsis "Random Gene Set Enrichment Analysis")
    (description
     "Combining bootstrap aggregating and Gene set enrichment analysis (GSEA), RGSEA
is a classfication algorithm with high robustness and no over-fitting problem.
It performs well especially for the data generated from different exprements.")
    (license (license:fsdg-compatible "GPL(>=3)"))))

(define-public r-rgraph2js
  (package
    (name "r-rgraph2js")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RGraph2js" version))
       (sha256
        (base32 "0x6isz3kxfrsig04wa8y3jvsjg9hcc9r7cv0sqfb0fpfa5hsp376"))))
    (properties `((upstream-name . "RGraph2js")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (inputs (list))
    (propagated-inputs (list r-whisker r-rjson r-graph r-digest))
    (native-inputs (list esbuild))
    (home-page "https://bioconductor.org/packages/RGraph2js")
    (synopsis "Convert a Graph into a D3js Script")
    (description
     "Generator of web pages which display interactive network/graph visualizations
with D3js, @code{jQuery} and Raphael.")
    (license license:gpl2)))

(define-public r-rgoslin
  (package
    (name "r-rgoslin")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rgoslin" version))
       (sha256
        (base32 "02c4kci5zyn1vdlg99pwq4skgivlp34ghj0ww4wxc94sc36kv0l5"))))
    (properties `((upstream-name . "rgoslin")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lifs-tools/rgoslin")
    (synopsis "Lipid Shorthand Name Parsing and Normalization")
    (description
     "The R implementation for the Grammar of Succint Lipid Nomenclature parses
different short hand notation dialects for lipid names.  It normalizes them to a
standard name.  It further provides calculated monoisotopic masses and sum
formulas for each successfully parsed lipid name and supplements it with LIPID
MAPS Category and Class information.  Also, the structural level and further
structural details about the head group, fatty acyls and functional groups are
returned, where applicable.")
    (license license:expat)))

(define-public r-rgntx
  (package
    (name "r-rgntx")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RgnTX" version))
       (sha256
        (base32 "0sps5c621k3vlq492ijly9w9450hsymdgg2hrnvk2ggw4i7zjq3m"))))
    (properties `((upstream-name . "RgnTX")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdb-hsapiens-ucsc-hg19-knowngene
                             r-s4vectors
                             r-regioner
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RgnTX")
    (synopsis
     "Colocalization analysis of transcriptome elements in the presence of isoform heterogeneity and ambiguity")
    (description
     "@code{RgnTX} allows the integration of transcriptome annotations so as to model
the complex alternative splicing patterns.  It supports the testing of
transcriptome elements without clear isoform association, which is often the
real scenario due to technical limitations.  It involves functions that do
permutaion test for evaluating association between features and transcriptome
regions.")
    (license license:artistic2.0)))

(define-public r-rgmqllib
  (package
    (name "r-rgmqllib")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RGMQLlib" version
                              'experiment))
       (sha256
        (base32 "1j6n8nvkfcdyh39d70nscm6xmkvyahmq16znc1ya12azkp0n3fpg"))))
    (properties `((upstream-name . "RGMQLlib")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page
     "http://www.bioinformatics.deib.polimi.it/genomic_computing/GMQL/")
    (synopsis "RGMQLlib, java libraries to run GMQL scala API")
    (description
     "This package provides a package that contains scala libraries to call GMQL from
R used by RGMQL package.  It contains a scalable data management engine written
in Scala programming language.")
    (license license:artistic2.0)))

(define-public r-rgenometracksdata
  (package
    (name "r-rgenometracksdata")
    (version "0.99.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rGenomeTracksData" version
                              'annotation))
       (sha256
        (base32 "1b9g8409b0b6nrskzhm7zrr61la885b8vkp0v1qf72jclbq762ka"))))
    (properties `((upstream-name . "rGenomeTracksData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/rGenomeTracksData")
    (synopsis "Demonstration Data from rGenomeTracks Package")
    (description
     "@code{rGenomeTracksData} is a collection of data from @code{pyGenomeTracks}
project.  The purpose of this data is testing and demonstration of
@code{rGenomeTracks}.  This package include 14 sample file from different
genomic and epigenomic file format.")
    (license license:gpl3+)))

(define-public r-rgenometracks
  (package
    (name "r-rgenometracks")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rGenomeTracks" version))
       (sha256
        (base32 "0fgib559zfjqwbgv42721pqrzbkgv88mzyf0a565rnymbzqg4azn"))))
    (properties `((upstream-name . "rGenomeTracks")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list))
    (propagated-inputs (list r-rgenometracksdata r-reticulate r-imager))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/rGenomeTracks")
    (synopsis "Integerated visualization of epigenomic data")
    (description
     "@code{rGenomeTracks} package leverages the power of @code{pyGenomeTracks}
software with the interactivity of R. @code{pyGenomeTracks} is a python software
that offers robust method for visualizing epigenetic data files like
@code{narrowPeak}, Hic matrix, TADs and arcs, however though, here is no way
currently to use it within R interactive session. @code{rGenomeTracks} wrapped
the whole functionality of @code{pyGenomeTracks} with additional utilites to
make to more pleasant for R users.")
    (license license:gpl3)))

(define-public r-rfpred
  (package
    (name "r-rfpred")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rfPred" version))
       (sha256
        (base32 "10zr6ik6q1dxmczfh1kf12jydhk8lbcxc79m7j0334vdmd0szv45"))))
    (properties `((upstream-name . "rfPred")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsamtools r-iranges r-genomicranges
                             r-genomeinfodb r-data-table))
    (home-page "https://bioconductor.org/packages/rfPred")
    (synopsis
     "Assign rfPred functional prediction scores to a missense variants list")
    (description
     "Based on external numerous data files where @code{rfPred} scores are
pre-calculated on all genomic positions of the human exome, the package gives
@code{rfPred} scores to missense variants identified by the chromosome, the
position (hg19 version), the referent and alternative nucleotids and the uniprot
identifier of the protein.  Note that for using the package, the user has to
download the @code{TabixFile} and index (approximately 3.3 Go).")
    (license (license:fsdg-compatible "GPL (>=2 )"))))

(define-public r-rforproteomics
  (package
    (name "r-rforproteomics")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RforProteomics" version
                              'experiment))
       (sha256
        (base32 "0rdx13pdqhfq6pijq9a5fn9j5vdihy95pymcidj5cymni6h3a4dd"))))
    (properties `((upstream-name . "RforProteomics")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-r-utils r-msnbase r-biocviews r-biocmanager))
    (native-inputs (list r-knitr))
    (home-page "http://lgatto.github.com/RforProteomics/")
    (synopsis
     "Companion package to the 'Using R and Bioconductor for proteomics data analysis' publication")
    (description
     "This package contains code to illustrate the Using R and Bioconductor for
proteomics data analysis and Visualisation of proteomics data using R and
Bioconductor manuscripts.  The vignettes describe the code and data needed to
reproduce the examples and figures described in the paper and functionality for
proteomics visualisation.  It also contain various function to discover R
software for mass spectrometry and proteomics.")
    (license license:artistic2.0)))

(define-public r-rfastp
  (package
    (name "r-rfastp")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rfastp" version))
       (sha256
        (base32 "1pa9qiix3bajxsdibkx6l0y8qq0livk86r91d4idm6pl6l1jxncb"))))
    (properties `((upstream-name . "Rfastp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zlibbioc
                             r-rjson
                             r-rhtslib
                             r-reshape2
                             r-rcpp
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Rfastp")
    (synopsis
     "An Ultra-Fast and All-in-One Fastq Preprocessor (Quality Control, Adapter, low quality and polyX trimming) and UMI Sequence Parsing)")
    (description
     "Rfastp is an R wrapper of fastp developed in c++.  fastp performs quality
control for fastq files.  including low quality bases trimming, @code{polyX}
trimming, adapter auto-detection and trimming, paired-end reads merging, UMI
sequence/id handling.  Rfastp can concatenate multiple files into one file (like
shell command cat) and accept multiple files as input.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-rfarm
  (package
    (name "r-rfarm")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rfaRm" version))
       (sha256
        (base32 "0d7f9jkiq6ddybkkysmrfrp8hll4nrxpk0hv6hgdjxrpx5wpw839"))))
    (properties `((upstream-name . "rfaRm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-stringi
                             r-s4vectors
                             r-rvest
                             r-rsvg
                             r-magick
                             r-jsonlite
                             r-iranges
                             r-httr
                             r-data-table
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/rfaRm")
    (synopsis "An R interface to the Rfam database")
    (description
     "@code{rfaRm} provides a client interface to the Rfam database of RNA families.
Data that can be retrieved include RNA families, secondary structure images,
covariance models, sequences within each family, alignments leading to the
identification of a family and secondary structures in the dot-bracket format.")
    (license license:gpl3)))

(define-public r-rexposome
  (package
    (name "r-rexposome")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rexposome" version))
       (sha256
        (base32 "0hhhdfjlqfrq7ginxy0rj2ih5m4wd1msgnrl4bangp7mm1d3m73r"))))
    (properties `((upstream-name . "rexposome")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-scatterplot3d
                             r-scales
                             r-s4vectors
                             r-reshape2
                             r-pryr
                             r-mice
                             r-lsr
                             r-lme4
                             r-imputelcmd
                             r-hmisc
                             r-gtools
                             r-gridextra
                             r-gplots
                             r-glmnet
                             r-ggridges
                             r-ggrepel
                             r-ggplot2
                             r-factominer
                             r-corrplot
                             r-circlize
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/rexposome")
    (synopsis "Exposome exploration and outcome data analysis")
    (description
     "Package that allows to explore the exposome and to perform association analyses
between exposures and health outcomes.")
    (license license:expat)))

(define-public r-reusedata
  (package
    (name "r-reusedata")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ReUseData" version))
       (sha256
        (base32 "1jq1zyh0fy7cdjmiq4332gwfvh5c8s29x795jczgkjp7br4zaf5j"))))
    (properties `((upstream-name . "ReUseData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-s4vectors
                             r-rcwlpipelines
                             r-rcwl
                             r-jsonlite
                             r-biocfilecache
                             r-basilisk))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rworkflow/ReUseData")
    (synopsis "Reusable and reproducible Data Management")
    (description
     "@code{ReUseData} is an _R/Bioconductor_ software tool to provide a systematic
and versatile approach for standardized and reproducible data management.
@code{ReUseData} facilitates transformation of shell or other ad hoc scripts for
data preprocessing into workflow-based data recipes.  Evaluation of data recipes
generate curated data files in their generic formats (e.g., VCF, bed).  Both
recipes and data are cached using database infrastructure for easy data
management and reuse.  Prebuilt data recipes are available through
@code{ReUseData} portal (\"https://rcwl.org/@code{dataRecipes}/\") with full
annotation and user instructions.  Pregenerated data are available through
@code{ReUseData} cloud bucket that is directly downloadable through
@code{\"getCloudData()}\".")
    (license license:gpl3)))

(define-public r-retrofit
  (package
    (name "r-retrofit")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "retrofit" version))
       (sha256
        (base32 "0f8asr7573ra4vxp1s1fs1zr31r7sphzj7xpzk614llwacjyasvi"))))
    (properties `((upstream-name . "retrofit")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/qunhualilab/retrofit")
    (synopsis
     "RETROFIT: Reference-free deconvolution of cell mixtures in spatial transcriptomics")
    (description
     "RETROFIT is a Bayesian non-negative matrix factorization framework to decompose
cell type mixtures in ST data without using external single-cell expression
references.  RETROFIT outperforms existing reference-based methods in estimating
cell type proportions and reconstructing gene expressions in simulations with
varying spot size and sample heterogeneity, irrespective of the quality or
availability of the single-cell reference.  RETROFIT recapitulates known
cell-type localization patterns in a Slide-seq dataset of mouse cerebellum
without using any single-cell data.")
    (license license:gpl3)))

(define-public r-resolve
  (package
    (name "r-resolve")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RESOLVE" version))
       (sha256
        (base32 "1n4xz9pjydnm549b75dmygwxwi71r9xpcx2sh9r7zy0z5dzpa9zx"))))
    (properties `((upstream-name . "RESOLVE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rhpcblasctl
                             r-reshape2
                             r-nnls
                             r-mutationalpatterns
                             r-lsa
                             r-iranges
                             r-gridextra
                             r-glmnet
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-data-table
                             r-bsgenome-hsapiens-1000genomes-hs37d5
                             r-bsgenome
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/danro9685/RESOLVE")
    (synopsis
     "RESOLVE: An R package for the efficient analysis of mutational signatures from cancer genomes")
    (description
     "Cancer is a genetic disease caused by somatic mutations in genes controlling key
biological functions such as cellular growth and division.  Such mutations may
arise both through cell-intrinsic and exogenous processes, generating
characteristic mutational patterns over the genome named mutational signatures.
The study of mutational signatures have become a standard component of modern
genomics studies, since it can reveal which (environmental and endogenous)
mutagenic processes are active in a tumor, and may highlight markers for
therapeutic response.  Mutational signatures computational analysis presents
many pitfalls.  First, the task of determining the number of signatures is very
complex and depends on heuristics.  Second, several signatures have no clear
etiology, casting doubt on them being computational artifacts rather than due to
mutagenic processes.  Last, approaches for signatures assignment are greatly
influenced by the set of signatures used for the analysis.  To overcome these
limitations, we developed RESOLVE (Robust EStimation Of @code{mutationaL}
signatures Via @code{rEgularization}), a framework that allows the efficient
extraction and assignment of mutational signatures.  RESOLVE implements a novel
algorithm that enables (i) the efficient extraction, (ii) exposure estimation,
and (iii) confidence assessment during the computational inference of mutational
signatures.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-repviz
  (package
    (name "r-repviz")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RepViz" version))
       (sha256
        (base32 "1rysb9f8jqy5l7ywn4i7yg6323rri6a40rfibxj4a0il54h4a275"))))
    (properties `((upstream-name . "RepViz")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors r-rsamtools r-iranges r-genomicranges
                             r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RepViz")
    (synopsis "Replicate oriented Visualization of a genomic region")
    (description
     "@code{RepViz} enables the view of a genomic region in a simple and efficient
way. @code{RepViz} allows simultaneous viewing of both intra- and intergroup
variation in sequencing counts of the studied conditions, as well as their
comparison to the output features (e.g. identified peaks) from user selected
data analysis methods.The @code{RepViz} tool is primarily designed for chromatin
data such as @code{ChIP-seq} and ATAC-seq, but can also be used with other
sequencing data such as RNA-seq, or combinations of different types of genomic
data.")
    (license license:gpl3)))

(define-public r-repitools
  (package
    (name "r-repitools")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Repitools" version))
       (sha256
        (base32 "0pbr9dj2v7nyv8c9synx6k5w3yj28k02m8jlfjc9yhly56qz95yr"))))
    (properties `((upstream-name . "Repitools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rtracklayer
                             r-rsolnp
                             r-rsamtools
                             r-mass
                             r-iranges
                             r-gsmoothr
                             r-gplots
                             r-genomicranges
                             r-genomicalignments
                             r-genomeinfodb
                             r-edger
                             r-dnacopy
                             r-cluster
                             r-bsgenome
                             r-biostrings
                             r-biocgenerics))
    (home-page "https://bioconductor.org/packages/Repitools")
    (synopsis "Epigenomic tools")
    (description
     "This package provides tools for the analysis of enrichment-based epigenomic
data.  Features include summarization and visualization of epigenomic data
across promoters according to gene expression context, finding regions of
differential methylation/binding, @code{BayMeth} for quantifying methylation
etc.")
    (license license:lgpl2.0+)))

(define-public r-remp
  (package
    (name "r-remp")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "REMP" version))
       (sha256
        (base32 "1fckxyhj3m808r8fqs84jachj1sb6s3dvhvrg1l6vm50yhmr8n51"))))
    (properties `((upstream-name . "REMP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-settings
                             r-s4vectors
                             r-rtracklayer
                             r-readr
                             r-ranger
                             r-org-hs-eg-db
                             r-minfi
                             r-kernlab
                             r-iterators
                             r-iranges
                             r-impute
                             r-genomicranges
                             r-genomeinfodb
                             r-foreach
                             r-doparallel
                             r-caret
                             r-bsgenome
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics
                             r-annotationhub))
    (home-page "https://github.com/YinanZheng/REMP")
    (synopsis "Repetitive Element Methylation Prediction")
    (description
     "Machine learning-based tools to predict DNA methylation of locus-specific
repetitive elements (RE) by learning surrounding genetic and epigenetic
information.  These tools provide genomewide and single-base resolution of DNA
methylation prediction on RE that are difficult to measure using array-based or
sequencing-based platforms, which enables epigenome-wide association study
(EWAS) and differentially methylated region (DMR) analysis on RE.")
    (license license:gpl3)))

(define-public r-regutools
  (package
    (name "r-regutools")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "regutools" version))
       (sha256
        (base32 "1whamihnl3kamsjv9cqfdwvnzy8w6rxdc5xj6hv1g4w5x2sr7zvp"))))
    (properties `((upstream-name . "regutools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-rcy3
                             r-iranges
                             r-gviz
                             r-genomicranges
                             r-dbi
                             r-biostrings
                             r-biocfilecache
                             r-annotationhub
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ComunidadBioInfo/regutools")
    (synopsis "regutools: an R package for data extraction from RegulonDB")
    (description
     "@code{RegulonDB} has collected, harmonized and centralized data from hundreds of
experiments for nearly two decades and is considered a point of reference for
transcriptional regulation in Escherichia coli K12.  Here, we present the
regutools R package to facilitate programmatic access to @code{RegulonDB} data
in computational biology.  regutools provides researchers with the possibility
of writing reproducible workflows with automated queries to @code{RegulonDB}.
The regutools package serves as a bridge between @code{RegulonDB} data and the
Bioconductor ecosystem by reusing the data structures and statistical methods
powered by other Bioconductor packages.  We demonstrate the integration of
regutools with Bioconductor by analyzing transcription factor DNA binding sites
and transcriptional regulatory networks from @code{RegulonDB}.  We anticipate
that regutools will serve as a useful building block in our progress to further
our understanding of gene regulatory networks.")
    (license license:artistic2.0)))

(define-public r-regsplice
  (package
    (name "r-regsplice")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "regsplice" version))
       (sha256
        (base32 "0jzmxl837wq7cf0jrff2py144qdk7mmypl2a93g6862k1zcgc9dk"))))
    (properties `((upstream-name . "regsplice")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-pbapply
                             r-limma
                             r-glmnet
                             r-edger))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lmweber/regsplice")
    (synopsis
     "L1-regularization based methods for detection of differential splicing")
    (description
     "Statistical methods for detection of differential splicing (differential exon
usage) in RNA-seq and exon microarray data, using L1-regularization (lasso) to
improve power.")
    (license license:expat)))

(define-public r-regparallel
  (package
    (name "r-regparallel")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RegParallel" version
                              'experiment))
       (sha256
        (base32 "0611wimhjm3ylv1gasrzjl9dalcbd2vzyxvqn03pybi2hjyp5l52"))))
    (properties `((upstream-name . "RegParallel")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-stringr
                             r-iterators
                             r-foreach
                             r-doparallel
                             r-data-table
                             r-arm))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kevinblighe/RegParallel")
    (synopsis
     "Standard regression functions in R enabled for parallel processing over large data-frames")
    (description
     "In many analyses, a large amount of variables have to be tested independently
against the trait/endpoint of interest, and also adjusted for covariates and
confounding factors at the same time.  The major bottleneck in these is the
amount of time that it takes to complete these analyses.  With
@code{RegParallel}, a large number of tests can be performed simultaneously.  On
a 12-core system, 144 variables can be tested simultaneously, with 1000s of
variables processed in a matter of seconds via nested parallel processing.
Works for logistic regression, linear regression, conditional logistic
regression, Cox proportional hazards and survival models, and Bayesian logistic
regression.  Also caters for generalised linear models that utilise survey
weights created by the survey CRAN package and that utilise survey::svyglm'.")
    (license license:gpl3)))

(define-public r-regionreport
  (package
    (name "r-regionreport")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "regionReport" version))
       (sha256
        (base32 "0h13903lwxjdzm4mjid214z5pn9c1zqqsn3my1vr0xqzv3k4yiar"))))
    (properties `((upstream-name . "regionReport")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-rmarkdown
                             r-refmanager
                             r-knitrbootstrap
                             r-knitr
                             r-genomicranges
                             r-genomeinfodb
                             r-deseq2
                             r-derfinder
                             r-deformats
                             r-biocstyle))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/leekgroup/regionReport")
    (synopsis
     "Generate HTML or PDF reports for a set of genomic regions or DESeq2/edgeR results")
    (description
     "Generate HTML or PDF reports to explore a set of regions such as the results
from annotation-agnostic expression analysis of RNA-seq data at base-pair
resolution performed by derfinder.  You can also create reports for DESeq2 or
@code{edgeR} results.")
    (license license:artistic2.0)))

(define-public r-regionereloaded
  (package
    (name "r-regionereloaded")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "regioneReloaded" version))
       (sha256
        (base32 "1jhfh6pgq6yq8czvx6razzswacb7m06pfci6apj86izal54zj8jj"))))
    (properties `((upstream-name . "regioneReloaded")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-umap
                             r-scales
                             r-rtsne
                             r-reshape2
                             r-regioner
                             r-rcolorbrewer
                             r-ggrepel
                             r-ggplot2
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RMalinverni/regioneReload")
    (synopsis "RegioneReloaded: Multiple Association for Genomic Region Sets")
    (description
     "@code{RegioneReloaded} is a package that allows simultaneous analysis of
associations between genomic region sets, enabling clustering of data and the
creation of ready-to-publish graphs.  It takes over and expands on all the
features of its predecessor @code{regioneR}.  It also incorporates a strategy to
improve p-value calculations and normalize z-scores coming from multiple
analysis to allow for their direct comparison. @code{RegioneReloaded} builds
upon @code{regioneR} by adding new plotting functions for obtaining
publication-ready graphs.")
    (license license:artistic2.0)))

(define-public r-regionalst
  (package
    (name "r-regionalst")
    (version "1.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RegionalST" version))
       (sha256
        (base32 "1mc2gx8cf2d91cf7r71pmbim0wmfd38i9ldavwakajvq7j0s4pw4"))))
    (properties `((upstream-name . "RegionalST")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-toast
                             r-tibble
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-shiny
                             r-seurat
                             r-scater
                             r-s4vectors
                             r-rcolorbrewer
                             r-magrittr
                             r-gridextra
                             r-ggplot2
                             r-fgsea
                             r-dplyr
                             r-colorspace
                             r-biocstyle
                             r-bayesspace
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RegionalST")
    (synopsis
     "Investigating regions of interest and performing regional cell type-specific analysis with spatial transcriptomics data")
    (description
     "This package analyze spatial transcriptomics data through cross-regional cell
type-specific analysis.  It selects regions of interest (ROIs) and identifys
cross-regional cell type-specific differential signals.  The ROIs can be
selected using automatic algorithm or through manual selection.  It facilitates
manual selection of ROIs using a shiny application.")
    (license license:gpl3)))

(define-public r-regionalpcs
  (package
    (name "r-regionalpcs")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "regionalpcs" version))
       (sha256
        (base32 "000wygnnjw1x2jb73zrwgifc1w08vqwabhndzpk16aqc1wmv2nng"))))
    (properties `((upstream-name . "regionalpcs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-pcatools r-genomicranges r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tyeulalio/regionalpcs")
    (synopsis
     "Summarizing Regional Methylation with Regional Principal Components Analysis")
    (description
     "This package provides functions to summarize DNA methylation data using regional
principal components.  Regional principal components are computed using
principal components analysis within genomic regions to summarize the
variability in methylation levels across @code{CpGs}.  The number of principal
components is chosen using either the Marcenko-Pasteur or Gavish-Donoho method
to identify relevant signal in the data.")
    (license license:expat)))

(define-public r-regenrich
  (package
    (name "r-regenrich")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RegEnrich" version))
       (sha256
        (base32 "0l419ymjwj2r8113xl3nr5njrch5wy9ny7rspikiy15w36xyy02x"))))
    (properties `((upstream-name . "RegEnrich")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wgcna
                             r-tibble
                             r-summarizedexperiment
                             r-s4vectors
                             r-reshape2
                             r-randomforest
                             r-magrittr
                             r-limma
                             r-ggplot2
                             r-fgsea
                             r-dplyr
                             r-dose
                             r-deseq2
                             r-biocstyle
                             r-biocset
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RegEnrich")
    (synopsis "Gene regulator enrichment analysis")
    (description
     "This package is a pipeline to identify the key gene regulators in a biological
process, for example in cell differentiation and in cell development after
stimulation.  There are four major steps in this pipeline: (1) differential
expression analysis; (2) regulator-target network inference; (3) enrichment
analysis; and (4) regulators scoring and ranking.")
    (license license:gpl2+)))

(define-public r-redseq
  (package
    (name "r-redseq")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "REDseq" version))
       (sha256
        (base32 "0z46k34dcp9k558k79mpl3jjg999j6294h6ly4gvhxa46f2fvxdy"))))
    (properties `((upstream-name . "REDseq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-multtest
                             r-iranges
                             r-chippeakanno
                             r-bsgenome-celegans-ucsc-ce2
                             r-bsgenome
                             r-biostrings
                             r-biocgenerics
                             r-annotationdbi))
    (home-page "https://bioconductor.org/packages/REDseq")
    (synopsis
     "Analysis of high-throughput sequencing data processed by restriction enzyme digestion")
    (description
     "The package includes functions to build restriction enzyme cut site (RECS) map,
distribute mapped sequences on the map with five different approaches, find
enriched/depleted RECSs for a sample, and identify differentially
enriched/depleted RECSs between samples.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-redisparam
  (package
    (name "r-redisparam")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RedisParam" version))
       (sha256
        (base32 "1flb5r16x5n5c0y08gyr86apa2hn8jz0vd8kf7m6k412cy2sm8q3"))))
    (properties `((upstream-name . "RedisParam")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list hiredis))
    (propagated-inputs (list r-withr r-redux r-futile-logger r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RedisParam")
    (synopsis "Provide a 'redis' back-end for BiocParallel")
    (description
     "This package provides a Redis-based back-end for @code{BiocParallel}, enabling
an alternative mechanism for distributed computation.  The The manager
distributes tasks to a worker pool through a central Redis server, rather than
directly to workers as with other @code{BiocParallel} implementations.  This
means that the worker pool can change dynamically during job evaluation.  All
features of @code{BiocParallel} are supported, including reproducible random
number streams, logging to the manager, and alternative load balancing task
distributions.")
    (license license:artistic2.0)))

(define-public r-reder
  (package
    (name "r-reder")
    (version "3.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RedeR" version))
       (sha256
        (base32 "08zjh71si6dp2dmf03lbnxm1alq5yy5pkik06a0d2hsjp1jmikxl"))))
    (properties `((upstream-name . "RedeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://doi.org/10.1186/gb-2012-13-4-r29")
    (synopsis "Interactive visualization and manipulation of nested networks")
    (description
     "@code{RedeR} is an R-based package combined with a stand-alone Java application
for interactive visualization and manipulation of nested networks.  Graph, node,
and edge attributes can be configured using either graphical or command-line
methods, following igraph syntax rules.")
    (license license:gpl3)))

(define-public r-recoup
  (package
    (name "r-recoup")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "recoup" version))
       (sha256
        (base32 "1fadqn6ddyvpl3a6115ixh8ikwz188pwph6i6j6y3nxaai97rmkm"))))
    (properties `((upstream-name . "recoup")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdbmaker
                             r-stringr
                             r-s4vectors
                             r-rtracklayer
                             r-rsqlite
                             r-rsamtools
                             r-iranges
                             r-httr
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-complexheatmap
                             r-circlize
                             r-biostrings
                             r-biomart
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pmoulos/recoup")
    (synopsis "An R package for the creation of complex genomic profile plots")
    (description
     "recoup calculates and plots signal profiles created from short sequence reads
derived from Next Generation Sequencing technologies.  The profiles provided are
either sumarized curve profiles or heatmap profiles.  Currently, recoup supports
genomic profile plots for reads derived from @code{ChIP-Seq} and RNA-Seq
experiments.  The package uses ggplot2 and @code{ComplexHeatmap} graphics
facilities for curve and heatmap coverage profiles respectively.")
    (license license:gpl3+)))

(define-public r-recountmethylation
  (package
    (name "r-recountmethylation")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "recountmethylation" version))
       (sha256
        (base32 "0idgifc0kywjvv6z6safga3168yz5837qsfjbakp23502zdkl904"))))
    (properties `((upstream-name . "recountmethylation")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rhdf5
                             r-reticulate
                             r-rcurl
                             r-r-utils
                             r-minfi
                             r-hdf5array
                             r-delayedmatrixstats
                             r-biocfilecache
                             r-basilisk))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/metamaden/recountmethylation")
    (synopsis
     "Access and analyze public DNA methylation array data compilations")
    (description
     "Resources for cross-study analyses of public DNAm array data from NCBI GEO repo,
produced using Illumina's Infinium @code{HumanMethylation450K} (HM450K) and
@code{MethylationEPIC} (EPIC) platforms.  Provided functions enable download,
summary, and filtering of large compilation files.  Vignettes detail background
about file formats, example analyses, and more.  Note the disclaimer on package
load and consult the main manuscripts for further info.")
    (license license:artistic2.0)))

(define-public r-recount3
  (package
    (name "r-recount3")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "recount3" version))
       (sha256
        (base32 "01xz4cgrwq3h15ikpl17f0103cqyx0p6vhlazahsn7k5dklp5ipr"))))
    (properties `((upstream-name . "recount3")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-sessioninfo
                             r-s4vectors
                             r-rtracklayer
                             r-r-utils
                             r-matrix
                             r-httr
                             r-genomicranges
                             r-data-table
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/LieberInstitute/recount3")
    (synopsis "Explore and download data from the recount3 project")
    (description
     "The recount3 package enables access to a large amount of uniformly processed
RNA-seq data from human and mouse.  You can download
@code{RangedSummarizedExperiment} objects at the gene, exon or exon-exon
junctions level with sample metadata and QC statistics.  In addition we provide
access to sample coverage @code{BigWig} files.")
    (license license:artistic2.0)))

(define-public r-recount
  (package
    (name "r-recount")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "recount" version))
       (sha256
        (base32 "0i512z370hrpgyddvgfd9mvcd0lhldbcs047q39brcf436a6glgs"))))
    (properties `((upstream-name . "recount")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-rtracklayer
                             r-rentrez
                             r-rcurl
                             r-iranges
                             r-geoquery
                             r-genomicranges
                             r-genomeinfodb
                             r-downloader
                             r-derfinder
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/leekgroup/recount")
    (synopsis "Explore and download data from the recount project")
    (description
     "Explore and download data from the recount project available at
https://jhubiostatistics.shinyapps.io/recount/.  Using the recount package you
can download @code{RangedSummarizedExperiment} objects at the gene, exon or
exon-exon junctions level, the raw counts, the phenotype metadata used, the urls
to the sample coverage @code{bigWig} files or the mean coverage @code{bigWig}
file for a particular study.  The @code{RangedSummarizedExperiment} objects can
be used by different packages for performing differential expression analysis.
Using http://bioconductor.org/packages/derfinder you can perform
annotation-agnostic differential expression analyses with the data from the
recount project as described at
http://www.nature.com/nbt/journal/v35/n4/full/nbt.3838.html.")
    (license license:artistic2.0)))

(define-public r-reconsi
  (package
    (name "r-reconsi")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "reconsi" version))
       (sha256
        (base32 "0221pxka1dcnf85ix3kp9k1izc73vgfwl42aqkl74hhkv14bk2d8"))))
    (properties `((upstream-name . "reconsi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reshape2
                             r-phyloseq
                             r-matrixstats
                             r-matrix
                             r-ks
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/reconsi")
    (synopsis
     "Resampling Collapsed Null Distributions for Simultaneous Inference")
    (description
     "Improves simultaneous inference under dependence of tests by estimating a
collapsed null distribution through resampling.  Accounting for the dependence
between tests increases the power while reducing the variability of the false
discovery proportion.  This dependence is common in genomics applications, e.g.
when combining flow cytometry measurements with microbiome sequence counts.")
    (license license:gpl2)))

(define-public r-receptloss
  (package
    (name "r-receptloss")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "receptLoss" version))
       (sha256
        (base32 "1x0mwckvavl7p245qgx33a2n6zd7m6nzrsvp65hmzsqzcl8xc0fz"))))
    (properties `((upstream-name . "receptLoss")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-summarizedexperiment r-magrittr
                             r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/receptLoss")
    (synopsis
     "Unsupervised Identification of Genes with Expression Loss in Subsets of Tumors")
    (description
     "@code{receptLoss} identifies genes whose expression is lost in subsets of tumors
relative to normal tissue.  It is particularly well-suited in cases where the
number of normal tissue samples is small, as the distribution of gene expression
in normal tissue samples is approximated by a Gaussian.  Originally designed for
identifying nuclear hormone receptor expression loss but can be applied
transcriptome wide as well.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-rebook
  (package
    (name "r-rebook")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rebook" version))
       (sha256
        (base32 "1pl7pwdrccqzajb0n59sgxwy8z33hyp8p6qzsh3k6vl2ligw75sj"))))
    (properties `((upstream-name . "rebook")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rmarkdown
                             r-knitr
                             r-filelock
                             r-dir-expiry
                             r-codedepends
                             r-biocstyle))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/rebook")
    (synopsis "Re-using Content in Bioconductor Books")
    (description
     "This package provides utilities to re-use content across chapters of a
Bioconductor book.  This is mostly based on functionality developed while
writing the OSCA book, but generalized for potential use in other large books
with heavy compute.  Also contains some functions to assist book deployment.")
    (license license:gpl3)))

(define-public r-rebet
  (package
    (name "r-rebet")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "REBET" version))
       (sha256
        (base32 "10am2gwl808phnamkd6a2wbsl6k257d73l2gcmshvi8ywziwy5mi"))))
    (properties `((upstream-name . "REBET")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-asset))
    (home-page "https://bioconductor.org/packages/REBET")
    (synopsis "The subREgion-based BurdEn Test (REBET)")
    (description
     "There is an increasing focus to investigate the association between rare
variants and diseases.  The REBET package implements the @code{subREgion-based}
@code{BurdEn} Test which is a powerful burden test that simultaneously
identifies susceptibility loci and sub-regions.")
    (license license:gpl2)))

(define-public r-readqpcr
  (package
    (name "r-readqpcr")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ReadqPCR" version))
       (sha256
        (base32 "0j0d65yp8z9mx6j1s66wj2cvj1ms8pwc2i3jjarhpbbvsg1lwsda"))))
    (properties `((upstream-name . "ReadqPCR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page
     "http://www.bioconductor.org/packages/release/bioc/html/ReadqPCR.html")
    (synopsis "Read qPCR data")
    (description
     "The package provides functions to read raw RT-@code{qPCR} data of different
platforms.")
    (license license:lgpl3)))

(define-public r-reactomegsa-data
  (package
    (name "r-reactomegsa-data")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ReactomeGSA.data" version
                              'experiment))
       (sha256
        (base32 "0j1z4qaqvahjfd4ac5fy2q40f7fiac2jz358h7gdb157d0c7wx9x"))))
    (properties `((upstream-name . "ReactomeGSA.data")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-seurat r-reactomegsa r-limma r-edger))
    (home-page "https://github.com/reactome/ReactomeGSA.data/issues")
    (synopsis "Companion data package for the ReactomeGSA package")
    (description
     "Companion data sets to showcase the functionality of the @code{ReactomeGSA}
package.  This package contains proteomics and RNA-seq data of the melanoma
B-cell induction study by Griss et al.  and @code{scRNA-seq} data from
Jerby-Arnon et al.")
    (license license:artistic2.0)))

(define-public r-reactomegsa
  (package
    (name "r-reactomegsa")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ReactomeGSA" version))
       (sha256
        (base32 "11y40xxm6h35sjcmlmmlxkfxii3i4sa6zmbxd3zym2ra5hhaak8v"))))
    (properties `((upstream-name . "ReactomeGSA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-rcolorbrewer
                             r-progress
                             r-jsonlite
                             r-httr
                             r-gplots
                             r-ggplot2
                             r-dplyr
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/reactome/ReactomeGSA")
    (synopsis
     "Client for the Reactome Analysis Service for comparative multi-omics gene set analysis")
    (description
     "The @code{ReactomeGSA} packages uses Reactome's online analysis service to
perform a multi-omics gene set analysis.  The main advantage of this package is,
that the retrieved results can be visualized using REACTOME's powerful
webapplication.  Since Reactome's analysis service also uses R to perfrom the
actual gene set analysis you will get similar results when using the same
packages (such as limma and @code{edgeR}) locally.  Therefore, if you only
require a gene set analysis, different packages are more suited.")
    (license license:expat)))

(define-public r-rdrtoolbox
  (package
    (name "r-rdrtoolbox")
    (version "1.56.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RDRToolbox" version))
       (sha256
        (base32 "027s328kp3m9x5wgn17j7g944abxyhf9hm9dk9iqiy1m4zjwnfdz"))))
    (properties `((upstream-name . "RDRToolbox")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rgl r-mass))
    (home-page "https://bioconductor.org/packages/RDRToolbox")
    (synopsis "package for nonlinear dimension reduction with Isomap and LLE.")
    (description
     "This package provides a package for nonlinear dimension reduction using the
Isomap and LLE algorithm.  It also includes a routine for computing the
Davis-Bouldin-Index for cluster validation, a plotting tool and a data generator
for microarray gene expression data and for the Swiss Roll dataset.")
    (license license:gpl2+)))

(define-public r-rcyjs
  (package
    (name "r-rcyjs")
    (version "2.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RCyjs" version))
       (sha256
        (base32 "139c6mw5hwhaw27n51psy9ygwb9wzd73vc9bdykwnmx7s4r9x63w"))))
    (properties `((upstream-name . "RCyjs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-httpuv r-graph r-browserviz r-biocgenerics
                             r-base64enc))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RCyjs")
    (synopsis "Display and manipulate graphs in cytoscape.js")
    (description
     "Interactive viewing and exploration of graphs, connecting R to Cytoscape.js,
using websockets.")
    (license license:expat)))

(define-public r-rcx
  (package
    (name "r-rcx")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RCX" version))
       (sha256
        (base32 "1r5yx5w65mk5a9451jp4nqnfjmchf1q9kjqgkrs9blxy5m6dbs2y"))))
    (properties `((upstream-name . "RCX")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plyr r-jsonlite r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/frankkramer-lab/RCX")
    (synopsis "R package implementing the Cytoscape Exchange (CX) format")
    (description
     "Create, handle, validate, visualize and convert networks in the Cytoscape
exchange (CX) format to standard data types and objects.  The package also
provides conversion to and from objects of @code{iGraph} and @code{graphNEL}.
The CX format is also used by the NDEx platform, a online commons for biological
networks, and the network visualization software Cytocape.")
    (license license:expat)))

(define-public r-rcwlpipelines
  (package
    (name "r-rcwlpipelines")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RcwlPipelines" version))
       (sha256
        (base32 "1l9rn16cz9hl9n1h59zps4zn5gkc9l0cm8v15pcghqh1fnrsa0mg"))))
    (properties `((upstream-name . "RcwlPipelines")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list node))
    (propagated-inputs (list r-s4vectors
                             r-rcwl
                             r-rappdirs
                             r-httr
                             r-git2r
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RcwlPipelines")
    (synopsis "Bioinformatics pipelines based on Rcwl")
    (description
     "This package provides a collection of Bioinformatics tools and pipelines based
on R and the Common Workflow Language.")
    (license license:gpl2)))

(define-public r-rcwl
  (package
    (name "r-rcwl")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rcwl" version))
       (sha256
        (base32 "0z9wh5cgi4zx3qxr10ly02h8qg27fphjp0fid9wlxpicrvq13b9w"))))
    (properties `((upstream-name . "Rcwl")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-shiny
                             r-s4vectors
                             r-r-utils
                             r-diagrammer
                             r-codetools
                             r-biocparallel
                             r-batchtools
                             r-basilisk))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Rcwl")
    (synopsis "An R interface to the Common Workflow Language")
    (description
     "The Common Workflow Language (CWL) is an open standard for development of data
analysis workflows that is portable and scalable across different tools and
working environments.  Rcwl provides a simple way to wrap command line tools and
build CWL data analysis pipelines programmatically within R. It increases the
ease of usage, development, and maintenance of CWL pipelines.")
    (license (list license:gpl2
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-rcsl
  (package
    (name "r-rcsl")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RCSL" version))
       (sha256
        (base32 "180d278n17n21y1gyvh5dn0x32m8w36h9h9zd7rnxkvkpnv9pc84"))))
    (properties `((upstream-name . "RCSL")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-umap
                             r-singlecellexperiment
                             r-rtsne
                             r-rcppannoy
                             r-rcpp
                             r-pracma
                             r-nbclust
                             r-matrixgenerics
                             r-igraph
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/QinglinMei/RCSL")
    (synopsis
     "Rank Constrained Similarity Learning for single cell RNA sequencing data")
    (description
     "This package provides a novel clustering algorithm and toolkit RCSL (Rank
Constrained Similarity Learning) to accurately identify various cell types using
@code{scRNA-seq} data from a complex tissue.  RCSL considers both lo-cal
similarity and global similarity among the cells to discern the subtle
differences among cells of the same type as well as larger differences among
cells of different types.  RCSL uses Spearman’s rank correlations of a cell’s
expression vector with those of other cells to measure its global similar-ity,
and adaptively learns neighbour representation of a cell as its local
similarity.  The overall similar-ity of a cell to other cells is a linear
combination of its global similarity and local similarity.")
    (license license:artistic2.0)))

(define-public r-rcpi
  (package
    (name "r-rcpi")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rcpi" version))
       (sha256
        (base32 "15rq90391mgcdgjwas4a3kfjjnbazm9hmhffmsmyrhw9b3s3dhjj"))))
    (properties `((upstream-name . "Rcpi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang
                             r-jsonlite
                             r-httr2
                             r-gosemsim
                             r-foreach
                             r-doparallel
                             r-curl
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://nanx.me/Rcpi/")
    (synopsis
     "Molecular Informatics Toolkit for Compound-Protein Interaction in Drug Discovery")
    (description
     "This package provides a molecular informatics toolkit with an integration of
bioinformatics and chemoinformatics tools for drug discovery.")
    (license (list license:artistic2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-rcollectl
  (package
    (name "r-rcollectl")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rcollectl" version))
       (sha256
        (base32 "01ghyjm47xrs1cgfn7kr57kcq9mhfsppc30fwaaw8j5hav0cpmm1"))))
    (properties `((upstream-name . "Rcollectl")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list))
    (propagated-inputs (list r-processx r-lubridate r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vjcitn/Rcollectl")
    (synopsis
     "Help use collectl with R in Linux, to measure resource consumption in R processes")
    (description
     "Provide functions to obtain instrumentation data on processes in a unix
environment.  Parse output of a collectl run.  Vizualize aspects of system usage
over time, with annotation.")
    (license license:artistic2.0)))

(define-public r-rcm
  (package
    (name "r-rcm")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RCM" version))
       (sha256
        (base32 "0dgvad2f60l8l5jxgwm084qsh1dx619q641kagjxilg9abhwkzy3"))))
    (properties `((upstream-name . "RCM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vgam
                             r-tseries
                             r-tensor
                             r-reshape2
                             r-rcolorbrewer
                             r-phyloseq
                             r-nleqslv
                             r-mass
                             r-ggplot2
                             r-edger
                             r-dbi
                             r-alabama))
    (native-inputs (list r-knitr))
    (home-page
     "https://bioconductor.org/packages/release/bioc/vignettes/RCM/inst/doc/RCMvignette.html/")
    (synopsis
     "Fit row-column association models with the negative binomial distribution for the microbiome")
    (description
     "Combine ideas of log-linear analysis of contingency table, flexible response
function estimation and empirical Bayes dispersion estimation for explorative
visualization of microbiome datasets.  The package includes unconstrained as
well as constrained analysis.  In addition, diagnostic plot to detect lack of
fit are available.")
    (license license:gpl2)))

(define-public r-rcistarget-hg19-motifdbs-cisbponly-500bp
  (package
    (name "r-rcistarget-hg19-motifdbs-cisbponly-500bp")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RcisTarget.hg19.motifDBs.cisbpOnly.500bp"
                              version
                              'experiment))
       (sha256
        (base32 "1c3gsk4jvbwyj7s18hms29liha52820p5mmnpfnhxdhh8g6ll4sc"))))
    (properties `((upstream-name . "RcisTarget.hg19.motifDBs.cisbpOnly.500bp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-data-table))
    (home-page "http://scenic.aertslab.org")
    (synopsis
     "RcisTarget motif databases for human (hg19) - Subset of 4.6k motifs")
    (description
     "@code{RcisTarget} databases: Gene-based motif rankings and annotation to
transcription factors.  This package contains a subset of 4.6k motifs (cisbp
motifs), scored only within 500bp upstream and the TSS. See @code{RcisTarget}
tutorial to download the full databases, containing 20k motifs and search space
up to 10kbp around the TSS.")
    (license license:gpl3)))

(define-public r-rcgh
  (package
    (name "r-rcgh")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rCGH" version))
       (sha256
        (base32 "07k2lw0a81flf3lx8dfzkrfysjmfj6xrjc3f6f7v526m3nip18xr"))))
    (properties `((upstream-name . "rCGH")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdb-hsapiens-ucsc-hg38-knowngene
                             r-txdb-hsapiens-ucsc-hg19-knowngene
                             r-txdb-hsapiens-ucsc-hg18-knowngene
                             r-shiny
                             r-plyr
                             r-org-hs-eg-db
                             r-mclust
                             r-limma
                             r-lattice
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-dnacopy
                             r-annotationdbi
                             r-affy
                             r-acgh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fredcommo/rCGH")
    (synopsis
     "Comprehensive Pipeline for Analyzing and Visualizing Array-Based CGH Data")
    (description
     "This package provides a comprehensive pipeline for analyzing and interactively
visualizing genomic profiles generated through commercial or custom @code{aCGH}
arrays.  As inputs, @code{rCGH} supports Agilent dual-color Feature Extraction
files (.txt), from 44 to 400K, Affymetrix SNP6.0 and @code{cytoScanHD}
probeset.txt, cychp.txt, and cnchp.txt files exported from @code{ChAS} or
Affymetrix Power Tools. @code{rCGH} also supports custom arrays, provided data
complies with the expected format.  This package takes over all the steps
required for individual genomic profiles analysis, from reading files to
profiles segmentation and gene annotations.  This package also provides several
visualization functions (static or interactive) which facilitate individual
profiles interpretation.  Input files can be in compressed format, e.g. .bz2 or
.gz.")
    (license license:artistic2.0)))

(define-public r-rcellminerdata
  (package
    (name "r-rcellminerdata")
    (version "2.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rcellminerData" version
                              'experiment))
       (sha256
        (base32 "15jx4nnn6zqi6agq7ddcbdqng4pzikl6dckig4phv2zblfq7jvhv"))))
    (properties `((upstream-name . "rcellminerData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/rcellminerData")
    (synopsis
     "rcellminerData: Molecular Profiles and Drug Response for the NCI-60 Cell Lines")
    (description
     "The NCI-60 cancer cell line panel has been used over the course of several
decades as an anti-cancer drug screen.  This panel was developed as part of the
Developmental Therapeutics Program (DTP, http://dtp.nci.nih.gov/) of the U.S.
National Cancer Institute (NCI).  Thousands of compounds have been tested on the
NCI-60, which have been extensively characterized by many platforms for gene and
protein expression, copy number, mutation, and others (Reinhold, et al., 2012).
The purpose of the @code{CellMiner} project (http://discover.nci.nih.gov/
cellminer) has been to integrate data from multiple platforms used to analyze
the NCI-60 and to provide a powerful suite of tools for exploration of NCI-60
data.")
    (license (license:fsdg-compatible "LGPL-3 + file LICENSE"))))

(define-public r-rcellminer
  (package
    (name "r-rcellminer")
    (version "2.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rcellminer" version))
       (sha256
        (base32 "17h9c33rfi10rf3klkwna91i0kd131gcasnszy5mi7hcpjapykn2"))))
    (properties `((upstream-name . "rcellminer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-shiny
                             r-rcellminerdata
                             r-gplots
                             r-ggplot2
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "http://discover.nci.nih.gov/cellminer/")
    (synopsis
     "rcellminer: Molecular Profiles, Drug Response, and Chemical Structures for the NCI-60 Cell Lines")
    (description
     "The NCI-60 cancer cell line panel has been used over the course of several
decades as an anti-cancer drug screen.  This panel was developed as part of the
Developmental Therapeutics Program (DTP, http://dtp.nci.nih.gov/) of the U.S.
National Cancer Institute (NCI).  Thousands of compounds have been tested on the
NCI-60, which have been extensively characterized by many platforms for gene and
protein expression, copy number, mutation, and others (Reinhold, et al., 2012).
The purpose of the @code{CellMiner} project (http://discover.nci.nih.gov/
cellminer) has been to integrate data from multiple platforms used to analyze
the NCI-60 and to provide a powerful suite of tools for exploration of NCI-60
data.")
    (license (license:fsdg-compatible "LGPL-3 + file LICENSE"))))

(define-public r-rcaspar
  (package
    (name "r-rcaspar")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RCASPAR" version))
       (sha256
        (base32 "17dzn7gjlkzqskmi6jq11zw419zydkfaw4k7rjm6mlhn5njqhypw"))))
    (properties `((upstream-name . "RCASPAR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/RCASPAR")
    (synopsis
     "package for survival time prediction based on a piecewise baseline hazard Cox regression model.")
    (description
     "The package is the R-version of the C-based software \\bold{CASPAR}
(Kaderali,2006:
\\url{http://bioinformatics.oxfordjournals.org/content/22/12/1495}).  It is meant
to help predict survival times in the presence of high-dimensional explanatory
covariates.  The model is a piecewise baseline hazard Cox regression model with
an Lq-norm based prior that selects for the most important regression
coefficients, and in turn the most relevant covariates for survival analysis.
It was primarily tried on gene expression and @code{aCGH} data, but can be used
on any other type of high-dimensional data and in disciplines other than biology
and medicine.")
    (license license:gpl3+)))

(define-public r-rbwa
  (package
    (name "r-rbwa")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rbwa" version))
       (sha256
        (base32 "1v8l0srjgw29dnp5aln8n44hp4zvvngagz3498rs0930kx2fqrxk"))))
    (properties `((upstream-name . "Rbwa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Jfortin1/Rbwa")
    (synopsis "R wrapper for BWA-backtrack and BWA-MEM aligners")
    (description
     "This package provides an R wrapper for BWA alignment algorithms.  Both
BWA-backtrack and BWA-MEM are available.  Convenience function to build a BWA
index from a reference genome is also provided.  Currently not supported for
Windows machines.")
    (license license:expat)))

(define-public r-rbsurv
  (package
    (name "r-rbsurv")
    (version "2.64.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rbsurv" version))
       (sha256
        (base32 "195fw54b1j4bi2436dzpwkzpk4qw9dyvajx9lbrid5wji0rvvhjk"))))
    (properties `((upstream-name . "rbsurv")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-biobase))
    (home-page "http://www.korea.ac.kr/~stat2242/")
    (synopsis "Robust likelihood-based survival modeling with microarray data")
    (description "This package selects genes associated with survival.")
    (license license:gpl2+)))

(define-public r-rbm
  (package
    (name "r-rbm")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RBM" version))
       (sha256
        (base32 "19r1yfik2m5yppq9y5kpslbgfhfla6nhird6h7k2harmncc88k06"))))
    (properties `((upstream-name . "RBM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-marray r-limma))
    (home-page "https://bioconductor.org/packages/RBM")
    (synopsis "RBM: a R package for microarray and RNA-Seq data analysis")
    (description
     "Use A Resampling-Based Empirical Bayes Approach to Assess Differential
Expression in Two-Color Microarrays and RNA-Seq data sets.")
    (license license:gpl2+)))

(define-public r-rblast
  (package
    (name "r-rblast")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rBLAST" version))
       (sha256
        (base32 "0249l734d0cky7wzbz3i9paz5aalrz7wmqa00prp1vj1drb73mig"))))
    (properties `((upstream-name . "rBLAST")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list))
    (propagated-inputs (list r-biostrings r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mhahsler/rBLAST")
    (synopsis "R Interface for the Basic Local Alignment Search Tool")
    (description
     "Seamlessly interfaces the Basic Local Alignment Search Tool (BLAST) to search
genetic sequence data bases.  This work was partially supported by grant no.
R21HG005912 from the National Human Genome Research Institute.")
    (license license:gpl3)))

(define-public r-rbiopaxparser
  (package
    (name "r-rbiopaxparser")
    (version "2.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rBiopaxParser" version))
       (sha256
        (base32 "0q9jsf5znfxs1647xp10f1mqam5k0jwfh9aniznfnymk2byhms90"))))
    (properties `((upstream-name . "rBiopaxParser")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml r-data-table))
    (home-page "https://github.com/frankkramer-lab/rBiopaxParser")
    (synopsis "Parses BioPax files and represents them in R")
    (description
     "Parses @code{BioPAX} files and represents them in R, at the moment @code{BioPAX}
level 2 and level 3 are supported.")
    (license license:gpl2+)))

(define-public r-rbioinf
  (package
    (name "r-rbioinf")
    (version "1.66.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RBioinf" version))
       (sha256
        (base32 "1zx9g3n60xzrrpbslwxi1cmp5rqk5hgj7902swbj5sqgicp23aic"))))
    (properties `((upstream-name . "RBioinf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-graph))
    (home-page "https://bioconductor.org/packages/RBioinf")
    (synopsis "RBioinf")
    (description
     "This package provides functions and datasets and examples to accompany the
monograph R For Bioinformatics.")
    (license license:artistic2.0)))

(define-public r-rbioformats
  (package
    (name "r-rbioformats")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RBioFormats" version))
       (sha256
        (base32 "0vqpr5g6v96gnfpznx09pwzcj4n2230hqh8hiip3m3pbnxicilnx"))))
    (properties `((upstream-name . "RBioFormats")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list openjdk))
    (propagated-inputs (list r-s4vectors r-rjava r-ebimage))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/aoles/RBioFormats")
    (synopsis "R interface to Bio-Formats")
    (description
     "An R package which interfaces the OME Bio-Formats Java library to allow reading
of proprietary microscopy image data and metadata.")
    (license license:gpl3)))

(define-public r-rbec
  (package
    (name "r-rbec")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rbec" version))
       (sha256
        (base32 "12lv7rwsvmxhxzq22d8rxc87xr2n325zz9vfsv5kqwh3cr6y4dnn"))))
    (properties `((upstream-name . "Rbec")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-readr
                             r-rcpp
                             r-ggplot2
                             r-foreach
                             r-doparallel
                             r-dada2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Rbec")
    (synopsis
     "Rbec: a tool for analysis of amplicon sequencing data from synthetic microbial communities")
    (description
     "Rbec is a adapted version of DADA2 for analyzing amplicon sequencing data from
synthetic communities (@code{SynComs}), where the reference sequences for each
strain exists.  Rbec can not only accurately profile the microbial compositions
in @code{SynComs}, but also predict the contaminants in @code{SynCom} samples.")
    (license license:lgpl3)))

(define-public r-rbcbook1
  (package
    (name "r-rbcbook1")
    (version "1.74.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RbcBook1" version))
       (sha256
        (base32 "1b3c8swhkrnf1j1smca8vp4g0kzxv2qrgvf9mm5wraxhnwycdm4q"))))
    (properties `((upstream-name . "RbcBook1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rpart r-graph r-biobase))
    (home-page "http://www.biostat.harvard.edu/~carey")
    (synopsis "Support for Springer monograph on Bioconductor")
    (description "tools for building book.")
    (license license:artistic2.0)))

(define-public r-rawrr
  (package
    (name "r-rawrr")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rawrr" version))
       (sha256
        (base32 "0lnwz3m7m5h27vqp6mirc26sxjx2px7dnym9b5v0vmmp181vz189"))))
    (properties `((upstream-name . "rawrr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fgcz/rawrr/")
    (synopsis "Direct Access to Orbitrap Data and Beyond")
    (description
     "This package wraps the functionality of the @code{RawFileReader} .NET assembly.
Within the R environment, spectra and chromatograms are represented by S3
objects.  The package provides basic functions to download and install the
required third-party libraries.  The package is developed, tested, and used at
the Functional Genomics Center Zurich, Switzerland.")
    (license license:gpl3)))

(define-public r-rawdiag
  (package
    (name "r-rawdiag")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rawDiag" version))
       (sha256
        (base32 "0lzvd9wnhxanjajbwzm8wdan4gcnz9sxdya5p9gg4kpnvvvn0wx2"))))
    (properties `((upstream-name . "rawDiag")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny
                             r-scales
                             r-rlang
                             r-reshape2
                             r-rawrr
                             r-htmltools
                             r-hexbin
                             r-ggplot2
                             r-dplyr
                             r-biocparallel
                             r-biocmanager))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fgcz/rawDiag/")
    (synopsis
     "Brings Orbitrap Mass Spectrometry Data to Life; Fast and Colorful")
    (description
     "Optimizing methods for liquid chromatography coupled to mass spectrometry
(LC-MS) poses a nontrivial challenge.  The @code{rawDiag} package facilitates
rational method optimization by generating MS operator-tailored diagnostic plots
of scan-level metadata.  The package is designed for use on the R shell or as a
Shiny application on the Orbitrap instrument PC.")
    (license license:gpl3)))

(define-public r-rattus-norvegicus
  (package
    (name "r-rattus-norvegicus")
    (version "1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rattus.norvegicus" version
                              'annotation))
       (sha256
        (base32 "0bpd7i5jvl2jvf822mhxankx7cqqr4l70xp4f7hcknxw3lxia2f1"))))
    (properties `((upstream-name . "Rattus.norvegicus")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdb-rnorvegicus-ucsc-rn5-refgene
                             r-organismdbi
                             r-org-rn-eg-db
                             r-go-db
                             r-genomicfeatures
                             r-annotationdbi))
    (home-page "https://bioconductor.org/packages/Rattus.norvegicus")
    (synopsis "Annotation package for the Rattus.norvegicus object")
    (description
     "This package contains the Rattus.norvegicus object to access data from several
related annotation packages.")
    (license license:artistic2.0)))

(define-public r-rattoxfxprobe
  (package
    (name "r-rattoxfxprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rattoxfxprobe" version
                              'annotation))
       (sha256
        (base32 "1kp159553rkcn9yh6x3yph3yjz2ja21wi9j5ax03qnhwlsl1x8ik"))))
    (properties `((upstream-name . "rattoxfxprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rattoxfxprobe")
    (synopsis "Probe sequence data for microarrays of type rattoxfx")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was @code{RatToxFX\\_probe\\_tab}.")
    (license license:lgpl2.0+)))

(define-public r-rattoxfxcdf
  (package
    (name "r-rattoxfxcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rattoxfxcdf" version
                              'annotation))
       (sha256
        (base32 "0q84lfaxnnj2zbm5q8xswa1md15fjj4i0djnqr835ixzn7px4yqn"))))
    (properties `((upstream-name . "rattoxfxcdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rattoxfxcdf")
    (synopsis "rattoxfxcdf")
    (description
     "This package provides a package containing an environment representing the
@code{RatToxFX.cdf} file.")
    (license license:lgpl2.0+)))

(define-public r-ratchrloc
  (package
    (name "r-ratchrloc")
    (version "2.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ratCHRLOC" version
                              'annotation))
       (sha256
        (base32 "0mgk6lwvvdwjzjh4r1q1q6nfnx4vqx9iy6gmbrb9f31jf30hqnsb"))))
    (properties `((upstream-name . "ratCHRLOC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/ratCHRLOC")
    (synopsis "data package containing annotation data for ratCHRLOC")
    (description
     "Annotation data file for @code{ratCHRLOC} assembled using data from public data
repositories.")
    (license (license:fsdg-compatible "The Artistic License, Version 2.0"))))

(define-public r-rat2302probe
  (package
    (name "r-rat2302probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rat2302probe" version
                              'annotation))
       (sha256
        (base32 "1zwjgbcb9d4ib6z1iyjz8x11lq0b5gqs08y6j3idb5wf3i2p521v"))))
    (properties `((upstream-name . "rat2302probe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rat2302probe")
    (synopsis "Probe sequence data for microarrays of type rat2302")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Rat230\\_2\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-rat2302frmavecs
  (package
    (name "r-rat2302frmavecs")
    (version "0.99.11")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rat2302frmavecs" version
                              'annotation))
       (sha256
        (base32 "0qy5hf86lrkn20yg6d46kcw9fjc0qhsbzbyavaj1v2zl34xvr1ii"))))
    (properties `((upstream-name . "rat2302frmavecs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-frma r-affy))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/rat2302frmavecs")
    (synopsis "Vectors used by frma for microarrays of type rat2302rnentrezg")
    (description
     "This package was created with the help of @code{frmaTools} version 1.24.0.")
    (license license:gpl2+)))

(define-public r-rat2302cdf
  (package
    (name "r-rat2302cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rat2302cdf" version
                              'annotation))
       (sha256
        (base32 "1748rc6yypd7y8wgr1qg632pcsxx0fkxjz6b3z4fhblgdllhy9wk"))))
    (properties `((upstream-name . "rat2302cdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rat2302cdf")
    (synopsis "rat2302cdf")
    (description
     "This package provides a package containing an environment representing the
Rat230_2.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-rat2302-db
  (package
    (name "r-rat2302-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rat2302.db" version
                              'annotation))
       (sha256
        (base32 "1k2qm1rpq3xkj52m3n629r4qcqi2azdssb2i5shj9jdaqkmr43qc"))))
    (properties `((upstream-name . "rat2302.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rat2302.db")
    (synopsis
     "Affymetrix Affymetrix Rat230_2 Array annotation data (chip rat2302)")
    (description
     "Affymetrix Affymetrix Rat230_2 Array annotation data (chip rat2302) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-rat-db0
  (package
    (name "r-rat-db0")
    (version "3.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rat.db0" version
                              'annotation))
       (sha256
        (base32 "0515r25qj1gca0rr2cydn3rzwxrifbfpx354chj94rl0xz2ppk3n"))))
    (properties `((upstream-name . "rat.db0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rat.db0")
    (synopsis "Base Level Annotation databases for rat")
    (description
     "Base annotation databases for rat, intended ONLY to be used by
@code{AnnotationDbi} to produce regular annotation packages.")
    (license license:artistic2.0)))

(define-public r-rarr
  (package
    (name "r-rarr")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rarr" version))
       (sha256
        (base32 "0d9nnil8x010p7b96fnzigzs3za4dm8iq9f9j2vz02j0kmlk32x7"))))
    (properties `((upstream-name . "Rarr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib))
    (propagated-inputs (list r-stringr
                             r-r-utils
                             r-paws-storage
                             r-jsonlite
                             r-httr
                             r-delayedarray
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/grimbough/Rarr")
    (synopsis "Read Zarr Files in R")
    (description
     "The Zarr specification defines a format for chunked, compressed, N-dimensional
arrays.  It's design allows efficient access to subsets of the stored array, and
supports both local and cloud storage systems.  Rarr aims to implement this
specifcation in R with minimal reliance on an external tools or libraries.")
    (license license:expat)))

(define-public r-rarevariantvis
  (package
    (name "r-rarevariantvis")
    (version "2.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RareVariantVis" version))
       (sha256
        (base32 "0984sk6hhkczvz9b6kkak2v1s1j695if6s321a47z6k0h20ddzpl"))))
    (properties `((upstream-name . "RareVariantVis")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-txdb-hsapiens-ucsc-hg19-knowngene
                             r-summarizedexperiment
                             r-s4vectors
                             r-phastcons100way-ucsc-hg19
                             r-iranges
                             r-gtools
                             r-googlevis
                             r-genomicscores
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-bsgenome-hsapiens-ucsc-hg19
                             r-bsgenome
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RareVariantVis")
    (synopsis
     "suite for analysis of rare genomic variants in whole genome sequencing data")
    (description
     "Second version of @code{RareVariantVis} package aims to provide comprehensive
information about rare variants for your genome data.  It annotates, filters and
presents genomic variants (especially rare ones) in a global, per chromosome
way.  For discovered rare variants CRISPR guide RNAs are designed, so the user
can plan further functional studies.  Large structural variants, including copy
number variants are also supported.  Package accepts variants directly from
variant caller - for example GATK or Speedseq.  Output of package are lists of
variants together with adequate visualization.  Visualization of variants is
performed in two ways - standard that outputs png figures and interactive that
uses @code{JavaScript} d3 package.  Interactive visualization allows to analyze
trio/family data, for example in search for causative variants in rare Mendelian
diseases, in point-and-click interface.  The package includes homozygous region
caller and allows to analyse whole human genomes in less than 30 minutes on a
desktop computer. @code{RareVariantVis} disclosed novel causes of several rare
monogenic disorders, including one with non-coding causative variant -
keratolythic winter erythema.")
    (license license:artistic2.0)))

(define-public r-raresim
  (package
    (name "r-raresim")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RAREsim" version))
       (sha256
        (base32 "183qp2pnpsqv00v651x9vg4wf1zncx0207daxwxjypnkzs2zdsr3"))))
    (properties `((upstream-name . "RAREsim")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nloptr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/meganmichelle/RAREsim")
    (synopsis "Simulation of Rare Variant Genetic Data")
    (description
     "Haplotype simulations of rare variant genetic data that emulates real data can
be performed with RAREsim.  RAREsim uses the expected number of variants in MAC
bins - either as provided by default parameters or estimated from target data -
and an abundance of rare variants as simulated HAPGEN2 to probabilistically
prune variants.  RAREsim produces haplotypes that emulate real sequencing data
with respect to the total number of variants, allele frequency spectrum,
haplotype structure, and variant annotation.")
    (license license:gpl3)))

(define-public r-rankprod
  (package
    (name "r-rankprod")
    (version "3.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RankProd" version))
       (sha256
        (base32 "0zmsg8cn20jcx8dk3dnn3477k6ncdml548qp4p4g5v17ijs04mym"))))
    (properties `((upstream-name . "RankProd")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rmpfr r-gmp))
    (home-page "https://bioconductor.org/packages/RankProd")
    (synopsis
     "Rank Product method for identifying differentially expressed genes with application in meta-analysis")
    (description
     "Non-parametric method for identifying differentially expressed (up- or down-
regulated) genes based on the estimated percentage of false predictions (pfp).
The method can combine data sets from different origins (meta-analysis) to
increase the power of the identification.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-randrotation
  (package
    (name "r-randrotation")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "randRotation" version))
       (sha256
        (base32 "1km777q9nlsmalv5m9vi9yw4y2q88g1f6b8f34sfgg80q9j3r2k5"))))
    (properties `((upstream-name . "randRotation")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rdpack))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/phettegger/randRotation")
    (synopsis
     "Random Rotation Methods for High Dimensional Data with Batch Structure")
    (description
     "This package provides a collection of methods for performing random rotations on
high-dimensional, normally distributed data (e.g. microarray or RNA-seq data)
with batch structure.  The random rotation approach allows exact testing of
dependent test statistics with linear models following arbitrary batch effect
correction methods.")
    (license license:gpl3)))

(define-public r-randpack
  (package
    (name "r-randpack")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "randPack" version))
       (sha256
        (base32 "087n4h5l11z067i1zd6s2xhbxrp202yvazaj4rk2fyn52hq1vr5q"))))
    (properties `((upstream-name . "randPack")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/randPack")
    (synopsis "Randomization routines for Clinical Trials")
    (description
     "This package provides a suite of classes and functions for randomizing patients
in clinical trials.")
    (license (license:fsdg-compatible "Artistic 2.0"))))

(define-public r-ramwas
  (package
    (name "r-ramwas")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ramwas" version))
       (sha256
        (base32 "0xz8np6rmjpm9al67nnvi7999m2znai7fvvgy9w40vqzzwrhi20i"))))
    (properties `((upstream-name . "ramwas")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsamtools
                             r-kernsmooth
                             r-glmnet
                             r-genomicalignments
                             r-filematrix
                             r-digest
                             r-biostrings
                             r-biomart
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ramwas/")
    (synopsis
     "Fast Methylome-Wide Association Study Pipeline for Enrichment Platforms")
    (description
     "This package provides a complete toolset for methylome-wide association studies
(MWAS).  It is specifically designed for data from enrichment based methylation
assays, but can be applied to other data as well.  The analysis pipeline
includes seven steps: (1) scanning aligned reads from BAM files, (2) calculation
of quality control measures, (3) creation of methylation score (coverage)
matrix, (4) principal component analysis for capturing batch effects and
detection of outliers, (5) association analysis with respect to phenotypes of
interest while correcting for top PCs and known covariates, (6) annotation of
significant findings, and (7) multi-marker analysis (methylation risk score)
using elastic net.  Additionally, @code{RaMWAS} include tools for joint analysis
of methlyation and genotype data.  This work is published in Bioinformatics,
Shabalin et al. (2018) <doi:10.1093/bioinformatics/bty069>.")
    (license license:lgpl3)))

(define-public r-ramr
  (package
    (name "r-ramr")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ramr" version))
       (sha256
        (base32 "0m2y2d28gqn1s4wv15m210i84p3c82vqbzayf5a92czfkzdm8w1z"))))
    (properties `((upstream-name . "ramr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-reshape2
                             r-matrixstats
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-foreach
                             r-extdist
                             r-envstats
                             r-dorng
                             r-doparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BBCG/ramr")
    (synopsis
     "Detection of Rare Aberrantly Methylated Regions in Array and NGS Data")
    (description
     "ramr is an R package for detection of low-frequency aberrant methylation events
in large data sets obtained by methylation profiling using array or
high-throughput bisulfite sequencing.  In addition, package provides functions
to visualize found aberrantly methylated regions (AMRs), to generate sets of all
possible regions to be used as reference sets for enrichment analysis, and to
generate biologically relevant test data sets for performance evaluation of
AMR/DMR search algorithms.")
    (license license:artistic2.0)))

(define-public r-rain
  (package
    (name "r-rain")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rain" version))
       (sha256
        (base32 "0656nmwz2v4vivgyw2yghsz513rz8xpb537z87hd3bsrcgbp9d7w"))))
    (properties `((upstream-name . "rain")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-multtest r-gmp))
    (home-page "https://bioconductor.org/packages/rain")
    (synopsis "Rhythmicity Analysis Incorporating Non-parametric Methods")
    (description
     "This package uses non-parametric methods to detect rhythms in time series.  It
deals with outliers, missing values and is optimized for time series comprising
10-100 measurements.  As it does not assume expect any distinct waveform it is
optimal or detecting oscillating behavior (e.g. circadian or cell cycle) in e.g.
genome- or proteome-wide biological measurements such as: micro arrays, proteome
mass spectrometry, or metabolome measurements.")
    (license license:gpl2)))

(define-public r-raids
  (package
    (name "r-raids")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RAIDS" version))
       (sha256
        (base32 "0qp0xhj5nv6991l3j9dkznjlg9dl6x0avwqgw7il30i81s8gjjid"))))
    (properties `((upstream-name . "RAIDS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-stringr
                             r-snprelate
                             r-s4vectors
                             r-rlang
                             r-proc
                             r-matrixgenerics
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genesis
                             r-gdsfmt
                             r-ensembldb
                             r-class
                             r-bsgenome
                             r-annotationfilter
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://krasnitzlab.github.io/RAIDS/")
    (synopsis "Accurate Inference of Genetic Ancestry from Cancer Sequences")
    (description
     "This package implements specialized algorithms that enable genetic ancestry
inference from various cancer sequences sources (RNA, Exome and Whole-Genome
sequences).  This package also implements a simulation algorithm that generates
synthetic cancer-derived data.  This code and analysis pipeline was designed and
developed for the following publication: Belleau, P et al.  Genetic Ancestry
Inference from Cancer-Derived Molecular Data across Genomic and Transcriptomic
Platforms.  Cancer Res 1 January 2023; 83 (1): 49–58.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-ragene21sttranscriptcluster-db
  (package
    (name "r-ragene21sttranscriptcluster-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ragene21sttranscriptcluster.db" version
                              'annotation))
       (sha256
        (base32 "14hp03pizq7kprwk26s9w6s27zzbs2kk50qhjbiwic1xbrl0dp8a"))))
    (properties `((upstream-name . "ragene21sttranscriptcluster.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/ragene21sttranscriptcluster.db")
    (synopsis
     "Affymetrix ragene21 annotation data (chip ragene21sttranscriptcluster)")
    (description
     "Affymetrix ragene21 annotation data (chip ragene21sttranscriptcluster) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-ragene21stprobeset-db
  (package
    (name "r-ragene21stprobeset-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ragene21stprobeset.db" version
                              'annotation))
       (sha256
        (base32 "1m0hd0nlav9dhqzvs5drl8q3llx2wjxdfvb24fmjnba4h769ns7k"))))
    (properties `((upstream-name . "ragene21stprobeset.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ragene21stprobeset.db")
    (synopsis "Affymetrix ragene21 annotation data (chip ragene21stprobeset)")
    (description
     "Affymetrix ragene21 annotation data (chip ragene21stprobeset) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-ragene20sttranscriptcluster-db
  (package
    (name "r-ragene20sttranscriptcluster-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ragene20sttranscriptcluster.db" version
                              'annotation))
       (sha256
        (base32 "1bi4wy0sbhsyavxwshxvf3iqmyz26q7y2vqp1h3rjshsjdmhfd0h"))))
    (properties `((upstream-name . "ragene20sttranscriptcluster.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/ragene20sttranscriptcluster.db")
    (synopsis
     "Affymetrix ragene20 annotation data (chip ragene20sttranscriptcluster)")
    (description
     "Affymetrix ragene20 annotation data (chip ragene20sttranscriptcluster) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-ragene20stprobeset-db
  (package
    (name "r-ragene20stprobeset-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ragene20stprobeset.db" version
                              'annotation))
       (sha256
        (base32 "0c3cj4k2k1xssb2zzkdc39a031l2gf284cpdyvvjlx766nb57xxz"))))
    (properties `((upstream-name . "ragene20stprobeset.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ragene20stprobeset.db")
    (synopsis "Affymetrix ragene20 annotation data (chip ragene20stprobeset)")
    (description
     "Affymetrix ragene20 annotation data (chip ragene20stprobeset) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-ragene11sttranscriptcluster-db
  (package
    (name "r-ragene11sttranscriptcluster-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ragene11sttranscriptcluster.db" version
                              'annotation))
       (sha256
        (base32 "1y5377l8vnnrvixs9lqzx7dmxi1x7qqd94q3mfi2b2bnmf0wj0cd"))))
    (properties `((upstream-name . "ragene11sttranscriptcluster.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/ragene11sttranscriptcluster.db")
    (synopsis
     "Affymetrix ragene11 annotation data (chip ragene11sttranscriptcluster)")
    (description
     "Affymetrix ragene11 annotation data (chip ragene11sttranscriptcluster) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-ragene11stprobeset-db
  (package
    (name "r-ragene11stprobeset-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ragene11stprobeset.db" version
                              'annotation))
       (sha256
        (base32 "1xx7l05g6hgqfljdlap624f5ikrak4wfnzsybbi1rlrfwcrz1z2g"))))
    (properties `((upstream-name . "ragene11stprobeset.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ragene11stprobeset.db")
    (synopsis "Affymetrix ragene11 annotation data (chip ragene11stprobeset)")
    (description
     "Affymetrix ragene11 annotation data (chip ragene11stprobeset) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-ragene10stv1probe
  (package
    (name "r-ragene10stv1probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ragene10stv1probe" version
                              'annotation))
       (sha256
        (base32 "0cb3a908hixcakl41ay4yyfm9r97ln8gjidn4rs1hr7qaplfj1mh"))))
    (properties `((upstream-name . "ragene10stv1probe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ragene10stv1probe")
    (synopsis "Probe sequence data for microarrays of type ragene10stv1")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was @code{RaGene-1\\_0-st-v1\\_probe\\_tab}.")
    (license license:lgpl2.0+)))

(define-public r-ragene10stv1cdf
  (package
    (name "r-ragene10stv1cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ragene10stv1cdf" version
                              'annotation))
       (sha256
        (base32 "0fm2yj6nn3v1wiscjb53hm4ylh5cgxvs7qgc9sbsbpv7agr0bzng"))))
    (properties `((upstream-name . "ragene10stv1cdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ragene10stv1cdf")
    (synopsis "ragene10stv1cdf")
    (description
     "This package provides a package containing an environment representing the
@code{RaGene-1_0-st-v1.cdf} file.")
    (license license:lgpl2.0+)))

(define-public r-ragene10sttranscriptcluster-db
  (package
    (name "r-ragene10sttranscriptcluster-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ragene10sttranscriptcluster.db" version
                              'annotation))
       (sha256
        (base32 "1iv8hzzic2wj9hmzqcf0kayb4rhhqks23r9l0dddd3zwlbqaqc9y"))))
    (properties `((upstream-name . "ragene10sttranscriptcluster.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/ragene10sttranscriptcluster.db")
    (synopsis
     "Affymetrix ragene10 annotation data (chip ragene10sttranscriptcluster)")
    (description
     "Affymetrix ragene10 annotation data (chip ragene10sttranscriptcluster) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-ragene10stprobeset-db
  (package
    (name "r-ragene10stprobeset-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ragene10stprobeset.db" version
                              'annotation))
       (sha256
        (base32 "14j8ld6zq1wy2dpl1wkpmp6q3qhxakj8a8wh4qplp53m4xk5cfb8"))))
    (properties `((upstream-name . "ragene10stprobeset.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ragene10stprobeset.db")
    (synopsis "Affymetrix ragene10 annotation data (chip ragene10stprobeset)")
    (description
     "Affymetrix ragene10 annotation data (chip ragene10stprobeset) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-raexexonprobesetlocation
  (package
    (name "r-raexexonprobesetlocation")
    (version "1.15.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RaExExonProbesetLocation" version
                              'annotation))
       (sha256
        (base32 "1vvcc5zlpgbnqak4y2xywyd82j3s61wvhhp2ap0nni14sdxrl3hd"))))
    (properties `((upstream-name . "RaExExonProbesetLocation")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/RaExExonProbesetLocation")
    (synopsis "Probe sequence data for microarrays of type RaEx")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.7.17.  The exon-level probeset genome location was retrieved from Netaffx
using @code{AffyCompatible}.")
    (license license:lgpl2.0+)))

(define-public r-raex10sttranscriptcluster-db
  (package
    (name "r-raex10sttranscriptcluster-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "raex10sttranscriptcluster.db" version
                              'annotation))
       (sha256
        (base32 "1wlbvd2dxv5qchwgcmdwy23z4xnzs42sd6sawc88sqfcyl2gp6r8"))))
    (properties `((upstream-name . "raex10sttranscriptcluster.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/raex10sttranscriptcluster.db")
    (synopsis
     "Affymetrix raex10 annotation data (chip raex10sttranscriptcluster)")
    (description
     "Affymetrix raex10 annotation data (chip raex10sttranscriptcluster) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-raex10stprobeset-db
  (package
    (name "r-raex10stprobeset-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "raex10stprobeset.db" version
                              'annotation))
       (sha256
        (base32 "0r8qj5ibgn1sp1yw94aylql6r88g1v5l7z0h8ji8gg34676gqpf3"))))
    (properties `((upstream-name . "raex10stprobeset.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/raex10stprobeset.db")
    (synopsis "Affymetrix raex10 annotation data (chip raex10stprobeset)")
    (description
     "Affymetrix raex10 annotation data (chip raex10stprobeset) assembled using data
from public repositories.")
    (license license:artistic2.0)))

(define-public r-raerdata
  (package
    (name "r-raerdata")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "raerdata" version
                              'experiment))
       (sha256
        (base32 "01zvkzqiw2m6nvr2z45i6aqzwgp3ck7rrxdkx1ycqdc2xg2jm36c"))))
    (properties `((upstream-name . "raerdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-singlecellexperiment r-rtracklayer r-rsamtools
                             r-experimenthub r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rnabioco/raerdata")
    (synopsis "collection of datasets for use with raer package")
    (description
     "raerdata is an @code{ExperimentHub} package that provides a collection of files
useful for demostrating functionality in the raer package.  Datasets include 10x
genomics @code{scRNA-seq}, bulk RNA-seq, and paired whole-genome and RNA-seq
data.  Additionally databases of human and mouse RNA editing sites are provided.")
    (license license:expat)))

(define-public r-raer
  (package
    (name "r-raer")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "raer" version))
       (sha256
        (base32 "07lsflgim5sd42lqczklzq22q1s14lsxsmjprkhq35kjp241f4wm"))))
    (properties `((upstream-name . "raer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-rhtslib
                             r-matrix
                             r-iranges
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-cli
                             r-bsgenome
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://rnabioco.github.io/raer")
    (synopsis "RNA editing tools in R")
    (description
     "Toolkit for identification and statistical testing of RNA editing signals from
within R. Provides support for identifying sites from bulk-RNA and single cell
RNA-seq datasets, and general methods for extraction of allelic read counts from
alignment files.  Facilitates annotation and exploratory analysis of editing
signals using Bioconductor packages and resources.")
    (license license:expat)))

(define-public r-rae230bprobe
  (package
    (name "r-rae230bprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rae230bprobe" version
                              'annotation))
       (sha256
        (base32 "1smqs93fks4rd5g9kk7cacnpsnj4rjr0d6fl2i01mdiihfi3csny"))))
    (properties `((upstream-name . "rae230bprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rae230bprobe")
    (synopsis "Probe sequence data for microarrays of type rae230b")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was RAE230B\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-rae230bcdf
  (package
    (name "r-rae230bcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rae230bcdf" version
                              'annotation))
       (sha256
        (base32 "1j2i49cp042nk3rkf8q6gxcnwd5cihz1nyg8r6yndkja51r41pi8"))))
    (properties `((upstream-name . "rae230bcdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rae230bcdf")
    (synopsis "rae230bcdf")
    (description
     "This package provides a package containing an environment representing the
RAE230B.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-rae230b-db
  (package
    (name "r-rae230b-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rae230b.db" version
                              'annotation))
       (sha256
        (base32 "19xlds6z8d86kylxbgck7r9nfj58jjfblwx1npzfp5bw44jlhwzm"))))
    (properties `((upstream-name . "rae230b.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rae230b.db")
    (synopsis
     "Affymetrix Affymetrix RAE230B Array annotation data (chip rae230b)")
    (description
     "Affymetrix Affymetrix RAE230B Array annotation data (chip rae230b) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-rae230aprobe
  (package
    (name "r-rae230aprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rae230aprobe" version
                              'annotation))
       (sha256
        (base32 "0gkpaa53znqsmi3366wfmqz6q3d1cq3ymag09gkpdmssrp1rh9qh"))))
    (properties `((upstream-name . "rae230aprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rae230aprobe")
    (synopsis "Probe sequence data for microarrays of type rae230a")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was RAE230A\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-rae230acdf
  (package
    (name "r-rae230acdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rae230acdf" version
                              'annotation))
       (sha256
        (base32 "1f62gw18mhmrm4sqc3kazsm5zd4m73f99xzxbakqhvr5sbdqh28k"))))
    (properties `((upstream-name . "rae230acdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rae230acdf")
    (synopsis "rae230acdf")
    (description
     "This package provides a package containing an environment representing the
RAE230A.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-rae230a-db
  (package
    (name "r-rae230a-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rae230a.db" version
                              'annotation))
       (sha256
        (base32 "13mfwmx8zc519argmjd0bpgfr29bgbs9r2jln1idc9r51smqr9zy"))))
    (properties `((upstream-name . "rae230a.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/rae230a.db")
    (synopsis
     "Affymetrix Affymetrix RAE230A Array annotation data (chip rae230a)")
    (description
     "Affymetrix Affymetrix RAE230A Array annotation data (chip rae230a) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-r453plus1toolbox
  (package
    (name "r-r453plus1toolbox")
    (version "1.56.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "R453Plus1Toolbox" version))
       (sha256
        (base32 "1nbfrj6r1xf9l16hl88z5g1fxbkasbwbmrs1zfsi1zw8yxhwly9j"))))
    (properties `((upstream-name . "R453Plus1Toolbox")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xvector
                             r-xtable
                             r-variantannotation
                             r-teachingdemos
                             r-summarizedexperiment
                             r-shortread
                             r-s4vectors
                             r-rsamtools
                             r-r2html
                             r-pwalign
                             r-iranges
                             r-genomicranges
                             r-bsgenome
                             r-biostrings
                             r-biomart
                             r-biocgenerics
                             r-biobase))
    (home-page "https://bioconductor.org/packages/R453Plus1Toolbox")
    (synopsis
     "package for importing and analyzing data from Roche's Genome Sequencer System")
    (description
     "The R453Plus1 Toolbox comprises useful functions for the analysis of data
generated by Roche's 454 sequencing platform.  It adds functions for quality
assurance as well as for annotation and visualization of detected variants,
complementing the software tools shipped by Roche with their product.  Further,
a pipeline for the detection of structural variants is provided.")
    (license license:lgpl3)))

(define-public r-r3cpet
  (package
    (name "r-r3cpet")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "R3CPET" version))
       (sha256
        (base32 "1f0sswwq2iqp29l3hb28aiyvdnx3nsczwi4hgy3nbj1y0x57v7x6"))))
    (properties `((upstream-name . "R3CPET")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (propagated-inputs (list r-s4vectors
                             r-reshape2
                             r-rcurl
                             r-rcpp
                             r-pheatmap
                             r-iranges
                             r-igraph
                             r-hmisc
                             r-ggplot2
                             r-ggbio
                             r-genomicranges
                             r-genomeinfodb
                             r-data-table
                             r-clvalid
                             r-biocgenerics))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://bioconductor.org/packages/R3CPET")
    (synopsis
     "3CPET: Finding Co-factor Complexes in Chia-PET experiment using a Hierarchical Dirichlet Process")
    (description
     "The package provides a method to infer the set of proteins that are more
probably to work together to maintain chormatin interaction given a
@code{ChIA-PET} experiment results.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-r10kcod-db
  (package
    (name "r-r10kcod-db")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "r10kcod.db" version
                              'annotation))
       (sha256
        (base32 "073b5fb8dcqp5iq3h6p6250l91z6bzg72nzl7qva3jin33v96nmm"))))
    (properties `((upstream-name . "r10kcod.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/r10kcod.db")
    (synopsis
     "Codelink UniSet Rat I Bioarray (~10 000 rat gene targets) annotation data (chip r10kcod)")
    (description
     "Codelink @code{UniSet} Rat I Bioarray (~10 000 rat gene targets) annotation data
(chip r10kcod) assembled using data from public repositories.")
    (license license:artistic2.0)))

