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
  #:use-module (guix-cran packages i)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages java)
  #:use-module (guix-cran packages e)
  #:use-module (guix-cran packages r)
  #:use-module (gnu packages chemistry)
  #:use-module (gnu packages maths)
  #:use-module (guix-cran packages l)
  #:use-module (guix-cran packages n)
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rWikiPathways" version))
       (sha256
        (base32 "1m6djs70h58xs4323vp65j33i8mzql2sps9l04pgp28cs17yr4mc"))))
    (properties `((upstream-name . "rWikiPathways")))
    (build-system r-build-system)
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RVS" version))
       (sha256
        (base32 "10j84lhap7c74scar3gmk983zi6lhl8zvawp9ap46qf8wrpnqp4k"))))
    (properties `((upstream-name . "RVS")))
    (build-system r-build-system)
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
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rvisdiff" version))
       (sha256
        (base32 "1s4jhg79s2q71v2y5h6ihwr05giyv987kncr22g60frsdsav2hcm"))))
    (properties `((upstream-name . "Rvisdiff")))
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RUVnormalizeData" version
                              'experiment))
       (sha256
        (base32 "0w62ybdiq0dwd11ld48kl178qpd53xbfl51z2jwpi2pj1b86fg9l"))))
    (properties `((upstream-name . "RUVnormalizeData")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/RUVnormalizeData")
    (synopsis "Gender data for the RUVnormalize package")
    (description
     "Microarray gene expression data from the study of Vawter et al., 2004.")
    (license license:gpl3)))

(define-public r-ruvnormalize
  (package
    (name "r-ruvnormalize")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RUVnormalize" version))
       (sha256
        (base32 "109q8cywgzxyc31hzjx73arffdhasblg7wk5gfwqcqfv2120r99c"))))
    (properties `((upstream-name . "RUVnormalize")))
    (build-system r-build-system)
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
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RUVcorr" version))
       (sha256
        (base32 "05fga28l65h21b84pn6gn6vrgglnvpblmrz551qj2djrmzda3pn1"))))
    (properties `((upstream-name . "RUVcorr")))
    (build-system r-build-system)
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "runibic" version))
       (sha256
        (base32 "0q25b2dfgp82p156l37zzl5a842ah3hzq60f9gkcv4vqkns99z64"))))
    (properties `((upstream-name . "runibic")))
    (build-system r-build-system)
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
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rTRMui" version))
       (sha256
        (base32 "0d5gxjiddy57cbryjdihqyf7nkd35apk41wkl1izp467il40mb75"))))
    (properties `((upstream-name . "rTRMui")))
    (build-system r-build-system)
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
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rTRM" version))
       (sha256
        (base32 "016vhij3rc6sbhi7caxxnpps4w0w2n28x4hqwdxkxk6r0f6kkvla"))))
    (properties `((upstream-name . "rTRM")))
    (build-system r-build-system)
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
    (version "1.66.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rtreemix" version))
       (sha256
        (base32 "0rlhrzpyv95mm9wdqmn2wqqkgb3nm3irqrffba81ip7mn9fmdjsw"))))
    (properties `((upstream-name . "Rtreemix")))
    (build-system r-build-system)
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rtpca" version))
       (sha256
        (base32 "1prrc1ys74pfr0cgn9qx2is9zzpybvapi34xp1yxnq1xcgynkrxv"))))
    (properties `((upstream-name . "Rtpca")))
    (build-system r-build-system)
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
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTopper" version))
       (sha256
        (base32 "14y4qvx5iyiqghw4cwn1k3sn7i788iakfzssl0gqal0r6npdh9ib"))))
    (properties `((upstream-name . "RTopper")))
    (build-system r-build-system)
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTNsurvival" version))
       (sha256
        (base32 "1545jbis4gpcggw320kkrh7s2dllw4rwpq0qc95zm9v9yjxzzzk6"))))
    (properties `((upstream-name . "RTNsurvival")))
    (build-system r-build-system)
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTNduals" version))
       (sha256
        (base32 "0idr55acbdi7bbcds9vp0sjv1px8dsmycll7z92f7l2xrk1mgyhp"))))
    (properties `((upstream-name . "RTNduals")))
    (build-system r-build-system)
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
    (version "2.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTN" version))
       (sha256
        (base32 "09zd8z3wn26r7bamzq17slamydr73aqlx94zi0273npfggcwv4n1"))))
    (properties `((upstream-name . "RTN")))
    (build-system r-build-system)
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTCGA.RPPA" version
                              'experiment))
       (sha256
        (base32 "158m31hysybyh3ha5n324srrxzc76bkv9fpblida2znv9sni6c52"))))
    (properties `((upstream-name . "RTCGA.RPPA")))
    (build-system r-build-system)
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

