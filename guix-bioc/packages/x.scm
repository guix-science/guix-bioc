(define-module (guix-bioc packages x)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages statistics)
  #:use-module (guix-cran packages k)
  #:use-module (guix-cran packages l)
  #:use-module (guix-bioc packages z)
  #:use-module (guix-bioc packages y)
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
  #:use-module (guix-bioc packages i)
  #:use-module (guix-bioc packages h)
  #:use-module (guix-bioc packages g)
  #:use-module (guix-bioc packages f)
  #:use-module (guix-bioc packages e)
  #:use-module (guix-bioc packages d)
  #:use-module (guix-bioc packages c)
  #:use-module (guix-bioc packages b)
  #:use-module (guix-bioc packages a))

(define-public r-xtropicalisprobe
  (package
    (name "r-xtropicalisprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "xtropicalisprobe" version
                              'annotation))
       (sha256
        (base32 "02z376zy7bqdghbfqqs6h62icfzq26k4aap5ks4hb745i4hrpgif"))))
    (properties `((upstream-name . "xtropicalisprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/xtropicalisprobe")
    (synopsis "Probe sequence data for microarrays of type xtropicalis")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was X\\_tropicalis\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-xtropicaliscdf
  (package
    (name "r-xtropicaliscdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "xtropicaliscdf" version
                              'annotation))
       (sha256
        (base32 "03plnc0dya0dgmvay3hyw5yi91ris6gl643chmjil7p8vn9lb5as"))))
    (properties `((upstream-name . "xtropicaliscdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/xtropicaliscdf")
    (synopsis "xtropicaliscdf")
    (description
     "This package provides a package containing an environment representing the
X_tropicalis.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-xtrasnplocs-hsapiens-dbsnp144-grch38
  (package
    (name "r-xtrasnplocs-hsapiens-dbsnp144-grch38")
    (version "0.99.12")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "XtraSNPlocs.Hsapiens.dbSNP144.GRCh38" version
                              'annotation))
       (sha256
        (base32 "0d4q32ij2x4726wvw06sgmivid0n94vfdmszdyh607xlcahqxa5z"))))
    (properties `((upstream-name . "XtraSNPlocs.Hsapiens.dbSNP144.GRCh38")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome
                             r-biocgenerics))
    (home-page
     "https://bioconductor.org/packages/XtraSNPlocs.Hsapiens.dbSNP144.GRCh38")
    (synopsis "Extra SNP locations for Homo sapiens (dbSNP Build 144)")
    (description
     "Extra SNP locations and alleles for Homo sapiens extracted from NCBI
@code{dbSNP} Build 144.  The source data files used for this package were
created by NCBI on May 30, 2015, and contain SNPs mapped to reference genome
GRCh38.p2 (a patched version of GRCh38 that doesn't alter chromosomes 1-22, X,
Y, MT).  While the SNPlocs.Hsapiens.@code{dbSNP144.GRCh38} package contains only
molecular variations of class \"snp\", this package contains molecular variations
of other classes (in-del, heterozygous, microsatellite, named-locus,
no-variation, mixed, and multinucleotide-polymorphism).")
    (license license:artistic2.0)))

(define-public r-xtrasnplocs-hsapiens-dbsnp144-grch37
  (package
    (name "r-xtrasnplocs-hsapiens-dbsnp144-grch37")
    (version "0.99.12")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "XtraSNPlocs.Hsapiens.dbSNP144.GRCh37" version
                              'annotation))
       (sha256
        (base32 "0k823fvqjmdkmd47m7wyra6jxmv8lnk2i1xl4pp0mh3zgb87hgfb"))))
    (properties `((upstream-name . "XtraSNPlocs.Hsapiens.dbSNP144.GRCh37")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome
                             r-biocgenerics))
    (home-page
     "https://bioconductor.org/packages/XtraSNPlocs.Hsapiens.dbSNP144.GRCh37")
    (synopsis "Extra SNP locations for Homo sapiens (dbSNP Build 144)")
    (description
     "Extra SNP locations and alleles for Homo sapiens extracted from NCBI
@code{dbSNP} Build 144.  The source data files used for this package were
created by NCBI on May 29-30, 2015, and contain SNPs mapped to reference genome
GRCh37.p13 (a patched version of GRCh37 that doesn't alter chromosomes 1-22, X,
Y, MT).  While the SNPlocs.Hsapiens.@code{dbSNP144.GRCh37} package contains only
molecular variations of class \"snp\", this package contains molecular variations
of other classes (in-del, heterozygous, microsatellite, named-locus,
no-variation, mixed, and multinucleotide-polymorphism).")
    (license license:artistic2.0)))

(define-public r-xnastring
  (package
    (name "r-xnastring")
    (version "1.15.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "XNAString" version))
       (sha256
        (base32 "1q50h6fvkc8fr5kvz3whvfiqx3fkxi8m7r1h459sqk362j9pydrj"))))
    (properties `((upstream-name . "XNAString")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-stringi
                             r-s4vectors
                             r-rcpp
                             r-pwalign
                             r-iranges
                             r-genomicranges
                             r-future-apply
                             r-formattable
                             r-data-table
                             r-bsgenome
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/XNAString")
    (synopsis "Efficient Manipulation of Modified Oligonucleotide Sequences")
    (description
     "The XNAString package allows for description of base sequences and associated
chemical modifications in a single object.  XNAString is able to capture single
stranded, as well as double stranded molecules.  Chemical modifications are
represented as independent strings associated with different features of the
molecules (base sequence, sugar sequence, backbone sequence, modifications) and
can be read or written to a HELM notation.  It also enables secondary structure
prediction using RNAfold from @code{ViennaRNA}.  XNAString is designed to be
efficient representation of nucleic-acid based therapeutics, therefore it stores
information about target sequences and provides interface for matching and
alignment functions from Biostrings and pwalign packages.")
    (license license:gpl2)))

(define-public r-xlaevis2probe
  (package
    (name "r-xlaevis2probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "xlaevis2probe" version
                              'annotation))
       (sha256
        (base32 "0vrhbzi3myh10v7r5a6jqiinllns3n40nxs097px7g80x8ajkmb2"))))
    (properties `((upstream-name . "xlaevis2probe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/xlaevis2probe")
    (synopsis "Probe sequence data for microarrays of type xlaevis2")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was X\\_laevis\\_2\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-xlaevis2cdf
  (package
    (name "r-xlaevis2cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "xlaevis2cdf" version
                              'annotation))
       (sha256
        (base32 "1w7f6z5f0mfgblfjy840dxj3y1l9zz8fp4s8q6zd580nwaa50g78"))))
    (properties `((upstream-name . "xlaevis2cdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/xlaevis2cdf")
    (synopsis "xlaevis2cdf")
    (description
     "This package provides a package containing an environment representing the
X_laevis_2.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-xlaevis-db
  (package
    (name "r-xlaevis-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "xlaevis.db" version
                              'annotation))
       (sha256
        (base32 "0cdi71c8pflb8n4yfxc0wmfi51w6z0dlz7nw5hv0hkx547v79d53"))))
    (properties `((upstream-name . "xlaevis.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-xl-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/xlaevis.db")
    (synopsis "Affymetrix Xenopus laevis annotation data (chip xlaevis)")
    (description
     "Affymetrix Xenopus laevis annotation data (chip xlaevis) assembled using data
from public repositories.")
    (license license:artistic2.0)))

(define-public r-xhybcasneuf
  (package
    (name "r-xhybcasneuf")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "XhybCasneuf" version
                              'experiment))
       (sha256
        (base32 "11gvq14f8nnn334q35r6yq8wcjfvn9mhy6v4ixnigvazm6bjvxdx"))))
    (properties `((upstream-name . "XhybCasneuf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tinesath1cdf r-rcolorbrewer r-ath1121501cdf
                             r-affy))
    (home-page "https://bioconductor.org/packages/XhybCasneuf")
    (synopsis "EBI/PSB cross-hybridisation study package")
    (description
     "Cross-hybridisation study on the ATH1 Affymetrix @code{GeneChip}.")
    (license license:artistic2.0)))

(define-public r-xeva
  (package
    (name "r-xeva")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Xeva" version))
       (sha256
        (base32 "1f3jlk8827r1pq4aj7bkqla0i05f6qn4bya8gxxqghdby5nkphhp"))))
    (properties `((upstream-name . "Xeva")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales
                             r-rmisc
                             r-pharmacogx
                             r-nlme
                             r-ggplot2
                             r-downloader
                             r-doparallel
                             r-complexheatmap
                             r-biobase
                             r-bbmisc))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Xeva")
    (synopsis "Analysis of patient-derived xenograft (PDX) data")
    (description
     "The Xeva package provides efficient and powerful functions for patient-drived
xenograft (PDX) based pharmacogenomic data analysis.  This package contains a
set of functions to perform analysis of patient-derived xenograft data.  This
package was developed by the BHKLab, for further information please see our
documentation.")
    (license license:gpl3)))

(define-public r-xenopuslaevisprobe
  (package
    (name "r-xenopuslaevisprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "xenopuslaevisprobe" version
                              'annotation))
       (sha256
        (base32 "0prb14zn2gvgxq8w0y21x1ng51cn3bgjhkppf7zkmnq1xkzvq0pw"))))
    (properties `((upstream-name . "xenopuslaevisprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/xenopuslaevisprobe")
    (synopsis "Probe sequence data for microarrays of type xenopuslaevis")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Xenopus\\_laevis\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-xenopuslaeviscdf
  (package
    (name "r-xenopuslaeviscdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "xenopuslaeviscdf" version
                              'annotation))
       (sha256
        (base32 "1bcz1hr7gxw6ac4qvw0giph6hfcf5i9b11s274ypq512qc1d32iq"))))
    (properties `((upstream-name . "xenopuslaeviscdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/xenopuslaeviscdf")
    (synopsis "xenopuslaeviscdf")
    (description
     "This package provides a package containing an environment representing the
Xenopus_laevis.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-xenopus-db0
  (package
    (name "r-xenopus-db0")
    (version "3.21.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "xenopus.db0" version
                              'annotation))
       (sha256
        (base32 "1439r2f9iz5mrjdr4fssybbjld4ll8wz6rvwa19466cbdln3a74a"))))
    (properties `((upstream-name . "xenopus.db0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/xenopus.db0")
    (synopsis "Base Level Annotation databases for xenopus")
    (description
     "Base annotation databases for xenopus, intended ONLY to be used by
@code{AnnotationDbi} to produce regular annotation packages.")
    (license license:artistic2.0)))

(define-public r-xenlite
  (package
    (name "r-xenlite")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "xenLite" version))
       (sha256
        (base32 "1ymbcb2w5997qhai5jpavqb1dk73bhg3c1m3bxbxpb1n5cd8j2fh"))))
    (properties `((upstream-name . "xenLite")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tenxio
                             r-summarizedexperiment
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-shiny
                             r-s4vectors
                             r-matrix
                             r-hdf5array
                             r-ggplot2
                             r-ebimage
                             r-dplyr
                             r-biocfilecache
                             r-arrow))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vjcitn/xenLite")
    (synopsis "Simple classes and methods for managing Xenium datasets")
    (description
     "Define a relatively light class for managing Xenium data using Bioconductor.
Address use of parquet for coordinates, @code{SpatialExperiment} for assay and
sample data.  Address serialization and use of cloud storage.")
    (license license:artistic2.0)))

(define-public r-xeniumio
  (package
    (name "r-xeniumio")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "XeniumIO" version))
       (sha256
        (base32 "0yd0kf34dw3lyphvlqhw1h6b0qcyfq86lg4455mqvklx96vpvm3c"))))
    (properties `((upstream-name . "XeniumIO")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-visiumio
                             r-tenxio
                             r-summarizedexperiment
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-jsonlite
                             r-biocio
                             r-biocgenerics
                             r-biocbaseutils))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/waldronlab/XeniumIO")
    (synopsis "Import and represent Xenium data from the 10X Xenium Analyzer")
    (description
     "The package allows users to readily import spatial data obtained from the 10X
Xenium Analyzer pipeline.  Supported formats include parquet', h5', and mtx
files.  The package mainly represents data as @code{SpatialExperiment} objects.")
    (license license:artistic2.0)))

(define-public r-xde
  (package
    (name "r-xde")
    (version "2.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "XDE" version))
       (sha256
        (base32 "127s5y121g2x669mcmyvvx5qxbzp8nsqcda1gkfjskbmwi7lhycf"))))
    (properties `((upstream-name . "XDE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-siggenes
                             r-rcolorbrewer
                             r-mvtnorm
                             r-gtools
                             r-genemeta
                             r-genefilter
                             r-biocgenerics
                             r-biobase))
    (home-page "https://bioconductor.org/packages/XDE")
    (synopsis
     "XDE: a Bayesian hierarchical model for cross-study analysis of differential gene expression")
    (description
     "Multi-level model for cross-study detection of differential gene expression.")
    (license license:lgpl2.0)))

(define-public r-xcoredata
  (package
    (name "r-xcoredata")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "xcoredata" version
                              'experiment))
       (sha256
        (base32 "0b1hwnn0kvv4bq4k2qr3l251iljqk93wbhqzrvi6ax1i3vf217m5"))))
    (properties `((upstream-name . "xcoredata")))
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
    (home-page "https://bioconductor.org/packages/xcoredata")
    (synopsis "data package for xcore")
    (description "This package provides data to use with xcore package.")
    (license license:gpl2)))

(define-public r-xcore
  (package
    (name "r-xcore")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "xcore" version))
       (sha256
        (base32 "1i17xqa5gyhhwa98dcfbc5nihwrql4ndpp7prcxvzwiahcgghxay"))))
    (properties `((upstream-name . "xcore")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-multiassayexperiment
                             r-matrix
                             r-magrittr
                             r-iterators
                             r-iranges
                             r-glmnet
                             r-genomicranges
                             r-foreach
                             r-edger
                             r-delayedarray))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/xcore")
    (synopsis "xcore expression regulators inference")
    (description
     "xcore is an R package for transcription factor activity modeling based on known
molecular signatures and user's gene expression data.  Accompanying xcoredata
package provides a collection of molecular signatures, constructed from publicly
available @code{ChiP-seq} experiments.  xcore use ridge regression to model
changes in expression as a linear combination of molecular signatures and find
their unknown activities.  Obtained, estimates can be further tested for
significance to select molecular signatures with the highest predicted effect on
the observed expression changes.")
    (license license:gpl2)))

(define-public r-xcell2
  (package
    (name "r-xcell2")
    (version "1.0.9")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "xCell2" version))
       (sha256
        (base32 "1k1ab1rsiwzfagf0hd718mrxk5qwc47qjvf2qq3wqvv5fbpq0iqv"))))
    (properties `((upstream-name . "xCell2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tibble
                             r-summarizedexperiment
                             r-singscore
                             r-singlecellexperiment
                             r-rfast
                             r-readr
                             r-quadprog
                             r-progress
                             r-pracma
                             r-ontologyindex
                             r-minpack-lm
                             r-matrix
                             r-magrittr
                             r-dplyr
                             r-biocparallel
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/AlmogAngel/xCell2")
    (synopsis "Tool for Generic Cell Type Enrichment Analysis")
    (description
     "@code{xCell2} provides methods for cell type enrichment analysis using cell type
signatures.  It includes three main functions - 1. @code{xCell2Train} for
training custom references objects from bulk or single-cell RNA-seq datasets.
2. @code{xCell2Analysis} for conducting the cell type enrichment analysis using
the custom reference.  3. @code{xCell2GetLineage} for identifying dependencies
between different cell types using ontology.")
    (license license:gpl3+)))

(define-public r-xaitest
  (package
    (name "r-xaitest")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "XAItest" version))
       (sha256
        (base32 "0i9ks1p3l354pxr9s3k0kjs6b064q9ff7w0qf09prn8cxkivpfig"))))
    (properties `((upstream-name . "XAItest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-randomforest
                             r-limma
                             r-lime
                             r-kernelshap
                             r-ggplot2
                             r-dt
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/GhislainFievet/XAItest")
    (synopsis "XAItest: Enhancing Feature Discovery with eXplainable AI")
    (description
     "XAItest is an R Package that identifies features using @code{eXplainable} AI
(XAI) methods such as SHAP or LIME. This package allows users to compare these
methods with traditional statistical tests like t-tests, empirical Bayes, and
Fisher's test.  Additionally, it includes a system that enables the comparison
of feature importance with p-values by incorporating calibrated simulated data.")
    (license license:expat)))