(define-public r-rtcga-rnaseq
  (package
    (name "r-rtcga-rnaseq")
    (version "20151101.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTCGA.rnaseq" version
                              'experiment))
       (sha256
        (base32 "03kr2l5l5a7v98rna3a43543b7pqcwc7zhawnh92g3rdabk03w9s"))))
    (properties `((upstream-name . "RTCGA.rnaseq")))
    (build-system r-build-system)
    (propagated-inputs (list r-rtcga))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RTCGA.rnaseq")
    (synopsis "Rna-seq datasets from The Cancer Genome Atlas Project")
    (description
     "Package provides rna-seq datasets from The Cancer Genome Atlas Project for all
cohorts types from http://gdac.broadinstitute.org/.  Rna-seq data format is
explained here https://wiki.nci.nih.gov/display/TCGA/RNASeq+Version+2.  Data
source is illumina hiseq Level 3 RSEM normalized expression data.  Data from
2015-11-01 snapshot.")
    (license license:gpl2)))

(define-public r-rtcga-pancan12
  (package
    (name "r-rtcga-pancan12")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTCGA.PANCAN12" version
                              'experiment))
       (sha256
        (base32 "0rmgg5j4rzqg78i43l9975vhdnh8r23lz78fkwwa94ihpqv1pbic"))))
    (properties `((upstream-name . "RTCGA.PANCAN12")))
    (build-system r-build-system)
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
    (version "20151101.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTCGA.mutations" version
                              'experiment))
       (sha256
        (base32 "19las4v4zg8wbb52wa4zmwpfpn80pyjp1kyvqkhgvpd8m3dj7951"))))
    (properties `((upstream-name . "RTCGA.mutations")))
    (build-system r-build-system)
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTCGA.mRNA" version
                              'experiment))
       (sha256
        (base32 "1anwv8cg38lpwfyxicqi8kml9q9gigrc7bzmp163322lxaq79c1q"))))
    (properties `((upstream-name . "RTCGA.mRNA")))
    (build-system r-build-system)
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTCGA.miRNASeq" version
                              'experiment))
       (sha256
        (base32 "1bgcgsx01s7p24014rp8jiklmml822hxabrgf4xxagx4jzr91fxn"))))
    (properties `((upstream-name . "RTCGA.miRNASeq")))
    (build-system r-build-system)
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTCGA.methylation" version
                              'experiment))
       (sha256
        (base32 "04q23w331vjmmmy2iy79grkgdn03iz53vw8npwx2wq1w8if8xdi4"))))
    (properties `((upstream-name . "RTCGA.methylation")))
    (build-system r-build-system)
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTCGA.CNV" version
                              'experiment))
       (sha256
        (base32 "0ll5zj9d9d3ykkkq7iqq5sfvz8i4dc297nwkjpvjxrlazw28iiyl"))))
    (properties `((upstream-name . "RTCGA.CNV")))
    (build-system r-build-system)
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
    (version "20151101.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTCGA.clinical" version
                              'experiment))
       (sha256
        (base32 "1s7fss644wkrvimqp2h3hq14gr0gjdqyj92hcrzff2qwyy5fzhky"))))
    (properties `((upstream-name . "RTCGA.clinical")))
    (build-system r-build-system)
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
    (version "1.56.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RTCA" version))
       (sha256
        (base32 "078bh47vfkr5a0qvhnjadjzd0ph3pg32dv1r3ssvz9fq8qg4g0hy"))))
    (properties `((upstream-name . "RTCA")))
    (build-system r-build-system)
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
    (version "1.16.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rSWeeP" version))
       (sha256
        (base32 "0866900bfmh1g1rjfn6046pd2yrhf9fnh62bc81vxsm2g2645rqy"))))
    (properties `((upstream-name . "rSWeeP")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/rSWeeP")
    (synopsis
     "Functions to creation of low dimensional comparative matrices of Amino Acid Sequence occurrences")
    (description
     "The S@code{WeeP} method was developed to favor the analizes between amino acids
sequences and to assist alignment free phylogenetic studies.  This method is
based on the concept of sparse words, which is applied in the scan of biological
sequences and its the conversion in a matrix of ocurrences.  Aiming the
generation of low dimensional matrices of Amino Acid Sequence occurrences.")
    (license license:gpl3)))

(define-public r-rsvsim
  (package
    (name "r-rsvsim")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RSVSim" version))
       (sha256
        (base32 "1w79dsv2z8i7m58pbih52sfh8adr9gl5j94j4k8vhaj4288jba0d"))))
    (properties `((upstream-name . "RSVSim")))
    (build-system r-build-system)
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RSeqAn" version))
       (sha256
        (base32 "0jc2abpjq2w7f22qj9izd98xckz7zsjx516g5ygdrik3r47hgh6x"))))
    (properties `((upstream-name . "RSeqAn")))
    (build-system r-build-system)
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rsemmed" version))
       (sha256
        (base32 "12m771wipjr823k88f38waqsm1nq7qig7200969g2dz8fiaaxjxx"))))
    (properties `((upstream-name . "rsemmed")))
    (build-system r-build-system)
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rScudo" version))
       (sha256
        (base32 "0mhhv5p1z334qn92bql4rsd8p0xpnhd26kzahwi4wqkkb6yqbn8y"))))
    (properties `((upstream-name . "rScudo")))
    (build-system r-build-system)
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rrvgo" version))
       (sha256
        (base32 "1339cxx5sizbdhhya1kxq9x31m2qvdl993abr4pn07hs3awya63p"))))
    (properties `((upstream-name . "rrvgo")))
    (build-system r-build-system)
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
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RRHO" version))
       (sha256
        (base32 "132mwv1qc32gbdjm8825aqd5l1f64hx78kqcbb6a347ch9c9pmwv"))))
    (properties `((upstream-name . "RRHO")))
    (build-system r-build-system)
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rRDPData" version
                              'experiment))
       (sha256
        (base32 "030hnp9sghl0f2wfg243ll6myp9gr5zzbwlfzaz8m7q8xk2if363"))))
    (properties `((upstream-name . "rRDPData")))
    (build-system r-build-system)
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
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rRDP" version))
       (sha256
        (base32 "00r8cii5gnnzd909alq7cn94b3df66w6bcd7pld1jvdphxwgvp3l"))))
    (properties `((upstream-name . "rRDP")))
    (build-system r-build-system)
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RRBSdata" version
                              'experiment))
       (sha256
        (base32 "1s6fjkz0dld7mlb1ylqmrw63jk3k0162rv2li6zkz66gc4aq10p0"))))
    (properties `((upstream-name . "RRBSdata")))
    (build-system r-build-system)
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
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rqubic" version))
       (sha256
        (base32 "1hr0i7f8987x79ir34yg65bzkd7lij03rkfmw6dr289d8kjclap2"))))
    (properties `((upstream-name . "rqubic")))
    (build-system r-build-system)
    (propagated-inputs (list r-biocgenerics r-biobase r-biclust))
    (home-page "https://bioconductor.org/packages/rqubic")
    (synopsis
     "Qualitative biclustering algorithm for expression data analysis in R")
    (description
     "This package implements the QUBIC algorithm introduced by Li et al.  for the
qualitative biclustering with gene expression data.")
    (license license:gpl2)))

(define-public r-rpx
  (package
    (name "r-rpx")
    (version "2.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rpx" version))
       (sha256
        (base32 "1a3rh2f9wwgcgadgb5ryj8vs9kcyhqwz7wdnykv2pl3pgm8ba2zp"))))
    (properties `((upstream-name . "rpx")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-rcurl r-jsonlite r-curl r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lgatto/rpx")
    (synopsis "R Interface to the ProteomeXchange Repository")
    (description
     "The rpx package implements an interface to proteomics data submitted to the
@code{ProteomeXchange} consortium.")
    (license license:gpl2)))

(define-public r-rprimer
  (package
    (name "r-rprimer")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rprimer" version))
       (sha256
        (base32 "04maldspcfzszvbgvzq4fmaf62639kb2rs2dqm9r9miqqxqndkr3"))))
    (properties `((upstream-name . "rprimer")))
    (build-system r-build-system)
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
    (version "1.60.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RPA" version))
       (sha256
        (base32 "0v1jkny311ba43fz7x4i94ddm5hq9281gfj6wkr3disdbxjqgj37"))))
    (properties `((upstream-name . "RPA")))
    (build-system r-build-system)
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ROSeq" version))
       (sha256
        (base32 "1rs3dfgsm7bznvjyajdkkvi3zdd84barkq78ma09vg02n7x6zkfc"))))
    (properties `((upstream-name . "ROSeq")))
    (build-system r-build-system)
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
    (version "2.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ROntoTools" version))
       (sha256
        (base32 "0idclyk1dwpmfksf9l9ms4nwpin1flw50bafxa0pqlh9fdj5bz0z"))))
    (properties `((upstream-name . "ROntoTools")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgraphviz r-keggrest r-kegggraph r-graph r-boot))
    (home-page "https://bioconductor.org/packages/ROntoTools")
    (synopsis "R Onto-Tools suite")
    (description "Suite of tools for functional analysis.")
    (license (license:fsdg-compatible "CC BY-NC-ND 4.0 + file LICENSE"))))

(define-public r-rols
  (package
    (name "r-rols")
    (version "3.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rols" version))
       (sha256
        (base32 "04kpfb0vavlkxirl9hgl6wdqhy6kw6ly3fyk0jr85kdzdb8ss1xd"))))
    (properties `((upstream-name . "rols")))
    (build-system r-build-system)
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
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RolDE" version))
       (sha256
        (base32 "11ishff55z086qgc28vxamc5blfxs95qn758f5cgvf9rfr8h64rz"))))
    (properties `((upstream-name . "RolDE")))
    (build-system r-build-system)
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ROCpAI" version))
       (sha256
        (base32 "1nisrspdl4m6q9hpxhd49dxhfsi27znh4alcvc7gbhlqmbi0q9cs"))))
    (properties `((upstream-name . "ROCpAI")))
    (build-system r-build-system)
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
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "roastgsa" version))
       (sha256
        (base32 "00rxmlx94y03mkz5jbwqx4px1cwv63nblhj2yxidy2k5374fk7fy"))))
    (properties `((upstream-name . "roastgsa")))
    (build-system r-build-system)
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
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rnits" version))
       (sha256
        (base32 "1c4l6flfyamnjhb3givw4icx6cbl2pnrvscalrywyhxpqk64cirv"))))
    (properties `((upstream-name . "Rnits")))
    (build-system r-build-system)
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
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RnBeads.rn5" version
                              'experiment))
       (sha256
        (base32 "098vy604ca0g408hl2g0p6kh2zzvzvbmyhbr0z081rbdpvzlnf4f"))))
    (properties `((upstream-name . "RnBeads.rn5")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicranges))
    (home-page "https://bioconductor.org/packages/RnBeads.rn5")
    (synopsis "RnBeads.rn5")
    (description
     "Automatically generated @code{RnBeads} annotation package for the assembly rn5.")
    (license license:gpl3)))

(define-public r-rnbeads-mm9
  (package
    (name "r-rnbeads-mm9")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RnBeads.mm9" version
                              'experiment))
       (sha256
        (base32 "1bd5jai5jk1d3mqbx7x05ypfxma8s330na9n5bb9qzwxq7imd50b"))))
    (properties `((upstream-name . "RnBeads.mm9")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicranges))
    (home-page "https://bioconductor.org/packages/RnBeads.mm9")
    (synopsis "RnBeads.mm9")
    (description
     "Automatically generated @code{RnBeads} annotation package for the assembly mm9.")
    (license license:gpl3)))

(define-public r-rnbeads-mm10
  (package
    (name "r-rnbeads-mm10")
    (version "2.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RnBeads.mm10" version
                              'experiment))
       (sha256
        (base32 "151ivmy35ff850f1ij403bj5g9jhw8r515jjqbvq182x1cygbdfl"))))
    (properties `((upstream-name . "RnBeads.mm10")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicranges))
    (home-page "https://bioconductor.org/packages/RnBeads.mm10")
    (synopsis "RnBeads.mm10")
    (description
     "Automatically generated @code{RnBeads} annotation package for the assembly mm10.")
    (license license:gpl3)))

(define-public r-rnbeads-hg38
  (package
    (name "r-rnbeads-hg38")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RnBeads.hg38" version
                              'experiment))
       (sha256
        (base32 "05ffx8a76z9nnl3qhfjf6vfnnc2pqkw2jy4pc0wgqc1y3w9vg60l"))))
    (properties `((upstream-name . "RnBeads.hg38")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicranges))
    (home-page "https://bioconductor.org/packages/RnBeads.hg38")
    (synopsis "RnBeads.hg38")
    (description "@code{RnBeads} annotation package for genome assembly hg38.")
    (license license:gpl3)))

(define-public r-rnbeads-hg19
  (package
    (name "r-rnbeads-hg19")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RnBeads.hg19" version
                              'experiment))
       (sha256
        (base32 "0yn7n3zv9i76abx9wp0vw6wa7iylbrj2ffhzbc3irc104id0i4f9"))))
    (properties `((upstream-name . "RnBeads.hg19")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicranges))
    (home-page "https://bioconductor.org/packages/RnBeads.hg19")
    (synopsis "RnBeads.hg19")
    (description
     "Automatically generated @code{RnBeads} annotation package for the assembly hg19.")
    (license license:gpl3)))

(define-public r-rnaseqsamplesizedata
  (package
    (name "r-rnaseqsamplesizedata")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RnaSeqSampleSizeData" version
                              'experiment))
       (sha256
        (base32 "1gm55gmsxna8a53k7a7yd99nzc4mg1kw7l5lnmkipa03lafa2yff"))))
    (properties `((upstream-name . "RnaSeqSampleSizeData")))
    (build-system r-build-system)
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
    (version "2.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RnaSeqSampleSize" version))
       (sha256
        (base32 "0zfmrpfnz8bka6z4408bl5mzv1yr7648qizy8b93qc903vx3zhvs"))))
    (properties `((upstream-name . "RnaSeqSampleSize")))
    (build-system r-build-system)
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
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNASeqPower" version))
       (sha256
        (base32 "0jv1cm4j467gjx6j297h60yj7xd4ax71v2rgm65sibswbnxvbfa1"))))
    (properties `((upstream-name . "RNASeqPower")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/RNASeqPower")
    (synopsis "Sample size for RNAseq studies")
    (description "RNA-seq, sample size.")
    (license (license:fsdg-compatible "LGPL (>=2)"))))

(define-public r-rnaseqdata-hnrnpc-bam-chr14
  (package
    (name "r-rnaseqdata-hnrnpc-bam-chr14")
    (version "0.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAseqData.HNRNPC.bam.chr14" version
                              'experiment))
       (sha256
        (base32 "1xc5ya20nnrhdkib7590zv5g8q6cppd6qiwglxc6fj26ncdj6s73"))))
    (properties `((upstream-name . "RNAseqData.HNRNPC.bam.chr14")))
    (build-system r-build-system)
    (home-page "http://www.ebi.ac.uk/arrayexpress/experiments/E-MTAB-1147/")
    (synopsis
     "Aligned reads from RNAseq experiment: Transcription profiling by high throughput sequencing of HNRNPC knockdown and control HeLa cells")
    (description
     "The package contains 8 BAM files, 1 per sequencing run.  Each BAM file was
obtained by (1) aligning the reads (paired-end) to the full hg19 genome with
@code{TopHat2}, and then (2) subsetting to keep only alignments on chr14.  See
accession number E-MTAB-1147 in the @code{ArrayExpress} database for details
about the experiment, including links to the published study (by Zarnack et al.,
2012) and to the FASTQ files.")
    (license license:lgpl2.0+)))

(define-public r-rnaseqcovarimpute
  (package
    (name "r-rnaseqcovarimpute")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAseqCovarImpute" version))
       (sha256
        (base32 "1gy7kmhp7hzv75hi1n8lcgsqqwwr7nm6r50rccqmswky5g6wd9nb"))))
    (properties `((upstream-name . "RNAseqCovarImpute")))
    (build-system r-build-system)
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
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rnaseqcomp" version))
       (sha256
        (base32 "00lv24xxf9644gikb76wwk9bijfa3frpwb4n0cbq5fsx0b1288rs"))))
    (properties `((upstream-name . "rnaseqcomp")))
    (build-system r-build-system)
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAsense" version))
       (sha256
        (base32 "1ynaylwxb1vcwx5g14sw1lz6sidnbhc0gb4z3i8gz1yr32mpnmgl"))))
    (properties `((upstream-name . "RNAsense")))
    (build-system r-build-system)
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAmodR.RiboMethSeq" version))
       (sha256
        (base32 "0qcl95c22kwn0prhznk2s97aisapq0pldcvp2mvckh5wi2jqrbbp"))))
    (properties `((upstream-name . "RNAmodR.RiboMethSeq")))
    (build-system r-build-system)
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAmodR.ML" version))
       (sha256
        (base32 "1xcpjq8w81gw52fjb5ijdlf2k94qwqf6s6c8h6y6rja1csqpkn9i"))))
    (properties `((upstream-name . "RNAmodR.ML")))
    (build-system r-build-system)
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAmodR.Data" version
                              'experiment))
       (sha256
        (base32 "0k5ykbry5si0wc6f1am3ln9pcl842hjrpmmw15j9sm565k5pmvmf"))))
    (properties `((upstream-name . "RNAmodR.Data")))
    (build-system r-build-system)
    (arguments
     (list
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAmodR.AlkAnilineSeq" version))
       (sha256
        (base32 "1czaa3y8xzadrj1f8h1y4f0xvpb12s8l64k5lxhvp77s1gcxqcxm"))))
    (properties `((upstream-name . "RNAmodR.AlkAnilineSeq")))
    (build-system r-build-system)
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAmodR" version))
       (sha256
        (base32 "0c4ndc7r3rpk8gmd0n4n5q0x72cz3ja48sq4w3w9ahn05l9qql2v"))))
    (properties `((upstream-name . "RNAmodR")))
    (build-system r-build-system)
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
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAinteractMAPK" version
                              'experiment))
       (sha256
        (base32 "0vm20x1lfgl671rrwvxybcwjgk7falb3d5xi6hiq9jivvbms9120"))))
    (properties `((upstream-name . "RNAinteractMAPK")))
    (build-system r-build-system)
    (propagated-inputs (list r-sparselda
                             r-rnainteract
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

(define-public r-rnainteract
  (package
    (name "r-rnainteract")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAinteract" version))
       (sha256
        (base32 "18jxg1wxa4z8ik9g7q3rr6mijrl1vk4b7wnkxs5pll6qz97mh726"))))
    (properties `((upstream-name . "RNAinteract")))
    (build-system r-build-system)
    (propagated-inputs (list r-splots
                             r-rcolorbrewer
                             r-locfit
                             r-limma
                             r-latticeextra
                             r-lattice
                             r-icsnp
                             r-ics
                             r-hwriter
                             r-gplots
                             r-geneplotter
                             r-cellhts2
                             r-biobase
                             r-abind))
    (home-page "https://bioconductor.org/packages/RNAinteract")
    (synopsis "Estimate Pairwise Interactions from multidimensional features")
    (description
     "RNAinteract estimates genetic interactions from multi-dimensional read-outs like
features extracted from images.  The screen is assumed to be performed in
multi-well plates or similar designs.  Starting from a list of features (e.g.
cell number, area, fluorescence intensity) per well, genetic interactions are
estimated.  The packages provides functions for reporting interacting gene
pairs, plotting heatmaps and double RNAi plots.  An HTML report can be written
for quality control and analysis.")
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rnaEditr" version))
       (sha256
        (base32 "1jghirl1iz11wm4sq8qvw2fvgha7q6ili6bddgpdfcn07abbkcsm"))))
    (properties `((upstream-name . "rnaEditr")))
    (build-system r-build-system)
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAdecay" version))
       (sha256
        (base32 "1bf0mgj1n38wqapabbw9d74s5099sqlpkhb9yd9p8w48hwfdk4nc"))))
    (properties `((upstream-name . "RNAdecay")))
    (build-system r-build-system)
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RNAAgeCalc" version))
       (sha256
        (base32 "1h221flwa8b4dchw3b65cx7z11744cljzimqc2pv991dp21bvhnk"))))
    (properties `((upstream-name . "RNAAgeCalc")))
    (build-system r-build-system)
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

(define-public r-rmspc
  (package
    (name "r-rmspc")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rmspc" version))
       (sha256
        (base32 "0f9l8gbbd81ac871fbpknyxsjwy9l1xz3nfbvnic012gg33n6j4y"))))
    (properties `((upstream-name . "rmspc")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rtracklayer r-processx
                             r-genomicranges r-biocmanager))
    (native-inputs (list r-knitr))
    (home-page "https://genometric.github.io/MSPC/")
    (synopsis "Multiple Sample Peak Calling")
    (description
     "The rmspc package runs MSPC (Multiple Sample Peak Calling) software using R. The
analysis of @code{ChIP-seq} samples outputs a number of enriched regions
(commonly known as \"peaks\"), each indicating a protein-DNA interaction or a
specific chromatin modification.  When replicate samples are analyzed,
overlapping peaks are expected.  This repeated evidence can therefore be used to
locally lower the minimum significance required to accept a peak.  MSPC uses
combined evidence from replicated experiments to evaluate peak calling output,
rescuing peaks, and reduce false positives.  It takes any number of replicates
as input and improves sensitivity and specificity of peak calling on each, and
identifies consensus regions between the input samples.")
    (license license:gpl3)))

(define-public r-rmmquant
  (package
    (name "r-rmmquant")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rmmquant" version))
       (sha256
        (base32 "1jshnr4xph4glrk0pl3r8pklxnzg495m74yx25xjqg8avwahwvw4"))))
    (properties `((upstream-name . "Rmmquant")))
    (build-system r-build-system)
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
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/RmiR.Hs.miRNA")
    (synopsis "Various databases of microRNA Targets")
    (description "Various databases of @code{microRNA} Targets.")
    (license (license:fsdg-compatible "The Artistic License, Version 2.0"))))

(define-public r-rmelting
  (package
    (name "r-rmelting")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rmelting" version))
       (sha256
        (base32 "1rk27wg4j8hldmrzcjymw3hhaq9cm4bjz5fqwjzx8kdrs94wwrid"))))
    (properties `((upstream-name . "rmelting")))
    (build-system r-build-system)
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
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RMassBankData" version
                              'experiment))
       (sha256
        (base32 "10g42s6wq66fhvrxcwxf08073scpkinfldwwdl03r7lxy1wka426"))))
    (properties `((upstream-name . "RMassBankData")))
    (build-system r-build-system)
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
    (version "3.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RMassBank" version))
       (sha256
        (base32 "05ymkjk6hkilm4wn7qn6dh1gf4pxp3zk339fbi10jri8ar0ilbls"))))
    (properties `((upstream-name . "RMassBank")))
    (build-system r-build-system)
    (inputs (list openbabel))
    (propagated-inputs (list r-yaml
                             r-xml
                             r-webchem
                             r-s4vectors
                             r-rjson
                             r-readjdx
                             r-rcpp
                             r-rcdk
                             r-r-utils
                             r-mzr
                             r-msnbase
                             r-logger
                             r-httr
                             r-glue
                             r-envipat
                             r-digest
                             r-data-table
                             r-chemminer
                             r-chemmineob
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
    (version "1.60.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rmagpie" version))
       (sha256
        (base32 "146db5sz1kkgpwdarll8ca6ndb0l48hxnfi7cp39zllrhwfmwzdm"))))
    (properties `((upstream-name . "Rmagpie")))
    (build-system r-build-system)
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
    (version "1.66.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RLMM" version))
       (sha256
        (base32 "1ihqlag1gxw08rg1ii2mpxg8gnwsxyg3ggd3k8fjnlqd6zsbvdq9"))))
    (properties `((upstream-name . "RLMM")))
    (build-system r-build-system)
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

(define-public r-rlhub
  (package
    (name "r-rlhub")
    (version "1.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RLHub" version
                              'experiment))
       (sha256
        (base32 "0hm3wplzmmzsygz8dalwf6y798p4g2bssjdsg51w17s2mgm4hl98"))))
    (properties `((upstream-name . "RLHub")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-experimenthub r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Bishop-Laboratory/RLHub")
    (synopsis
     "An ExperimentHub package for accessing processed RLSuite data sets")
    (description
     "| RLHub provides a convenient interface to the processed data provided within
RLSuite, a tool-chain for analyzing R-loop-mapping data sets.  The primary
purpose of RLHub is to serve the processed data sets required by the RLSeq R
package and the RLBase web service.  Additionally, RLHub provides a stand-alone
R interface to these data, benefiting users who are addressing questions related
to R-loop regions (RL-Regions), R-loop-binding proteins (RLBPs), R-loop
co-localizing factors, and the differences between R-loop-mapping methods.  The
full data-generating protocol is found here:
https://github.com/Bishop-Laboratory/RLBase-data.")
    (license license:expat)))

(define-public r-rlassocox
  (package
    (name "r-rlassocox")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RLassoCox" version))
       (sha256
        (base32 "14zw0xnssh17c6v4qy3b81qrv453r2ayjnq62d1ix695xl7q2g43"))))
    (properties `((upstream-name . "RLassoCox")))
    (build-system r-build-system)
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RJMCMCNucleosomes" version))
       (sha256
        (base32 "0w9d61zd6g3c8dp9i68nw8rmbnrf6lfa86m9a7ydkf54w7p33fsk"))))
    (properties `((upstream-name . "RJMCMCNucleosomes")))
    (build-system r-build-system)
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RIVER" version))
       (sha256
        (base32 "0clqr2h7cf00lzj1y405hfyc9i1aadssrzhrzl4wp1r4774rpw4z"))))
    (properties `((upstream-name . "RIVER")))
    (build-system r-build-system)
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RITANdata" version
                              'experiment))
       (sha256
        (base32 "0k1rziwpb26y19j2cii9y2vffr0sdkskll41njwpkl5mla5bzylv"))))
    (properties `((upstream-name . "RITANdata")))
    (build-system r-build-system)
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RITAN" version))
       (sha256
        (base32 "1jvwvgdqgxlnccf8k2mc1ihg4nasdqbl0pnm7khw3px39b1bnlzl"))))
    (properties `((upstream-name . "RITAN")))
    (build-system r-build-system)
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RImmPort" version))
       (sha256
        (base32 "0kvl9ivf0y7wjkaj7a5qbn9hv9ghbl00xm55i30p4vsvk8q32h3s"))))
    (properties `((upstream-name . "RImmPort")))
    (build-system r-build-system)
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
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rifiComparative" version))
       (sha256
        (base32 "0isgcbmk7c99xhlasaaa2gyjf9827zfdq1vyf4xc21lyhv9q5j51"))))
    (properties `((upstream-name . "rifiComparative")))
    (build-system r-build-system)
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
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rifi" version))
       (sha256
        (base32 "0yajsqm27zy5imb719x8knsrn9rk85q98wc65xqmvj9bkqkjfvdl"))))
    (properties `((upstream-name . "rifi")))
    (build-system r-build-system)
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ribosomeProfilingQC" version))
       (sha256
        (base32 "0bblk7ncxdrbgmgcjvif9zgd1ynlh4205vlmgr42jbg5p1i7p3in"))))
    (properties `((upstream-name . "ribosomeProfilingQC")))
    (build-system r-build-system)
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ribor" version))
       (sha256
        (base32 "0kymbmm96a7ccl0dz46sk0lzgf3n55qvdkywkj91kh0ddrsji0vi"))))
    (properties `((upstream-name . "ribor")))
    (build-system r-build-system)
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RiboDiPA" version))
       (sha256
        (base32 "0an2hbjzi514kb0m4l8i46w4zyxp510vw2f3xdmldjdyv5yw4v1z"))))
    (properties `((upstream-name . "RiboDiPA")))
    (build-system r-build-system)
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
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RiboCrypt" version))
       (sha256
        (base32 "0ay8yl1fc4iizina4aqvyjr6iqpc7dr457l7w4p3849d3i160304"))))
    (properties `((upstream-name . "RiboCrypt")))
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
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ri16cod.db")
    (synopsis
     "Codelink Rat Inflammation 16 Bioarray annotation data (chip ri16cod)")
    (description
     "Codelink Rat Inflammation 16 Bioarray annotation data (chip ri16cod) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-rheumaticconditionwollbold
  (package
    (name "r-rheumaticconditionwollbold")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rheumaticConditionWOLLBOLD" version
                              'experiment))
       (sha256
        (base32 "0s75faby72cv6i1y1mj5d3qfvfp6907jinnfm17zvgdvcl0xx06h"))))
    (properties `((upstream-name . "rheumaticConditionWOLLBOLD")))
    (build-system r-build-system)
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
    (version "3.19.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rhesus.db0" version
                              'annotation))
       (sha256
        (base32 "1687fgxx9rj1ghjg7vhmli360algh6piwafdsi4l347sl1yhklcd"))))
    (properties `((upstream-name . "rhesus.db0")))
    (build-system r-build-system)
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rhdf5client" version))
       (sha256
        (base32 "17c8r361za3760lkik2b88c3m8zska33qam2iwbl5hw9yhkrl6ck"))))
    (properties `((upstream-name . "rhdf5client")))
    (build-system r-build-system)
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
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rgsepd" version))
       (sha256
        (base32 "18r2naxir299k0gcd9j3a5rvdma590m06v38j8wiligsgw5cmkfg"))))
    (properties `((upstream-name . "rgsepd")))
    (build-system r-build-system)
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
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RGSEA" version))
       (sha256
        (base32 "1jz3m6yvk1mybac5xyhpk9vvssnm9iq1mfk2aj32hv338q7cj8js"))))
    (properties `((upstream-name . "RGSEA")))
    (build-system r-build-system)
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RGraph2js" version))
       (sha256
        (base32 "1lb8kbqcimpivpzrxbcnlw8pdjzfq45nhhy7pdq7nvx9r5yrcks2"))))
    (properties `((upstream-name . "RGraph2js")))
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
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rgoslin" version))
       (sha256
        (base32 "0saxw5kppcw0hwjykgzx8873izbl509hq1ga8w9qg2c5zx5xahk9"))))
    (properties `((upstream-name . "rgoslin")))
    (build-system r-build-system)
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
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RgnTX" version))
       (sha256
        (base32 "15mw5j8wjbzygqj1v5pqh0dz6n37y55p08yi884hpw7sn9dwkfsw"))))
    (properties `((upstream-name . "RgnTX")))
    (build-system r-build-system)
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RGMQLlib" version
                              'experiment))
       (sha256
        (base32 "09149yaw2gpypp0m7cghbjqksbj0ncly8fxlv1n7l2s8kaq5jkdq"))))
    (properties `((upstream-name . "RGMQLlib")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page
     "http://www.bioinformatics.deib.polimi.it/genomic_computing/GMQL/")
    (synopsis "RGMQLlib, java libraries to run GMQL scala API")
    (description
     "This package provides a package that contains scala libraries to call GMQL from
R used by RGMQL package.  It contains a scalable data management engine written
in Scala programming language.")
    (license license:artistic2.0)))

(define-public r-rgmql
  (package
    (name "r-rgmql")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RGMQL" version))
       (sha256
        (base32 "1p7s17i18ql3b8yvg6pmcz62ql18ncd3hqk0rganmahfbd91idby"))))
    (properties `((upstream-name . "RGMQL")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-s4vectors
                             r-rtracklayer
                             r-rjava
                             r-rgmqllib
                             r-plyr
                             r-httr
                             r-glue
                             r-genomicranges
                             r-dplyr
                             r-data-table
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page
     "http://www.bioinformatics.deib.polimi.it/genomic_computing/GMQL/")
    (synopsis "GenoMetric Query Language for R/Bioconductor")
    (description
     "This package brings the @code{GenoMetric} Query Language (GMQL) functionalities
into the R environment.  GMQL is a high-level, declarative language to manage
heterogeneous genomic datasets for biomedical purposes, using simple queries to
process genomic regions and their metadata and properties.  GMQL adopts
algorithms efficiently designed for big data using cloud-computing technologies
(like Apache Hadoop and Spark) allowing GMQL to run on modern infrastructures,
in order to achieve scalability and high performance.  It allows to create,
manipulate and extract genomic data from different data sources both locally and
remotely.  Our RGMQL functions allow complex queries and processing leveraging
on the R idiomatic paradigm.  The RGMQL package also provides a rich set of
ancillary classes that allow sophisticated input/output management and sorting,
such as: ASC, DESC, BAG, MIN, MAX, SUM, AVG, MEDIAN, STD, Q1, Q2, Q3 (and many
others).  Note that many RGMQL functions are not directly executed in R
environment, but are deferred until real execution is issued.")
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
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rGenomeTracks" version))
       (sha256
        (base32 "0a34xdmpj1872vxhd9a2k1rbzgvsmhisyy2pknbz606924k13xnz"))))
    (properties `((upstream-name . "rGenomeTracks")))
    (build-system r-build-system)
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
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rfPred" version))
       (sha256
        (base32 "02clazsix7n4nnz1kn7hkk48fggxp2bqf97xbzngnljskvlhnakb"))))
    (properties `((upstream-name . "rfPred")))
    (build-system r-build-system)
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
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RforProteomics" version
                              'experiment))
       (sha256
        (base32 "0irg6wrwy82xhlkgj1vphh6ncp9s6qcpp40mxv1vq969qjjchkk9"))))
    (properties `((upstream-name . "RforProteomics")))
    (build-system r-build-system)
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rfastp" version))
       (sha256
        (base32 "1zk2zm08nv8i9q39s7dbppd3pk5kxki17x00971wwsfvl261hnsy"))))
    (properties `((upstream-name . "Rfastp")))
    (build-system r-build-system)
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rfaRm" version))
       (sha256
        (base32 "1c8kpcbwkz33cbc8xqfd5cqj1n979a9ijbj06nfgylkm71ma1682"))))
    (properties `((upstream-name . "rfaRm")))
    (build-system r-build-system)
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rexposome" version))
       (sha256
        (base32 "13ivwypcw58bmlrps16anhxf0dxk8v16wyadwz4wds4rd0ihjvcz"))))
    (properties `((upstream-name . "rexposome")))
    (build-system r-build-system)
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
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ReUseData" version))
       (sha256
        (base32 "1dai0mxsnjmr6gs465mljfnydai276i5zjjbgxphgas1z3iv9sz6"))))
    (properties `((upstream-name . "ReUseData")))
    (build-system r-build-system)
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
\"@code{getCloudData}()\".")
    (license license:gpl3)))

(define-public r-retrofit
  (package
    (name "r-retrofit")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "retrofit" version))
       (sha256
        (base32 "1dx2yfz7f18sknl75igmfzk3nfrp28pjkbkpn1w6zx1sbj6dbxsl"))))
    (properties `((upstream-name . "retrofit")))
    (build-system r-build-system)
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

(define-public r-restfulsedata
  (package
    (name "r-restfulsedata")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "restfulSEData" version
                              'experiment))
       (sha256
        (base32 "17ia2d5g0zawfpcqvpncw05qshhn09p05j2frxmz0mwjfp7mya27"))))
    (properties `((upstream-name . "restfulSEData")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment r-hdf5array
                             r-experimenthub r-delayedarray))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/restfulSEData")
    (synopsis "Example metadata for the \"restfulSE\" R package")
    (description
     "Metadata @code{RangedSummarizedExperiment} shell for use with @code{restfulSE}.")
    (license license:artistic2.0)))

(define-public r-resolve
  (package
    (name "r-resolve")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RESOLVE" version))
       (sha256
        (base32 "12ax0f3vasppwn5z10fr2mhhaaiyiii5qi3ll4yzsn7qmy02ya52"))))
    (properties `((upstream-name . "RESOLVE")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RepViz" version))
       (sha256
        (base32 "1rww94wdpswy27i26zn25g8j2s1l14xmljhkz6fl45jmkfn4cqxa"))))
    (properties `((upstream-name . "RepViz")))
    (build-system r-build-system)
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
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Repitools" version))
       (sha256
        (base32 "1ypiiwi7kp5j8ayz3c9b1gzsy7kd1iw3zv35hrg7pb5fry63dg9g"))))
    (properties `((upstream-name . "Repitools")))
    (build-system r-build-system)
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "REMP" version))
       (sha256
        (base32 "1ss4170nxif8942095nk5lv1knqf082i4nlxsr3kyvf8ghqn2gmd"))))
    (properties `((upstream-name . "REMP")))
    (build-system r-build-system)
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "regutools" version))
       (sha256
        (base32 "1ypy9nrafnr7ri4a2cz5akm78cdq0qahlmbcs8ylr97bimkdandk"))))
    (properties `((upstream-name . "regutools")))
    (build-system r-build-system)
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "regsplice" version))
       (sha256
        (base32 "0cmqigb2klpq7nqvhmvmyf9xzgjfvw22zpgpcjnlv24ga30sacak"))))
    (properties `((upstream-name . "regsplice")))
    (build-system r-build-system)
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RegParallel" version
                              'experiment))
       (sha256
        (base32 "0zaask3zpbqh6pmrx4hsi5wz7kkfhbl15xzhz10s8h9m739wm8c0"))))
    (properties `((upstream-name . "RegParallel")))
    (build-system r-build-system)
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
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "regionReport" version))
       (sha256
        (base32 "1nxs0slhhnxpjg220irf0a6hsh1zp0xh54ffpvl25lzgy422xwpp"))))
    (properties `((upstream-name . "regionReport")))
    (build-system r-build-system)
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
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "regioneReloaded" version))
       (sha256
        (base32 "1yi97sarqljayqm5lwci0z768qk0vzqiazpx8j6lvpsqhrsgmcry"))))
    (properties `((upstream-name . "regioneReloaded")))
    (build-system r-build-system)
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
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RegionalST" version))
       (sha256
        (base32 "0gzc1m6ds6bnkq26bpq9i0mbpyw2biwnn07d30cdzipfsxbjdhlk"))))
    (properties `((upstream-name . "RegionalST")))
    (build-system r-build-system)
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
                             r-bayesspace
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/RegionalST")
    (synopsis
     "Investigating regions of interest and performing cross-regional analysis with spatial transcriptomics data")
    (description
     "This package analyze spatial transcriptomics data through cross-regional
analysis.  It selects regions of interest (ROIs) and identifys cross-regional
cell type-specific differential signals.  The ROIs can be selected using
automatic algorithm or through manual selection.  It facilitates manual
selection of ROIs using a shiny application.")
    (license license:gpl3)))

(define-public r-regionalpcs
  (package
    (name "r-regionalpcs")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "regionalpcs" version))
       (sha256
        (base32 "1hrmxb2ag0d823kn3ya07rwgfv931x2shqzdq3q310rw9jllcwgd"))))
    (properties `((upstream-name . "regionalpcs")))
    (build-system r-build-system)
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RegEnrich" version))
       (sha256
        (base32 "1gma0xsw72pi3shxlnvx3ynkvys2hv3g95gx2x0whdsarxwki34h"))))
    (properties `((upstream-name . "RegEnrich")))
    (build-system r-build-system)
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
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "REDseq" version))
       (sha256
        (base32 "15lx6sjw8rm0lrvyjfq3n4nq0r6rlgwvnm6bafd86a1dii934gf8"))))
    (properties `((upstream-name . "REDseq")))
    (build-system r-build-system)
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
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RedisParam" version))
       (sha256
        (base32 "1j4h509gl9grgy8npj2fxnvm2kx0q41bcfid26v7p91c6i33gzsj"))))
    (properties `((upstream-name . "RedisParam")))
    (build-system r-build-system)
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
    (version "3.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RedeR" version))
       (sha256
        (base32 "1x4435mcm4f8w5a7y54269f3npwxz26347v77ngmnjj32nfch8l9"))))
    (properties `((upstream-name . "RedeR")))
    (build-system r-build-system)
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "recoup" version))
       (sha256
        (base32 "07313l0b78x0m0vp8ipngzv069v7vjgr8q7vv4j9kbr33kql3bp6"))))
    (properties `((upstream-name . "recoup")))
    (build-system r-build-system)
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "recountmethylation" version))
       (sha256
        (base32 "0cbp1cz6h1djwgrv2achgypmxiracrjm8y8sj1f9iqy6i1fgq8jl"))))
    (properties `((upstream-name . "recountmethylation")))
    (build-system r-build-system)
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "recount3" version))
       (sha256
        (base32 "1dmc5s5mw95caq2pqpgik5z5nggy5mnas1dawssiyhr10wivnjd0"))))
    (properties `((upstream-name . "recount3")))
    (build-system r-build-system)
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
    (version "1.30.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "recount" version))
       (sha256
        (base32 "0fdnp0ilvxkzyzwblbchf6ns1v6fah32zyg3y68pz88ir5nwg49b"))))
    (properties `((upstream-name . "recount")))
    (build-system r-build-system)
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "reconsi" version))
       (sha256
        (base32 "13xviw2qn8sk7ka6qskb39dsv9qz4vkfdydpzzvm14y6iy62zgzr"))))
    (properties `((upstream-name . "reconsi")))
    (build-system r-build-system)
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "receptLoss" version))
       (sha256
        (base32 "1c110rpfbi6rgl97659qx5qyj6wp6sqzddpnjg3bir21nh6902fl"))))
    (properties `((upstream-name . "receptLoss")))
    (build-system r-build-system)
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rebook" version))
       (sha256
        (base32 "0v59wr8862phlv4byy3j3l0spm7450vz218xffgwlkwixzw3hnnk"))))
    (properties `((upstream-name . "rebook")))
    (build-system r-build-system)
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "REBET" version))
       (sha256
        (base32 "09wb77d7j1f59mlnqdl9q4nl1qn75a9qq3sfa9k6nvb7x721scl4"))))
    (properties `((upstream-name . "REBET")))
    (build-system r-build-system)
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
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ReadqPCR" version))
       (sha256
        (base32 "1bv65my3azx1v16qdcb5s0bycykdga6kfpvhj8av6g0cyrq6xj8y"))))
    (properties `((upstream-name . "ReadqPCR")))
    (build-system r-build-system)
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ReactomeGSA.data" version
                              'experiment))
       (sha256
        (base32 "1410ks6s7albf6sly8ry0ln58ws9jlfn62amniqqsg46kx4xc4bh"))))
    (properties `((upstream-name . "ReactomeGSA.data")))
    (build-system r-build-system)
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ReactomeGSA" version))
       (sha256
        (base32 "188c0vrbq01gy4zhsf9wsg9amjf9434g0fzf3lnwzxdm0xzw2b33"))))
    (properties `((upstream-name . "ReactomeGSA")))
    (build-system r-build-system)
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

(define-public r-reactomegraph4r
  (package
    (name "r-reactomegraph4r")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ReactomeGraph4R" version))
       (sha256
        (base32 "17xkrqyp5wdsdd0gpplsk3qfsr8sgf1ap0vz6v34xlhbmzdq3rs8"))))
    (properties `((upstream-name . "ReactomeGraph4R")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-reactomecontentservice4r
                             r-purrr
                             r-neo4r
                             r-magrittr
                             r-jsonlite
                             r-getpass
                             r-foreach
                             r-doparallel
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/reactome/ReactomeGraph4R")
    (synopsis "Interface for the Reactome Graph Database")
    (description
     "Pathways, reactions, and biological entities in Reactome knowledge are
systematically represented as an ordered network.  Instances are represented as
nodes and relationships between instances as edges; they are all stored in the
Reactome Graph Database.  This package serves as an interface to query the
interconnected data from a local Neo4j database, with the aim of minimizing the
usage of Neo4j Cypher queries.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-reactomecontentservice4r
  (package
    (name "r-reactomecontentservice4r")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ReactomeContentService4R" version))
       (sha256
        (base32 "1qqrkki9v3ggwqv88n7w3wp50y4gxvkixrg1sad23vl08jd0rkl6"))))
    (properties `((upstream-name . "ReactomeContentService4R")))
    (build-system r-build-system)
    (propagated-inputs (list r-magick
                             r-jsonlite
                             r-httr
                             r-foreach
                             r-doparallel
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/reactome/ReactomeContentService4R")
    (synopsis "Interface for the Reactome Content Service")
    (description
     "Reactome is a free, open-source, open access, curated and peer-reviewed
knowledgebase of bio-molecular pathways.  This package is to interact with the
Reactome Content Service API. Pre-built functions would allow users to retrieve
data and images that consist of proteins, pathways, and other molecules related
to a specific gene or entity in Reactome.")
    (license (list license:asl2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-rdrtoolbox
  (package
    (name "r-rdrtoolbox")
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RDRToolbox" version))
       (sha256
        (base32 "1lg7z6wy4903fyg1j7x5bjd9l550g05rhx0gc60ki9pwlm7q82hv"))))
    (properties `((upstream-name . "RDRToolbox")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgl r-mass))
    (home-page "https://bioconductor.org/packages/RDRToolbox")
    (synopsis "package for nonlinear dimension reduction with Isomap and LLE.")
    (description
     "This package provides a package for nonlinear dimension reduction using the
Isomap and LLE algorithm.  It also includes a routine for computing the
Davis-Bouldin-Index for cluster validation, a plotting tool and a data generator
for microarray gene expression data and for the Swiss Roll dataset.")
    (license license:gpl2+)))

(define-public r-rdgidb
  (package
    (name "r-rdgidb")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rDGIdb" version))
       (sha256
        (base32 "1v96nj1ffmg1678p7rspcqsnqvwcssv96jcyqqbb8v8sryflwmi5"))))
    (properties `((upstream-name . "rDGIdb")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/rDGIdb")
    (synopsis "R Wrapper for DGIdb")
    (description
     "The @code{rDGIdb} package provides a wrapper for the Drug Gene Interaction
Database (DGIdb).  For simplicity, the wrapper query function and output
resembles the user interface and results format provided on the DGIdb website
(https://www.dgidb.org/).")
    (license license:expat)))

(define-public r-rcyjs
  (package
    (name "r-rcyjs")
    (version "2.26.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RCyjs" version))
       (sha256
        (base32 "0apqkpcrl7snsaldzranz1sk6zl6vc0rgrdg5h0srkzwdqnx10sh"))))
    (properties `((upstream-name . "RCyjs")))
    (build-system r-build-system)
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
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RCX" version))
       (sha256
        (base32 "0vkh57hcz71h8v8ad1rffjakf4ax1pyh5vvfwfmfnkh19ywfln4i"))))
    (properties `((upstream-name . "RCX")))
    (build-system r-build-system)
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RcwlPipelines" version))
       (sha256
        (base32 "1bivrgd9f431spg0gv1achs258rmyxcnggn7zh63z2nlskxx3pp1"))))
    (properties `((upstream-name . "RcwlPipelines")))
    (build-system r-build-system)
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rcwl" version))
       (sha256
        (base32 "02pxjcf3bbvv4hh2vr796b3pyd8vxh5v4g2bkgicsc0jw40554rr"))))
    (properties `((upstream-name . "Rcwl")))
    (build-system r-build-system)
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RCSL" version))
       (sha256
        (base32 "1r103i9v8b5w74b3ad7fr25sgsd0xx5kjrxawbwks57dk9k8m272"))))
    (properties `((upstream-name . "RCSL")))
    (build-system r-build-system)
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
    (version "1.40.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rcpi" version))
       (sha256
        (base32 "0mlsbkn7diprbqb5x0czbq6lngfw1cll3n2fzsm6r4l2mb9wpmdv"))))
    (properties `((upstream-name . "Rcpi")))
    (build-system r-build-system)
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
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rcollectl" version))
       (sha256
        (base32 "1i1a8imzdangilmww0r3l75npc19xbija9lj13nbwj1vnwb85cpa"))))
    (properties `((upstream-name . "Rcollectl")))
    (build-system r-build-system)
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RCM" version))
       (sha256
        (base32 "03f8gifzqhc5hdppk4lfybj7p3gkqb5jnpsxpf515dd7c5y210gy"))))
    (properties `((upstream-name . "RCM")))
    (build-system r-build-system)
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RcisTarget.hg19.motifDBs.cisbpOnly.500bp"
                              version
                              'experiment))
       (sha256
        (base32 "170wjqnrvmdjcpx0bwwky3j7cxhbqvch781dzl6il2igca9kbqhq"))))
    (properties `((upstream-name . "RcisTarget.hg19.motifDBs.cisbpOnly.500bp")))
    (build-system r-build-system)
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
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rCGH" version))
       (sha256
        (base32 "0241nrg1kcc6vxj1p6pp5gyjff7k3mdsr764bn3zxvh1wqjnvfrm"))))
    (properties `((upstream-name . "rCGH")))
    (build-system r-build-system)
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
    (version "2.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rcellminerData" version
                              'experiment))
       (sha256
        (base32 "1al3v586q2ak77hjbl3xlvrxqs3xid8y06lf601c5diyrd7vp7r7"))))
    (properties `((upstream-name . "rcellminerData")))
    (build-system r-build-system)
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
    (version "2.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rcellminer" version))
       (sha256
        (base32 "0dxg050rw9p88hdv55v60fg2ijjl1dnzxq47xy60nrzpijcb3770"))))
    (properties `((upstream-name . "rcellminer")))
    (build-system r-build-system)
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
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RCASPAR" version))
       (sha256
        (base32 "1aw2sqq8hmll31aagd6nxndwszxj16plba0v85jk880ycxpnd0hr"))))
    (properties `((upstream-name . "RCASPAR")))
    (build-system r-build-system)
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
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rbwa" version))
       (sha256
        (base32 "0qbipwgdfgzdkrlvwmx0nbi8v4frv0r2vl8hd2mypf205mv4qb8b"))))
    (properties `((upstream-name . "Rbwa")))
    (build-system r-build-system)
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
    (version "2.62.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rbsurv" version))
       (sha256
        (base32 "1hj569n72bds094dfnr8bpfx1ca0sn4bax8lnjz03yz08kmrv8a6"))))
    (properties `((upstream-name . "rbsurv")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-biobase))
    (home-page "http://www.korea.ac.kr/~stat2242/")
    (synopsis "Robust likelihood-based survival modeling with microarray data")
    (description "This package selects genes associated with survival.")
    (license license:gpl2+)))

(define-public r-rbm
  (package
    (name "r-rbm")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RBM" version))
       (sha256
        (base32 "10q0b86jjpf5ch3xpax6vwkl8cd72djzvij0b6p53as7n8nqxz0p"))))
    (properties `((upstream-name . "RBM")))
    (build-system r-build-system)
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
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rBLAST" version))
       (sha256
        (base32 "1yhj08p6iyz2760j2z3v78mc4rzafd0lzfqprq3wd1v1bm34v3qb"))))
    (properties `((upstream-name . "rBLAST")))
    (build-system r-build-system)
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
    (version "2.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rBiopaxParser" version))
       (sha256
        (base32 "0hzs6i7l8n1hifj3b91n1f6z3l40jdcl1jlnz8z5qczk84266lx2"))))
    (properties `((upstream-name . "rBiopaxParser")))
    (build-system r-build-system)
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
    (version "1.64.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RBioinf" version))
       (sha256
        (base32 "093gd1z1yqyhdqs8s7yyjb2ndf9izp0pnpbglp05599cf053zfnr"))))
    (properties `((upstream-name . "RBioinf")))
    (build-system r-build-system)
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
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RBioFormats" version))
       (sha256
        (base32 "1xwazjipv1yrxyx9mny7j7mmc7mvdlrmvjwy8v3i2hfmf137nlj1"))))
    (properties `((upstream-name . "RBioFormats")))
    (build-system r-build-system)
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rbec" version))
       (sha256
        (base32 "1cf5g2q8ak45ipb0cvgnrqy4s131g9lnchzs6g7mfj7b6ynkgp6d"))))
    (properties `((upstream-name . "Rbec")))
    (build-system r-build-system)
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
    (version "1.72.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RbcBook1" version))
       (sha256
        (base32 "00y8lzfz7z9zmzrg9qyiwkwbcn2xsg6xiphzjvz02j34ghig43ng"))))
    (properties `((upstream-name . "RbcBook1")))
    (build-system r-build-system)
    (propagated-inputs (list r-rpart r-graph r-biobase))
    (home-page "http://www.biostat.harvard.edu/~carey")
    (synopsis "Support for Springer monograph on Bioconductor")
    (description "tools for building book.")
    (license license:artistic2.0)))

(define-public r-rawrr
  (package
    (name "r-rawrr")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rawrr" version))
       (sha256
        (base32 "1h8q9j8qiqrmk41j567dq53i1mbm89c9gcj9p8qjqcrjcvykg89f"))))
    (properties `((upstream-name . "rawrr")))
    (build-system r-build-system)
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
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rawDiag" version))
       (sha256
        (base32 "1rdccg67gkcxj7jgg0by1244x3794kz4s60l5ps54j41iy3zs0v2"))))
    (properties `((upstream-name . "rawDiag")))
    (build-system r-build-system)
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
    (version "3.19.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rat.db0" version
                              'annotation))
       (sha256
        (base32 "0vl2an3b00h94z1ba29fz83q04p4n641qs4xgp53zz3jg8lgm4si"))))
    (properties `((upstream-name . "rat.db0")))
    (build-system r-build-system)
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
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Rarr" version))
       (sha256
        (base32 "0ks576wqzywlk07wlb116sjzs1b1103mwrd5410qya13mwq6yx62"))))
    (properties `((upstream-name . "Rarr")))
    (build-system r-build-system)
    (inputs (list zlib))
    (propagated-inputs (list r-stringr r-r-utils r-paws-storage r-jsonlite
                             r-httr))
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
    (version "2.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RareVariantVis" version))
       (sha256
        (base32 "08siw7yzx1jd3cgg2mirc27ycpk6wdvv4vcwzln1ps35nkhy52in"))))
    (properties `((upstream-name . "RareVariantVis")))
    (build-system r-build-system)
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
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RAREsim" version))
       (sha256
        (base32 "1d55wfs6rg3mq7x1f2aalgln6vpcb2qfp8fq3yi1ki4ki5dzpb05"))))
    (properties `((upstream-name . "RAREsim")))
    (build-system r-build-system)
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
    (version "3.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RankProd" version))
       (sha256
        (base32 "0y9c833zn3l4492cl7b71x5g7q6kr81zh2f3v9x4l52q6mw6l5qh"))))
    (properties `((upstream-name . "RankProd")))
    (build-system r-build-system)
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "randRotation" version))
       (sha256
        (base32 "1wi9i8ssan3pfjikbjj5m3rs8lv52jdih0pxfk0rzahqak8m82db"))))
    (properties `((upstream-name . "randRotation")))
    (build-system r-build-system)
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
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "randPack" version))
       (sha256
        (base32 "0byix4ipmd9wnknbzm4pjqp09yh9fa4cjky94p3l1gnbmg8kw48j"))))
    (properties `((upstream-name . "randPack")))
    (build-system r-build-system)
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ramwas" version))
       (sha256
        (base32 "0azf24qvjy2dfizi0wp7lkrhjdm2xwwk6hmkg31ly501cjd4pn9s"))))
    (properties `((upstream-name . "ramwas")))
    (build-system r-build-system)
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ramr" version))
       (sha256
        (base32 "096rxydr9qilg4lcczab1xlzv5ff2lq9r5l6bdzyhprm07mglc80"))))
    (properties `((upstream-name . "ramr")))
    (build-system r-build-system)
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
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "rain" version))
       (sha256
        (base32 "0wah5qiciwfcvdrii885dvsgbmq7lnjdpgdvzddprf6jwdsgq8w0"))))
    (properties `((upstream-name . "rain")))
    (build-system r-build-system)
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
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "RAIDS" version))
       (sha256
        (base32 "0frwaqmbd74gccqj8ibkgkyj1ii7q8qczzmkv9wgi4m0d9m2cy0v"))))
    (properties `((upstream-name . "RAIDS")))
    (build-system r-build-system)
    (propagated-inputs (list r-variantannotation
                             r-snprelate
                             r-s4vectors
                             r-rlang
                             r-proc
                             r-matrixgenerics
                             r-iranges
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
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "raerdata" version
                              'experiment))
       (sha256
        (base32 "15j7sw3kvgqqb7m4y4kn40p8g8s1f204lfnb5zskkjfakj6c2j03"))))
    (properties `((upstream-name . "raerdata")))
    (build-system r-build-system)
    (arguments
     (list
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
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "raer" version))
       (sha256
        (base32 "0fxc1i3p1ha0yn6s5c334q2bv7mfwjd3yvlvss6whi16vi63kbwj"))))
    (properties `((upstream-name . "raer")))
    (build-system r-build-system)
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
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "R453Plus1Toolbox" version))
       (sha256
        (base32 "0x5p028x13hygd1b2l4g2dclm9lnwj1hsh6x58hmkpbx27w68rb9"))))
    (properties `((upstream-name . "R453Plus1Toolbox")))
    (build-system r-build-system)
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
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "R3CPET" version))
       (sha256
        (base32 "12gq5mj6vbkd49slhpgnmwfdl65hr4wip9xbqx3j72b0f0yabg1h"))))
    (properties `((upstream-name . "R3CPET")))
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
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/r10kcod.db")
    (synopsis
     "Codelink UniSet Rat I Bioarray (~10 000 rat gene targets) annotation data (chip r10kcod)")
    (description
     "Codelink @code{UniSet} Rat I Bioarray (~10 000 rat gene targets) annotation data
(chip r10kcod) assembled using data from public repositories.")
    (license license:artistic2.0)))

