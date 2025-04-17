(define-module (guix-bioc packages p)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages bioconductor)
  #:use-module (guix-cran packages e)
  #:use-module (gnu packages statistics)
  #:use-module (guix-cran packages s)
  #:use-module (gnu packages web)
  #:use-module (guix-cran packages h)
  #:use-module (guix-cran packages p)
  #:use-module (guix-cran packages q)
  #:use-module (guix-cran packages r)
  #:use-module (guix-cran packages b)
  #:use-module (guix-cran packages l)
  #:use-module (guix-cran packages n)
  #:use-module (guix-cran packages t)
  #:use-module (guix-cran packages i)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages maths)
  #:use-module (guix-cran packages c)
  #:use-module (guix-cran packages m)
  #:use-module (guix-cran packages g)
  #:use-module (guix-cran packages a)
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

(define-public r-pwmenrich-mmusculus-background
  (package
    (name "r-pwmenrich-mmusculus-background")
    (version "4.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PWMEnrich.Mmusculus.background" version
                              'experiment))
       (sha256
        (base32 "1jijn2kp5n3ng11bf9vj6mfi422zz1bzs2jb8rp9sdlzqf1n89kr"))))
    (properties `((upstream-name . "PWMEnrich.Mmusculus.background")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pwmenrich))
    (home-page
     "https://bioconductor.org/packages/PWMEnrich.Mmusculus.background")
    (synopsis "M. musculus background for PWMEnrich")
    (description
     "PWMEnrich pre-compiled background objects for M.musculus (mouse) and
@code{MotifDb} M. musculus motifs.")
    (license license:gpl3)))

(define-public r-pwmenrich-hsapiens-background
  (package
    (name "r-pwmenrich-hsapiens-background")
    (version "4.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PWMEnrich.Hsapiens.background" version
                              'experiment))
       (sha256
        (base32 "0d0dz3w0c88xx9hw1pvaz3p2pxrfwdsmfwlf5ffy0xw9vn3mglhs"))))
    (properties `((upstream-name . "PWMEnrich.Hsapiens.background")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pwmenrich))
    (home-page
     "https://bioconductor.org/packages/PWMEnrich.Hsapiens.background")
    (synopsis "H. sapiens background for PWMEnrich")
    (description
     "PWMEnrich pre-compiled background objects for H. sapiens (human) and
@code{MotifDb} H. sapiens motifs.")
    (license license:gpl3)))

(define-public r-pwmenrich-dmelanogaster-background
  (package
    (name "r-pwmenrich-dmelanogaster-background")
    (version "4.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PWMEnrich.Dmelanogaster.background" version
                              'experiment))
       (sha256
        (base32 "13l0dylava0d7gmiqkn1wpqnkkixqcv3njlwr1v73hmmzi382sjs"))))
    (properties `((upstream-name . "PWMEnrich.Dmelanogaster.background")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pwmenrich))
    (home-page
     "https://bioconductor.org/packages/PWMEnrich.Dmelanogaster.background")
    (synopsis "D. melanogaster background for PWMEnrich")
    (description
     "PWMEnrich pre-compiled background objects for Drosophila melanogaster and
@code{MotifDb} D. melanogaster motifs.")
    (license license:gpl3)))

(define-public r-pwmenrich
  (package
    (name "r-pwmenrich")
    (version "4.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PWMEnrich" version))
       (sha256
        (base32 "1p5p6wp2p8nkbgd6v527g90wkz1184n29y7n3lx4v7nn0b7581k3"))))
    (properties `((upstream-name . "PWMEnrich")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-seqlogo
                             r-s4vectors
                             r-gdata
                             r-evd
                             r-biostrings
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PWMEnrich")
    (synopsis "PWM enrichment analysis")
    (description
     "This package provides a toolkit of high-level functions for DNA motif scanning
and enrichment analysis built upon Biostrings.  The main functionality is PWM
enrichment analysis of already known PWMs (e.g. from databases such as
@code{MotifDb}), but the package also implements high-level functions for PWM
scanning and visualisation.  The package does not perform \"de novo\" motif
discovery, but is instead focused on using motifs that are either experimentally
derived or computationally constructed by other tools.")
    (license license:lgpl2.0+)))

(define-public r-pviz
  (package
    (name "r-pviz")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Pviz" version))
       (sha256
        (base32 "0w9zxdyyzg6c9wjf1jsyrqihhi30rv5lx94136rks9l3m5vzvlqb"))))
    (properties `((upstream-name . "Pviz")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-iranges
                             r-gviz
                             r-genomicranges
                             r-data-table
                             r-biovizbase
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Pviz")
    (synopsis "Peptide Annotation and Data Visualization using Gviz")
    (description
     "Pviz adapts the Gviz package for protein sequences and data.")
    (license license:artistic2.0)))

(define-public r-pvca
  (package
    (name "r-pvca")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pvca" version))
       (sha256
        (base32 "1n3gn0bdbpgwkgkbcp5655sx9k8rw7a6pr7z7hfxx6nd7i5gnzg2"))))
    (properties `((upstream-name . "pvca")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vsn r-matrix r-lme4 r-biobase))
    (home-page "https://bioconductor.org/packages/pvca")
    (synopsis "Principal Variance Component Analysis (PVCA)")
    (description
     "This package contains the function to assess the batch sourcs by fitting all
\"sources\" as random effects including two-way interaction terms in the Mixed
Model(depends on lme4 package) to selected principal components, which were
obtained from the original data correlation matrix.  This package accompanies
the book \"Batch Effects and Noise in Microarray Experiements, chapter 12.")
    (license license:lgpl2.0+)))

(define-public r-pvac
  (package
    (name "r-pvac")
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pvac" version))
       (sha256
        (base32 "0c77rmpr3x9sjjmq3wwb1azms5a7dgjlvvrwmmd0i1bp928ksl6v"))))
    (properties `((upstream-name . "pvac")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase r-affy))
    (home-page "https://bioconductor.org/packages/pvac")
    (synopsis "PCA-based gene filtering for Affymetrix arrays")
    (description
     "The package contains the function for filtering genes by the proportion of
variation accounted for by the first principal component (PVAC).")
    (license license:lgpl2.0+)))

(define-public r-purecn
  (package
    (name "r-purecn")
    (version "2.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PureCN" version))
       (sha256
        (base32 "0y24clqg7gs4696mwpsmxc4js7s17jlqmkrhkq8vard2hyh9vy0y"))))
    (properties `((upstream-name . "PureCN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vgam
                             r-variantannotation
                             r-summarizedexperiment
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-rhdf5
                             r-rcolorbrewer
                             r-mclust
                             r-matrix
                             r-iranges
                             r-gridextra
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-futile-logger
                             r-dnacopy
                             r-data-table
                             r-biostrings
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lima1/PureCN")
    (synopsis
     "Copy number calling and SNV classification using targeted short read sequencing")
    (description
     "This package estimates tumor purity, copy number, and loss of heterozygosity
(LOH), and classifies single nucleotide variants (SNVs) by somatic status and
clonality. @code{PureCN} is designed for targeted short read sequencing data,
integrates well with standard somatic variant detection and copy number
pipelines, and has support for tumor samples without matching normal samples.")
    (license license:artistic2.0)))

(define-public r-pumadata
  (package
    (name "r-pumadata")
    (version "2.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pumadata" version
                              'experiment))
       (sha256
        (base32 "1ha92bc24qxdzjp1m98a0261snp44i293ryl0vkwgafdq4q9w320"))))
    (properties `((upstream-name . "pumadata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-puma r-oligo r-biobase))
    (home-page "http://umber.sbs.man.ac.uk/resources/puma")
    (synopsis "Various data sets for use with the puma package")
    (description
     "This is a simple data package including various data sets derived from the
estrogen data for use with the puma (Propagating Uncertainty in Microarray
Analysis) package.")
    (license license:lgpl2.0+)))

(define-public r-puma
  (package
    (name "r-puma")
    (version "3.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "puma" version))
       (sha256
        (base32 "0wpfiza6cr2pvf098gyls19r3q72dah30knrg4n4pwnl55p8mvdl"))))
    (properties `((upstream-name . "puma")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-oligoclasses
                             r-oligo
                             r-mclust
                             r-biobase
                             r-affyio
                             r-affy))
    (home-page "http://umber.sbs.man.ac.uk/resources/puma")
    (synopsis
     "Propagating Uncertainty in Microarray Analysis(including Affymetrix tranditional 3' arrays and exon arrays and Human Transcriptome Array 2.0)")
    (description
     "Most analyses of Affymetrix @code{GeneChip} data (including tranditional 3
arrays and exon arrays and Human Transcriptome Array 2.0) are based on point
estimates of expression levels and ignore the uncertainty of such estimates.  By
propagating uncertainty to downstream analyses we can improve results from
microarray analyses.  For the first time, the puma package makes a suite of
uncertainty propagation methods available to a general audience.  In additon to
calculte gene expression from Affymetrix 3 arrays, puma also provides methods to
process exon arrays and produces gene and isoform expression for alternative
splicing study.  puma also offers improvements in terms of scope and speed of
execution over previously available uncertainty propagation methods.  Included
are summarisation, differential expression detection, clustering and PCA
methods, together with useful plotting functions.")
    (license license:lgpl2.0+)))

(define-public r-pth2o2lipids
  (package
    (name "r-pth2o2lipids")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PtH2O2lipids" version
                              'experiment))
       (sha256
        (base32 "1rk9qk6d921lplj8q110kpnipndq576lxn59wpjmpzbzz1qz3946"))))
    (properties `((upstream-name . "PtH2O2lipids")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xcms r-lobstahs r-camera))
    (home-page "http://dx.doi.org/10.1038/ismej.2014.136")
    (synopsis
     "P. tricornutum HPLC-ESI-MS Lipid Data from van Creveld et al. (2015)")
    (description
     "Annotated HPLC-ESI-MS lipid data in positive ionization mode from an experiment
in which cultures of the marine diatom Phaeodactylum tricornutum were treated
with various concentrations of hydrogen peroxide (H2O2) to induce oxidative
stress.  The experiment is described in Graff van Creveld, et al., 2015, \"Early
perturbation in mitochondria redox homeostasis in response to environmental
stress predicts cell fate in diatoms,\" ISME Journal 9:385-395.
@code{PtH2O2lipids} consists of two objects: A CAMERA @code{xsAnnotate} object
(@code{ptH2O2lipids$xsAnnotate}) and LOBSTAHS LOBSet object
(@code{ptH2O2lipids$xsAnnotate$LOBSet}).  The LOBSet includes putative compound
assignments from the default LOBSTAHS database.  Isomer annotation is recorded
in three other LOBSet slots.")
    (license license:expat)))

(define-public r-ptairms
  (package
    (name "r-ptairms")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ptairMS" version))
       (sha256
        (base32 "0q445dmspnyzvk1a8ygwdap3s0lmii6arcmg7bfjz111bcsfkgqn"))))
    (properties `((upstream-name . "ptairMS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-signal
                             r-shinyscreenshot
                             r-shiny
                             r-scales
                             r-rlang
                             r-rhdf5
                             r-rcpp
                             r-plotly
                             r-msnbase
                             r-minpack-lm
                             r-hmisc
                             r-gridextra
                             r-ggpubr
                             r-ggplot2
                             r-foreach
                             r-envipat
                             r-dt
                             r-doparallel
                             r-data-table
                             r-chron
                             r-bit64
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ptairMS")
    (synopsis "Pre-processing PTR-TOF-MS Data")
    (description
     "This package implements a suite of methods to preprocess data from PTR-TOF-MS
instruments (HDF5 format) and generates the sample by features table of peak
intensities in addition to the sample and feature metadata (as a singl<e
@code{ExpressionSet} object for subsequent statistical analysis).  This package
also permit usefull tools for cohorts management as analyzing data
progressively, visualization tools and quality control.  The steps include
calibration, expiration detection, peak detection and quantification, feature
alignment, missing value imputation and feature annotation.  Applications to
exhaled air and cell culture in headspace are described in the vignettes and
examples.  This package was used for data analysis of Gassin Delyle study on
adults undergoing invasive mechanical ventilation in the intensive care unit due
to severe COVID-19 or non-COVID-19 acute respiratory distress syndrome (ARDS),
and permit to identfy four potentiel biomarquers of the infection.")
    (license license:gpl3)))

(define-public r-ptairdata
  (package
    (name "r-ptairdata")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ptairData" version
                              'experiment))
       (sha256
        (base32 "0kmqzzgpy3kbi8w462wwb8c8gviiyk0w2v7k5w9zi3zxdrmw7ccm"))))
    (properties `((upstream-name . "ptairData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-signal r-rhdf5))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ptairData")
    (synopsis
     "PTR-TOF-MS volatolomics raw datasets from exhaled air and cell culture headspace")
    (description
     "The package @code{ptairData} contains two raw datasets from
Proton-Transfer-Reaction Time-of-Flight mass spectrometer acquisitions
(PTR-TOF-MS), in the HDF5 format.  One from the exhaled air of two volunteer
healthy individuals with three replicates, and one from the cell culture
headspace from two mycobacteria species and one control (culture medium only)
with two replicates.  Those datasets are used in the examples and in the
vignette of the @code{ptairMS} package (PTR-TOF-MS data pre-processing).  There
are also used to gererate the @code{ptrSet} in the @code{ptairMS} data :
@code{exhaledPtrset} and @code{mycobacteriaSet}.")
    (license license:gpl3)))

(define-public r-psichomics
  (package
    (name "r-psichomics")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "psichomics" version))
       (sha256
        (base32 "1792pbwypd8v8dfqfc5n1s21k2kqky3j9gvzldnxsd20y8wfha2s"))))
    (properties `((upstream-name . "psichomics")))
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
    (propagated-inputs (list r-xtable
                             r-xml
                             r-survival
                             r-summarizedexperiment
                             r-stringr
                             r-shinyjs
                             r-shinybs
                             r-shiny
                             r-rfast
                             r-reshape2
                             r-recount
                             r-rcpp
                             r-r-utils
                             r-purrr
                             r-plyr
                             r-pairsd3
                             r-limma
                             r-jsonlite
                             r-httr
                             r-htmltools
                             r-highcharter
                             r-ggrepel
                             r-ggplot2
                             r-fastmatch
                             r-fastica
                             r-edger
                             r-dt
                             r-dplyr
                             r-digest
                             r-data-table
                             r-colourpicker
                             r-cluster
                             r-biocfilecache
                             r-annotationhub
                             r-annotationdbi))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://nuno-agostinho.github.io/psichomics/")
    (synopsis
     "Graphical Interface for Alternative Splicing Quantification, Analysis and Visualisation")
    (description
     "Interactive R package with an intuitive Shiny-based graphical interface for
alternative splicing quantification and integrative analyses of alternative
splicing and gene expression based on The Cancer Genome Atlas (TCGA), the
Genotype-Tissue Expression project (GTEx), Sequence Read Archive (SRA) and
user-provided data.  The tool interactively performs survival, dimensionality
reduction and median- and variance-based differential splicing and gene
expression analyses that benefit from the incorporation of clinical and
molecular sample-associated features (such as tumour stage or survival).
Interactive visual access to genomic mapping and functional annotation of
selected alternative splicing events is also included.")
    (license license:expat)))

(define-public r-proteomm
  (package
    (name "r-proteomm")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ProteoMM" version))
       (sha256
        (base32 "0z51pa8nmdl1895z3ky2zagxpgss2az58pcdnjmln9mbzdl3cvhi"))))
    (properties `((upstream-name . "ProteoMM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrixstats
                             r-gtools
                             r-ggrepel
                             r-ggplot2
                             r-gdata
                             r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ProteoMM")
    (synopsis
     "Multi-Dataset Model-based Differential Expression Proteomics Analysis Platform")
    (description
     "@code{ProteoMM} is a statistical method to perform model-based peptide-level
differential expression analysis of single or multiple datasets.  For multiple
datasets @code{ProteoMM} produces a single fold change and p-value for each
protein across multiple datasets. @code{ProteoMM} provides functionality for
normalization, missing value imputation and differential expression.
Model-based peptide-level imputation and differential expression analysis
component of package follows the analysis described in “A statistical framework
for protein quantitation in bottom-up MS based proteomics\" (Karpievitch et al.
Bioinformatics 2009). @code{EigenMS} normalisation is implemented as described
in \"Normalization of peak intensities in bottom-up MS-based proteomics using
singular value decomposition.\" (Karpievitch et al.  Bioinformatics 2009).")
    (license license:expat)))

(define-public r-proteodisco
  (package
    (name "r-proteodisco")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ProteoDisco" version))
       (sha256
        (base32 "07hbf2h31ff4adfp28f92823h387z29ygj8fdqkchsx8ras8a8fm"))))
    (properties `((upstream-name . "ProteoDisco")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xvector
                             r-variantannotation
                             r-tidyr
                             r-tibble
                             r-s4vectors
                             r-rlang
                             r-plyr
                             r-parallellogger
                             r-iranges
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-dplyr
                             r-cleaver
                             r-checkmate
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ErasmusMC-CCBC/ProteoDisco")
    (synopsis
     "Generation of customized protein variant databases from genomic variants, splice-junctions and manual sequences")
    (description
     "@code{ProteoDisco} is an R package to facilitate proteogenomics studies.  It
houses functions to create customized (variant) protein databases based on
user-submitted genomic variants, splice-junctions, fusion genes and manual
transcript sequences.  The flexible workflow can be adopted to suit a myriad of
research and experimental settings.")
    (license license:gpl3)))

(define-public r-proteinprofiles
  (package
    (name "r-proteinprofiles")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "proteinProfiles" version))
       (sha256
        (base32 "192qhqlxln53zwcc1i1x3fg0brngphm183j6nx8bjgxhx0vqky40"))))
    (properties `((upstream-name . "proteinProfiles")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/proteinProfiles")
    (synopsis "Protein Profiling")
    (description
     "Significance assessment for distance measures of time-course protein profiles.")
    (license license:gpl3)))

(define-public r-proteingymr
  (package
    (name "r-proteingymr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ProteinGymR" version
                              'experiment))
       (sha256
        (base32 "0p260mha4492dv526sx6kc7dbniy5rmfh209kqi06mq3y5jv28j5"))))
    (properties `((upstream-name . "ProteinGymR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-spdl
                             r-queryup
                             r-purrr
                             r-ggplot2
                             r-gghalves
                             r-ggdist
                             r-forcats
                             r-experimenthub
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ccb-hms/ProteinGymR")
    (synopsis "Programmatic access to ProteinGym datasets in R/Bioconductor")
    (description
     "The @code{ProteinGymR} package provides analysis-ready data resources from
@code{ProteinGym}, generated by Notin et al., 2023. @code{ProteinGym} comprises
a collection of benchmarks for evaluating the performance of models predicting
the effect of point mutations.  This package provides access to 1.  Deep
mutational scanning (DMS) scores from 217 assays measuring the impact of all
possible amino acid substitutions across 186 proteins, 2. @code{AlphaMissense}
pathogenicity scores for ~1.6 M substitutions in the @code{ProteinGym} DMS data,
and 3.  five performance metrics for 62 variant prediction models in a zero-shot
setting.")
    (license license:artistic2.0)))

(define-public r-prostatecancervarambally
  (package
    (name "r-prostatecancervarambally")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "prostateCancerVarambally" version
                              'experiment))
       (sha256
        (base32 "0akyyjbg6mh4j53h6lf6m2mr0c9p667cmj94mflcp3b64a0n2y9r"))))
    (properties `((upstream-name . "prostateCancerVarambally")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/prostateCancerVarambally")
    (synopsis "Prostate Cancer Data")
    (description
     "This package provides a Bioconductor data package for the Varambally dataset.")
    (license license:artistic2.0)))

(define-public r-prostatecancertaylor
  (package
    (name "r-prostatecancertaylor")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "prostateCancerTaylor" version
                              'experiment))
       (sha256
        (base32 "0qn2lysb70scvw52kq2qz5hzivl9yhsbisb5x68f375yns9s40h9"))))
    (properties `((upstream-name . "prostateCancerTaylor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/prostateCancerTaylor")
    (synopsis "Prostate Cancer Data")
    (description
     "This package provides a Bioconductor data package for the Taylor et al (2010)
dataset.")
    (license license:artistic2.0)))

(define-public r-prostatecancerstockholm
  (package
    (name "r-prostatecancerstockholm")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "prostateCancerStockholm" version
                              'experiment))
       (sha256
        (base32 "1168mpfzx16qnwpvnlibaspi0v5zcncwa99cbv0prg7radp3wrzm"))))
    (properties `((upstream-name . "prostateCancerStockholm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/prostateCancerStockholm")
    (synopsis "Prostate Cancer Data")
    (description
     "This package provides a Bioconductor data package for the Stockholm dataset.")
    (license license:artistic2.0)))

(define-public r-prostatecancergrasso
  (package
    (name "r-prostatecancergrasso")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "prostateCancerGrasso" version
                              'experiment))
       (sha256
        (base32 "1q9a5jijr0pi7yh6aw6ygd9plczfj52rv7vs5gbl68rmhy63374r"))))
    (properties `((upstream-name . "prostateCancerGrasso")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/prostateCancerGrasso")
    (synopsis "Prostate Cancer Data")
    (description
     "This package provides a Bioconductor data package for the Grasso (2012) Prostate
Cancer dataset.")
    (license license:artistic2.0)))

(define-public r-prostatecancercamcap
  (package
    (name "r-prostatecancercamcap")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "prostateCancerCamcap" version
                              'experiment))
       (sha256
        (base32 "0wfaivl8f9g4dpgjmcj34md9yq9gdi31761lys70i9bpbq9p5mgy"))))
    (properties `((upstream-name . "prostateCancerCamcap")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/prostateCancerCamcap")
    (synopsis "Prostate Cancer Data")
    (description
     "This package provides a Bioconductor data package for the Ross-Adams (2015)
Prostate Cancer dataset.")
    (license license:artistic2.0)))

(define-public r-prostar
  (package
    (name "r-prostar")
    (version "1.38.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Prostar" version))
       (sha256
        (base32 "153s3na25nka2hxjswzdcbddr0hkglwjs489y6h3h7h03m9by8bw"))))
    (properties `((upstream-name . "Prostar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml
                             r-webshot
                             r-vioplot
                             r-tibble
                             r-shinywidgets
                             r-shinytree
                             r-shinythemes
                             r-shinyjs
                             r-shinyjqui
                             r-shinycssloaders
                             r-shinybs
                             r-shinyace
                             r-shiny
                             r-sass
                             r-rhandsontable
                             r-rcolorbrewer
                             r-rclipboard
                             r-r-utils
                             r-promises
                             r-markdown
                             r-later
                             r-htmlwidgets
                             r-highcharter
                             r-gtools
                             r-gplots
                             r-ggplot2
                             r-future
                             r-dt
                             r-data-table
                             r-dapardata
                             r-dapar
                             r-colourpicker
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "http://www.prostar-proteomics.org/")
    (synopsis "Provides a GUI for DAPAR")
    (description
     "This package provides a GUI interface for the DAPAR package.  The package
Prostar (Proteomics statistical analysis with R) is a Bioconductor distributed R
package which provides all the necessary functions to analyze quantitative data
from label-free proteomics experiments.  Contrarily to most other similar R
packages, it is endowed with rich and user-friendly graphical interfaces, so
that no programming skill is required.")
    (license license:artistic2.0)))

(define-public r-props
  (package
    (name "r-props")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PROPS" version))
       (sha256
        (base32 "0yc4mfwaamh1wsqzgrnh1mi2niajg0c3cckd935glmp2cv7cspsm"))))
    (properties `((upstream-name . "PROPS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sva r-reshape2 r-bnlearn r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PROPS")
    (synopsis "PRObabilistic Pathway Score (PROPS)")
    (description
     "This package calculates probabilistic pathway scores using gene expression data.
 Gene expression values are aggregated into pathway-based scores using Bayesian
network representations of biological pathways.")
    (license license:gpl2)))

(define-public r-proper
  (package
    (name "r-proper")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PROPER" version))
       (sha256
        (base32 "1dxps7nqd764agzfdba23fcxnxqdb5d8v4mxhw2kiy0qspk30f3r"))))
    (properties `((upstream-name . "PROPER")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-edger))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PROPER")
    (synopsis "PROspective Power Evaluation for RNAseq")
    (description
     "This package provide simulation based methods for evaluating the statistical
power in differential expression analysis from RNA-seq data.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-prone
  (package
    (name "r-prone")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PRONE" version))
       (sha256
        (base32 "1ai4lp9w2jiansf1fkxvl65qpfziar6cizi15wf7j2lpkc6h3lzl"))))
    (properties `((upstream-name . "PRONE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vsn
                             r-vegan
                             r-upsetr
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-scales
                             r-s4vectors
                             r-rots
                             r-reshape2
                             r-rcolorbrewer
                             r-purrr
                             r-preprocesscore
                             r-poma
                             r-plotroc
                             r-normalyzerde
                             r-msnbase
                             r-matrixstats
                             r-mass
                             r-magrittr
                             r-limma
                             r-gtools
                             r-gprofiler2
                             r-ggtext
                             r-ggplot2
                             r-edger
                             r-dplyr
                             r-deqms
                             r-dendsort
                             r-data-table
                             r-complexupset
                             r-complexheatmap
                             r-circlize
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/daisybio/PRONE")
    (synopsis "The PROteomics Normalization Evaluator")
    (description
     "High-throughput omics data are often affected by systematic biases introduced
throughout all the steps of a clinical study, from sample collection to
quantification.  Normalization methods aim to adjust for these biases to make
the actual biological signal more prominent.  However, selecting an appropriate
normalization method is challenging due to the wide range of available
approaches.  Therefore, a comparative evaluation of unnormalized and normalized
data is essential in identifying an appropriate normalization strategy for a
specific data set.  This R package provides different functions for
preprocessing, normalizing, and evaluating different normalization approaches.
Furthermore, normalization methods can be evaluated on downstream steps, such as
differential expression analysis and statistical enrichment analysis.  Spike-in
data sets with known ground truth and real-world data sets of biological
experiments acquired by either tandem mass tag (TMT) or label-free
quantification (LFQ) can be analyzed.")
    (license license:gpl3+)))

(define-public r-promise
  (package
    (name "r-promise")
    (version "1.58.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PROMISE" version))
       (sha256
        (base32 "182lf80d6hw2yisxndzn7zzqjl92zlrc7irzdfjncyipmng07x88"))))
    (properties `((upstream-name . "PROMISE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-gseabase r-biobase))
    (home-page "https://bioconductor.org/packages/PROMISE")
    (synopsis "PRojection Onto the Most Interesting Statistical Evidence")
    (description
     "This package provides a general tool to identify genomic features with a
specific biologically interesting pattern of associations with multiple endpoint
variables as described in Pounds et.  al. (2009) Bioinformatics 25: 2013-2019.")
    (license license:gpl2+)))

(define-public r-prolocgui
  (package
    (name "r-prolocgui")
    (version "2.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pRolocGUI" version))
       (sha256
        (base32 "0yfc1sz2scdwpisbvqlg3amnhbzn9kqbir3hcib7w96m5raxlg5l"))))
    (properties `((upstream-name . "pRolocGUI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shinywidgets
                             r-shinyjs
                             r-shinyhelper
                             r-shinydashboardplus
                             r-shinydashboard
                             r-shiny
                             r-scales
                             r-proloc
                             r-msnbase
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-colourpicker
                             r-colorspace
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lgatto/pRolocGUI")
    (synopsis "Interactive visualisation of spatial proteomics data")
    (description
     "The package @code{pRolocGUI} comprises functions to interactively visualise
spatial proteomics data on the basis of @code{pRoloc}, @code{pRolocdata} and
shiny.")
    (license license:gpl2)))

(define-public r-proloc
  (package
    (name "r-proloc")
    (version "1.46.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pRoloc" version))
       (sha256
        (base32 "0h1b9hqqc386fl3rzr9v21c84333qh6gcp3jamhai975qb1dnmjq"))))
    (properties `((upstream-name . "pRoloc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales
                             r-sampling
                             r-rcpparmadillo
                             r-rcpp
                             r-rcolorbrewer
                             r-randomforest
                             r-proxy
                             r-plyr
                             r-nnet
                             r-mvtnorm
                             r-msnbase
                             r-mlinterfaces
                             r-mixtools
                             r-mclust
                             r-mass
                             r-lattice
                             r-laplacesdemon
                             r-knitr
                             r-kernlab
                             r-hexbin
                             r-gtools
                             r-ggplot2
                             r-fnn
                             r-e1071
                             r-dendextend
                             r-coda
                             r-class
                             r-caret
                             r-biomart
                             r-biocparallel
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lgatto/pRoloc")
    (synopsis "unifying bioinformatics framework for spatial proteomics")
    (description
     "The @code{pRoloc} package implements machine learning and visualisation methods
for the analysis and interogation of quantitiative mass spectrometry data to
reliably infer protein sub-cellular localisation.")
    (license license:gpl2)))

(define-public r-projectr
  (package
    (name "r-projectr")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "projectR" version))
       (sha256
        (base32 "0z16qahb2rvxad99y9lychlz2am4w4alpa2ypjmd1f7x2c46skj4"))))
    (properties `((upstream-name . "projectR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-umap
                             r-tsne
                             r-scales
                             r-rocr
                             r-reshape2
                             r-rcolorbrewer
                             r-nmf
                             r-msigdbr
                             r-matrixmodels
                             r-matrix
                             r-limma
                             r-ggrepel
                             r-ggplot2
                             r-ggalluvial
                             r-fgsea
                             r-dplyr
                             r-cowplot
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/genesofeve/projectR/")
    (synopsis
     "Functions for the projection of weights from PCA, CoGAPS, NMF, correlation, and clustering")
    (description
     "This package provides functions for the projection of data into the spaces
defined by PCA, @code{CoGAPS}, NMF, correlation, and clustering.")
    (license (license:fsdg-compatible "GPL (==2)"))))

(define-public r-profilescoredist
  (package
    (name "r-profilescoredist")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "profileScoreDist" version))
       (sha256
        (base32 "19qyxazgxix3llaxl5nvypwsazgkacg9svplzlnl031gqf0qg6ya"))))
    (properties `((upstream-name . "profileScoreDist")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/profileScoreDist")
    (synopsis "Profile score distributions")
    (description
     "Regularization and score distributions for position count matrices.")
    (license license:expat)))

(define-public r-profileplyr
  (package
    (name "r-profileplyr")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "profileplyr" version))
       (sha256
        (base32 "0ahwxyic7b39sc09zfhany8zg64n83izkwyqj95krdzdfr823m5c"))))
    (properties `((upstream-name . "profileplyr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdb-mmusculus-ucsc-mm9-knowngene
                             r-txdb-mmusculus-ucsc-mm10-knowngene
                             r-txdb-hsapiens-ucsc-hg38-knowngene
                             r-txdb-hsapiens-ucsc-hg19-knowngene
                             r-tiff
                             r-tidyr
                             r-summarizedexperiment
                             r-soggi
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-rlang
                             r-rjson
                             r-rgreat
                             r-r-utils
                             r-pheatmap
                             r-org-mm-eg-db
                             r-org-hs-eg-db
                             r-magrittr
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-enrichedheatmap
                             r-dplyr
                             r-complexheatmap
                             r-circlize
                             r-chipseeker
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/profileplyr")
    (synopsis
     "Visualization and annotation of read signal over genomic ranges with profileplyr")
    (description
     "Quick and straightforward visualization of read signal over genomic intervals is
key for generating hypotheses from sequencing data sets (e.g. @code{ChIP-seq},
ATAC-seq, bisulfite/methyl-seq).  Many tools both inside and outside of R and
Bioconductor are available to explore these types of data, and they typically
start with a @code{bigWig} or BAM file and end with some representation of the
signal (e.g. heatmap).  profileplyr leverages many Bioconductor tools to allow
for both flexibility and additional functionality in workflows that end with
visualization of the read signal.")
    (license license:gpl3+)))

(define-public r-prodata
  (package
    (name "r-prodata")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ProData" version
                              'experiment))
       (sha256
        (base32 "0hbglrqlqn6c5y8bhl88djid7bjvnd7m43n346qzqv1baba7rdcd"))))
    (properties `((upstream-name . "ProData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/ProData")
    (synopsis "SELDI-TOF data of Breast cancer samples")
    (description
     "This package provides a data package of SELDI-TOF protein mass spectrometry data
of 167 breast cancer and normal samples.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-proda
  (package
    (name "r-proda")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "proDA" version))
       (sha256
        (base32 "1l1wz66dnyv9kpfkw529641ixz8j2b3ynqj5b883nc8ch850ppba"))))
    (properties `((upstream-name . "proDA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-s4vectors r-extradistr
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/const-ae/proDA")
    (synopsis
     "Differential Abundance Analysis of Label-Free Mass Spectrometry Data")
    (description
     "Account for missing values in label-free mass spectrometry data without
imputation.  The package implements a probabilistic dropout model that ensures
that the information from observed and missing values are properly combined.  It
adds empirical Bayesian priors to increase power to detect differentially
abundant proteins.")
    (license license:gpl3)))

(define-public r-procoil
  (package
    (name "r-procoil")
    (version "2.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "procoil" version))
       (sha256
        (base32 "0wfmh3fn87c1cl2cqc92202xbbw6as5r4x0i8k4cz7nac11lfiz6"))))
    (properties `((upstream-name . "procoil")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors r-kebabs r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/UBod/procoil")
    (synopsis "Prediction of Oligomerization of Coiled Coil Proteins")
    (description
     "The package allows for predicting whether a coiled coil sequence (amino acid
sequence plus heptad register) is more likely to form a dimer or more likely to
form a trimer.  Additionally to the prediction itself, a prediction profile is
computed which allows for determining the strengths to which the individual
residues are indicative for either class.  Prediction profiles can also be
visualized as curves or heatmaps.")
    (license license:gpl2+)))

(define-public r-process
  (package
    (name "r-process")
    (version "1.82.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PROcess" version))
       (sha256
        (base32 "0pfx5jzykcb4ap1mh2ysg1brdf9mg10h775prnk3lc67rjps334r"))))
    (properties `((upstream-name . "PROcess")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-icens))
    (home-page "https://bioconductor.org/packages/PROcess")
    (synopsis "Ciphergen SELDI-TOF Processing")
    (description
     "This package provides a package for processing protein mass spectrometry data.")
    (license license:artistic2.0)))

(define-public r-probamr
  (package
    (name "r-probamr")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "proBAMr" version))
       (sha256
        (base32 "15fl3691hipzxm1zxjnjif9z7brnbq71dq6vc8zdr4w458m1zngj"))))
    (properties `((upstream-name . "proBAMr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdbmaker
                             r-rtracklayer
                             r-iranges
                             r-genomicranges
                             r-genomicfeatures
                             r-biostrings
                             r-annotationdbi))
    (home-page "https://bioconductor.org/packages/proBAMr")
    (synopsis "Generating SAM file for PSMs in shotgun proteomics data")
    (description
     "Mapping PSMs back to genome.  The package builds SAM file from shotgun
proteomics data The package also provides function to prepare annotation from
GTF file.")
    (license license:artistic2.0)))

(define-public r-proactiv
  (package
    (name "r-proactiv")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "proActiv" version))
       (sha256
        (base32 "1mpq6mjwyfng339m9nq6n68h7llj0483wjqqmss7vbnhfgj2q84w"))))
    (properties `((upstream-name . "proActiv")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdbmaker
                             r-tibble
                             r-summarizedexperiment
                             r-scales
                             r-s4vectors
                             r-rlang
                             r-iranges
                             r-gplots
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-dplyr
                             r-deseq2
                             r-data-table
                             r-biocparallel
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/GoekeLab/proActiv")
    (synopsis "Estimate Promoter Activity from RNA-Seq data")
    (description
     "Most human genes have multiple promoters that control the expression of
different isoforms.  The use of these alternative promoters enables the
regulation of isoform expression pre-transcriptionally.  Alternative promoters
have been found to be important in a wide number of cell types and diseases.
@code{proActiv} is an R package that enables the analysis of promoters from
RNA-seq data. @code{proActiv} uses aligned reads as input, and generates counts
and normalized promoter activity estimates for each annotated promoter.  In
particular, @code{proActiv} accepts junction files from @code{TopHat2} or STAR
or BAM files as inputs.  These estimates can then be used to identify which
promoter is active, which promoter is inactive, and which promoters change their
activity across conditions. @code{proActiv} also allows visualization of
promoter activity across conditions.")
    (license license:expat)))

(define-public r-prince
  (package
    (name "r-prince")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PrInCE" version))
       (sha256
        (base32 "1z4b75br68wghjky6x8mc522jw4cfa2v4490qdg7z75kpgdld8sw"))))
    (properties `((upstream-name . "PrInCE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tester
                             r-speedglm
                             r-robustbase
                             r-rdpack
                             r-ranger
                             r-purrr
                             r-progress
                             r-naivebayes
                             r-msnbase
                             r-magrittr
                             r-liblinear
                             r-hmisc
                             r-forecast
                             r-dplyr
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PrInCE")
    (synopsis "Predicting Interactomes from Co-Elution")
    (description
     "@code{PrInCE} (Predicting Interactomes from Co-Elution) uses a naive Bayes
classifier trained on dataset-derived features to recover protein-protein
interactions from co-elution chromatogram profiles.  This package contains the R
implementation of @code{PrInCE}.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-primirtss
  (package
    (name "r-primirtss")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "primirTSS" version))
       (sha256
        (base32 "07s212lh2mjfr91zh7w5avwdb3fjb4fkrm5kc8x55rcf84qm30db"))))
    (properties `((upstream-name . "primirTSS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-tfbstools
                             r-stringr
                             r-shiny
                             r-s4vectors
                             r-rtracklayer
                             r-r-utils
                             r-purrr
                             r-phastcons100way-ucsc-hg38
                             r-jaspar2018
                             r-iranges
                             r-gviz
                             r-genomicscores
                             r-genomicranges
                             r-dplyr
                             r-bsgenome-hsapiens-ucsc-hg38
                             r-biostrings
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ipumin/primirTSS")
    (synopsis "Prediction of pri-miRNA Transcription Start Site")
    (description
     "This package provides a fast, convenient tool to identify the TSSs of
@code{miRNAs} by integrating the data of H3K4me3 and Pol II as well as combining
the conservation level and sequence feature, provided within both command-line
and graphical interfaces, which achieves a better performance than the previous
non-cell-specific methods on @code{miRNA} TSSs.")
    (license license:gpl2)))

(define-public r-primeviewprobe
  (package
    (name "r-primeviewprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "primeviewprobe" version
                              'annotation))
       (sha256
        (base32 "0kw04789ihxnw874qcdj5ypwj6npya2v3p893ahjwhys5wrivmqg"))))
    (properties `((upstream-name . "primeviewprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/primeviewprobe")
    (synopsis "Probe sequence data for microarrays of type primeview")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was @code{PrimeView\\_probe\\_tab}.")
    (license license:lgpl2.0+)))

(define-public r-primeviewcdf
  (package
    (name "r-primeviewcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "primeviewcdf" version
                              'annotation))
       (sha256
        (base32 "0qj3l2iabpl2d79pr258cbqar4hdpjkbwf829bnwrmabkaq92z48"))))
    (properties `((upstream-name . "primeviewcdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/primeviewcdf")
    (synopsis "primeviewcdf")
    (description
     "This package provides a package containing an environment representing the
@code{PrimeView.cdf} file.")
    (license license:lgpl2.0+)))

(define-public r-predasampledata
  (package
    (name "r-predasampledata")
    (version "0.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PREDAsampledata" version
                              'experiment))
       (sha256
        (base32 "1hif80a3w16c8da04bh1jw0n7yyp7msjshasni6k858ygw0q3wwh"))))
    (properties `((upstream-name . "PREDAsampledata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-preda r-biobase r-annotate r-affy))
    (home-page "https://bioconductor.org/packages/PREDAsampledata")
    (synopsis
     "expression and copy number data on clear cell renal carcinoma samples")
    (description
     "Sample data for PREDA package. (annotations objects synchronized with
@code{GeneAnnot} custom CDFs version 2.2.0).")
    (license license:artistic2.0)))

(define-public r-preda
  (package
    (name "r-preda")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PREDA" version))
       (sha256
        (base32 "0bhgdirz7spxph6wxg90rqbl2qqck95ys3688g77ls13ka371zry"))))
    (properties `((upstream-name . "PREDA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-multtest r-lokern r-biobase r-annotate))
    (home-page "https://bioconductor.org/packages/PREDA")
    (synopsis "Position Related Data Analysis")
    (description
     "Package for the position related analysis of quantitative functional genomics
data.")
    (license license:gpl2)))

(define-public r-precisetadhub
  (package
    (name "r-precisetadhub")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "preciseTADhub" version
                              'experiment))
       (sha256
        (base32 "05kia0l07qknpad8rb3afyfwin78gjs5b423afb7r9saj5yba041"))))
    (properties `((upstream-name . "preciseTADhub")))
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
    (home-page "https://github.com/dozmorovlab/preciseTADhub")
    (synopsis "Pre-trained random forest models obtained using preciseTAD")
    (description
     "An experimentdata package to supplement the @code{preciseTAD} package containing
pre-trained models and the variable importances of each genomic annotation used
to build the model parsed into list objects and available in
@code{ExperimentHub}.  In total, @code{preciseTADhub} provides access to n=84
random forest classification models optimized to predict TAD/chromatin loop
boundary regions and stored as .RDS files.  The value, n, comes from the fact
that we considered l=2 cell lines {GM12878, K562}, g=2 ground truth boundaries
{Arrowhead, Peakachu}, and c=21 autosomal chromosomes {CHR1, CHR2, ..., CHR22}
(omitting CHR9).  Furthermore, each object is itself a two-item list containing:
(1) the model object, and (2) the variable importances for CTCF, RAD21, SMC3,
and ZNF143 used to predict boundary regions.  Each model is trained via a
\"holdout\" strategy, in which data from chromosomes {CHR1, CHR2, ..., CHRi-1,
CHRi+1, ..., CHR22} were used to build the model and the ith chromosome was
reserved for testing.  See https://doi.org/10.1101/2020.09.03.282186 for more
detail on the model building strategy.")
    (license license:expat)))

(define-public r-precisetad
  (package
    (name "r-precisetad")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "preciseTAD" version))
       (sha256
        (base32 "1brn1813nrgh5l3np7lfsdn02r1aw0xrjmxaly2cwbrblycnp41f"))))
    (properties `((upstream-name . "preciseTAD")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rcgh
                             r-randomforest
                             r-prroc
                             r-proc
                             r-pbapply
                             r-modelmetrics
                             r-iranges
                             r-gtools
                             r-genomicranges
                             r-foreach
                             r-e1071
                             r-dosnow
                             r-dbscan
                             r-cluster
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dozmorovlab/preciseTAD")
    (synopsis
     "preciseTAD: A machine learning framework for precise TAD boundary prediction")
    (description
     "@code{preciseTAD} provides functions to predict the location of boundaries of
topologically associated domains (TADs) and chromatin loops at base-level
resolution.  As an input, it takes BED-formatted genomic coordinates of domain
boundaries detected from low-resolution Hi-C data, and coordinates of
high-resolution genomic annotations from ENCODE or other consortia.
@code{preciseTAD} employs several feature engineering strategies and resampling
techniques to address class imbalance, and trains an optimized random forest
model for predicting low-resolution domain boundaries.  Translated on a
base-level, @code{preciseTAD} predicts the probability for each base to be a
boundary.  Density-based clustering and scalable partitioning techniques are
used to detect precise boundary regions and summit points.  Compared with
low-resolution boundaries, @code{preciseTAD} boundaries are highly enriched for
CTCF, RAD21, SMC3, and ZNF143 signal and more conserved across cell lines.  The
pre-trained model can accurately predict boundaries in another cell line using
CTCF, RAD21, SMC3, and ZNF143 annotation data for this cell line.")
    (license license:expat)))

(define-public r-prebsdata
  (package
    (name "r-prebsdata")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "prebsdata" version
                              'experiment))
       (sha256
        (base32 "0q0dcd440ddq9jmjva3if4553shqydx5m11pqivirjjfbfdgjidn"))))
    (properties `((upstream-name . "prebsdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/prebsdata")
    (synopsis "Data for 'prebs' package")
    (description
     "This package contains data required to run examples in prebs package.  The data
files include: 1) Small sample bam files for demonstration purposes 2) Probe
sequence mappings for Custom CDF (taken from
http://brainarray.mbni.med.umich.edu/brainarray/Database/@code{CustomCDF/genomic_curated_CDF.asp})
3) Probe sequence mappings for manufacturer's CDF (manually created using
bowtie).")
    (license license:artistic2.0)))

(define-public r-prebs
  (package
    (name "r-prebs")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "prebs" version))
       (sha256
        (base32 "11b5fzagvd935bi0j6415qq1gp4jmk471h2g78skya2004r5fkwr"))))
    (properties `((upstream-name . "prebs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rpa
                             r-iranges
                             r-genomicranges
                             r-genomicalignments
                             r-genomeinfodb
                             r-biobase
                             r-affy))
    (home-page "https://bioconductor.org/packages/prebs")
    (synopsis
     "Probe region expression estimation for RNA-seq data for improved microarray comparability")
    (description
     "The prebs package aims at making RNA-sequencing (RNA-seq) data more comparable
to microarray data.  The comparability is achieved by summarizing
sequencing-based expressions of probe regions using a modified version of RMA
algorithm.  The pipeline takes mapped reads in BAM format as an input and
produces either gene expressions or original microarray probe set expressions as
an output.")
    (license license:artistic2.0)))

(define-public r-pram
  (package
    (name "r-pram")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pram" version))
       (sha256
        (base32 "0j74w5z2nnbacjq50x9v8qp0k078a0qy7n2wwy9j3wh0sr3j6k17"))))
    (properties `((upstream-name . "pram")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-iranges
                             r-genomicranges
                             r-genomicalignments
                             r-genomeinfodb
                             r-data-table
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pliu55/pram")
    (synopsis "Pooling RNA-seq datasets for assembling transcript models")
    (description
     "Publicly available RNA-seq data is routinely used for retrospective analysis to
elucidate new biology.  Novel transcript discovery enabled by large collections
of RNA-seq datasets has emerged as one of such analysis.  To increase the power
of transcript discovery from large collections of RNA-seq datasets, we developed
a new R package named Pooling RNA-seq and Assembling Models (PRAM), which builds
transcript models in intergenic regions from pooled RNA-seq datasets.  This
package includes functions for defining intergenic regions, extracting and
pooling related RNA-seq alignments, predicting, selected, and evaluating
transcript models.")
    (license license:gpl3+)))

(define-public r-pqsfinder
  (package
    (name "r-pqsfinder")
    (version "2.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pqsfinder" version))
       (sha256
        (base32 "0rxz4zg7lmn9q9mxi1h2wf9w4f05lg3889nbq2dip5xzs75p7fa4"))))
    (properties `((upstream-name . "pqsfinder")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rcpp
                             r-iranges
                             r-genomicranges
                             r-biostrings
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://pqsfinder.fi.muni.cz")
    (synopsis "Identification of potential quadruplex forming sequences")
    (description
     "Pqsfinder detects DNA and RNA sequence patterns that are likely to fold into an
intramolecular G-quadruplex (G4).  Unlike many other approaches, pqsfinder is
able to detect G4s folded from imperfect G-runs containing bulges or mismatches
or G4s having long loops.  Pqsfinder also assigns an integer score to each hit
that was fitted on G4 sequencing data and corresponds to expected stability of
the folded G4.")
    (license license:bsd-2)))

(define-public r-ppinfer
  (package
    (name "r-ppinfer")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PPInfer" version))
       (sha256
        (base32 "0a4xb82hf192ybhi6w78jdc2qpk12qp4zc1c4sy0ybyll27njkj9"))))
    (properties `((upstream-name . "PPInfer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yeastexpdata
                             r-stringdb
                             r-kernlab
                             r-igraph
                             r-httr
                             r-ggplot2
                             r-fgsea
                             r-biomart))
    (home-page "https://bioconductor.org/packages/PPInfer")
    (synopsis
     "Inferring functionally related proteins using protein interaction networks")
    (description
     "Interactions between proteins occur in many, if not most, biological processes.
Most proteins perform their functions in networks associated with other proteins
and other biomolecules.  This fact has motivated the development of a variety of
experimental methods for the identification of protein interactions.  This
variety has in turn ushered in the development of numerous different
computational approaches for modeling and predicting protein interactions.
Sometimes an experiment is aimed at identifying proteins closely related to some
interesting proteins.  A network based statistical learning method is used to
infer the putative functions of proteins from the known functions of its
neighboring proteins on a PPI network.  This package identifies such proteins
often involved in the same or similar biological functions.")
    (license license:artistic2.0)))

(define-public r-ppcseq
  (package
    (name "r-ppcseq")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ppcseq" version))
       (sha256
        (base32 "0f5vrp3q5vj4hvm6gm1452biq6dbpg7pkcw8s3gy6dv0ixizinzy"))))
    (properties `((upstream-name . "ppcseq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tidybayes
                             r-tibble
                             r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rlang
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-purrr
                             r-magrittr
                             r-lifecycle
                             r-ggplot2
                             r-foreach
                             r-edger
                             r-dplyr
                             r-bh
                             r-benchmarkme))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/stemangiola/ppcseq")
    (synopsis
     "Probabilistic Outlier Identification for RNA Sequencing Generalized Linear Models")
    (description
     "Relative transcript abundance has proven to be a valuable tool for understanding
the function of genes in biological systems.  For the differential analysis of
transcript abundance using RNA sequencing data, the negative binomial model is
by far the most frequently adopted.  However, common methods that are based on a
negative binomial model are not robust to extreme outliers, which we found to be
abundant in public datasets.  So far, no rigorous and probabilistic methods for
detection of outliers have been developed for RNA sequencing data, leaving the
identification mostly to visual inspection.  Recent advances in Bayesian
computation allow large-scale comparison of observed data against its
theoretical distribution given in a statistical model.  Here we propose ppcseq,
a key quality-control tool for identifying transcripts that include outlier data
points in differential expression analysis, which do not follow a negative
binomial distribution.  Applying ppcseq to analyse several publicly available
datasets using popular tools, we show that from 3 to 10 percent of
differentially abundant transcripts across algorithms and datasets had
statistics inflated by the presence of outliers.")
    (license license:gpl3)))

(define-public r-powsc
  (package
    (name "r-powsc")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "POWSC" version))
       (sha256
        (base32 "0il151al5jb5r7zp2j408v6cm7j8n9kwnwd4crsm5qv2hnc6vvhs"))))
    (properties `((upstream-name . "POWSC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-rcolorbrewer
                             r-pheatmap
                             r-mast
                             r-limma
                             r-ggplot2
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/POWSC")
    (synopsis
     "Simulation, power evaluation, and sample size recommendation for single cell RNA-seq")
    (description
     "Determining the sample size for adequate power to detect statistical
significance is a crucial step at the design stage for high-throughput
experiments.  Even though a number of methods and tools are available for sample
size calculation for microarray and RNA-seq in the context of differential
expression (DE), this topic in the field of single-cell RNA sequencing is
understudied.  Moreover, the unique data characteristics present in
@code{scRNA-seq} such as sparsity and heterogeneity increase the challenge.  We
propose POWSC, a simulation-based method, to provide power evaluation and sample
size recommendation for single-cell RNA sequencing DE analysis.  POWSC consists
of a data simulator that creates realistic expression data, and a power assessor
that provides a comprehensive evaluation and visualization of the power and
sample size relationship.")
    (license license:gpl2)))

(define-public r-porcineprobe
  (package
    (name "r-porcineprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "porcineprobe" version
                              'annotation))
       (sha256
        (base32 "16q865wjrfcm5ffqwjdk762yq1ixa93jlvfg7xbhsvajvvw5dxdy"))))
    (properties `((upstream-name . "porcineprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/porcineprobe")
    (synopsis "Probe sequence data for microarrays of type porcine")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Porcine\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-porcinecdf
  (package
    (name "r-porcinecdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "porcinecdf" version
                              'annotation))
       (sha256
        (base32 "1ywbgh5nk3bba0mhmbbmvry0j9m9vk7qmsacl5nx1cjd7kp68csv"))))
    (properties `((upstream-name . "porcinecdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/porcinecdf")
    (synopsis "porcinecdf")
    (description
     "This package provides a package containing an environment representing the
Porcine.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-porcine-db
  (package
    (name "r-porcine-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "porcine.db" version
                              'annotation))
       (sha256
        (base32 "1yg0nixly4akpx11fzv93jzfbrs05qck2qg9a0a76zwlnp9mmak3"))))
    (properties `((upstream-name . "porcine.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-ss-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/porcine.db")
    (synopsis
     "Affymetrix Affymetrix Porcine Array annotation data (chip porcine)")
    (description
     "Affymetrix Affymetrix Porcine Array annotation data (chip porcine) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-poplarprobe
  (package
    (name "r-poplarprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "poplarprobe" version
                              'annotation))
       (sha256
        (base32 "1pi6lhkk3lr49qs0yfpxm80nm1zqn4syykydymah2208r6qnkgv2"))))
    (properties `((upstream-name . "poplarprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/poplarprobe")
    (synopsis "Probe sequence data for microarrays of type poplar")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Poplar\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-poplarcdf
  (package
    (name "r-poplarcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "poplarcdf" version
                              'annotation))
       (sha256
        (base32 "0j28czs936j2wgwp63qbwl1mjcflcrx7ir88jzxkkw7411ch1gl1"))))
    (properties `((upstream-name . "poplarcdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/poplarcdf")
    (synopsis "poplarcdf")
    (description
     "This package provides a package containing an environment representing the
Poplar.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-poma
  (package
    (name "r-poma")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "POMA" version))
       (sha256
        (base32 "0kw8sfk38qc547acg62hbarzml4cnwsnf8bgxhsnk3lh250m0als"))))
    (properties `((upstream-name . "POMA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vegan
                             r-uwot
                             r-tidyr
                             r-tibble
                             r-sva
                             r-summarizedexperiment
                             r-rlang
                             r-rankprod
                             r-randomforest
                             r-purrr
                             r-multcomp
                             r-msigdbr
                             r-mixomics
                             r-mass
                             r-magrittr
                             r-lme4
                             r-limma
                             r-janitor
                             r-impute
                             r-glmnet
                             r-ggrepel
                             r-ggplot2
                             r-ggcorrplot
                             r-fsa
                             r-fgsea
                             r-dplyr
                             r-deseq2
                             r-dbscan
                             r-complexheatmap
                             r-caret
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pcastellanoescuder/POMA")
    (synopsis "Tools for Omics Data Analysis")
    (description
     "The POMA package offers a comprehensive toolkit designed for omics data
analysis, streamlining the process from initial visualization to final
statistical analysis.  Its primary goal is to simplify and unify the various
steps involved in omics data processing, making it more accessible and
manageable within a single, intuitive R package.  Emphasizing on reproducibility
and user-friendliness, POMA leverages the standardized
@code{SummarizedExperiment} class from Bioconductor, ensuring seamless
integration and compatibility with a wide array of Bioconductor tools.  This
approach guarantees maximum flexibility and replicability, making POMA an
essential asset for researchers handling omics datasets.  See
https://github.com/pcastellanoescuder/POMAShiny.  Paper: Castellano-Escuder et
al. (2021) <doi:10.1371/journal.pcbi.1009148> for more details.")
    (license license:gpl3)))

(define-public r-polystest
  (package
    (name "r-polystest")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PolySTest" version))
       (sha256
        (base32 "04ib8irmfa0jf0a4gz96nk3k5cwb7fa0hv9f9jmbvc7pxyn6gmkw"))))
    (properties `((upstream-name . "PolySTest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-upsetr
                             r-summarizedexperiment
                             r-shiny
                             r-s4vectors
                             r-qvalue
                             r-plotly
                             r-matrixstats
                             r-limma
                             r-knitr
                             r-heatmaply
                             r-gplots
                             r-fdrtool
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/computproteomics/PolySTest")
    (synopsis
     "PolySTest: Detection of differentially regulated features. Combined statistical testing for data with few replicates and missing values")
    (description
     "The complexity of high-throughput quantitative omics experiments often leads to
low replicates numbers and many missing values.  We implemented a new test to
simultaneously consider missing values and quantitative changes, which we
combined with well-performing statistical tests for high confidence detection of
differentially regulated features.  The package contains functions to run the
test and to visualize the results.")
    (license license:gpl2)))

(define-public r-pogos
  (package
    (name "r-pogos")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pogos" version))
       (sha256
        (base32 "02mkx2p8l6nh05bcayl0klv8zy7zys0bpf0bq80nz1cs7509ggz0"))))
    (properties `((upstream-name . "pogos")))
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
    (propagated-inputs (list r-shiny
                             r-s4vectors
                             r-rjson
                             r-ontoproc
                             r-httr
                             r-ggplot2))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://bioconductor.org/packages/pogos")
    (synopsis "PharmacOGenomics Ontology Support")
    (description
     "Provide simple utilities for querying bhklab @code{PharmacoDB}, modeling API
outputs, and integrating to cell and compound ontologies.")
    (license license:artistic2.0)))

(define-public r-podkat
  (package
    (name "r-podkat")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "podkat" version))
       (sha256
        (base32 "14rfw680n8jlmppm657wiwv4axrqsyhc7w5mkk2yl7qcw5c84ii5"))))
    (properties `((upstream-name . "podkat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsamtools
                             r-rhtslib
                             r-rcpp
                             r-matrix
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome
                             r-biostrings
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/UBod/podkat")
    (synopsis "Position-Dependent Kernel Association Test")
    (description
     "This package provides an association test that is capable of dealing with very
rare and even private variants.  This is accomplished by a kernel-based approach
that takes the positions of the variants into account.  The test can be used for
pre-processed matrix data, but also directly for variant data stored in VCF
files.  Association testing can be performed whole-genome, whole-exome, or
restricted to pre-defined regions of interest.  The test is complemented by
tools for analyzing and visualizing the results.")
    (license license:gpl2+)))

(define-public r-podcall
  (package
    (name "r-podcall")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PoDCall" version))
       (sha256
        (base32 "0j4bzkm6h8rhd9xf44n6cfscivi9y30nhacyb1zi79349vd8wiky"))))
    (properties `((upstream-name . "PoDCall")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shinyjs
                             r-shiny
                             r-rlist
                             r-readr
                             r-purrr
                             r-mclust
                             r-laplacesdemon
                             r-gridextra
                             r-ggplot2
                             r-dt
                             r-diptest))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PoDCall")
    (synopsis
     "Positive Droplet Calling for DNA Methylation Droplet Digital PCR")
    (description
     "Reads files exported from QX Manager or @code{QuantaSoft} containing amplitude
values from a run of @code{ddPCR} (96 well plate) and robustly sets thresholds
to determine positive droplets for each channel of each individual well.
Concentration and normalized concentration in addition to other metrics is then
calculated for each well.  Results are returned as a table, optionally written
to file, as well as optional plots (scatterplot and histogram) for both channels
per well written to file.  The package includes a shiny application which
provides an interactive and user-friendly interface to the full functionality of
@code{PoDCall}.")
    (license license:gpl3)))

(define-public r-pocrcannotation-db
  (package
    (name "r-pocrcannotation-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "POCRCannotation.db" version
                              'annotation))
       (sha256
        (base32 "0ybvs4hrxpivdkhm0fxpib11vlxqqdk8prlyj78vj5qzyb3iy89d"))))
    (properties `((upstream-name . "POCRCannotation.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/POCRCannotation.db")
    (synopsis "package containing metadata for POCRC arrays")
    (description
     "This package provides a package containing metadata for POCRC arrays assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-pmp
  (package
    (name "r-pmp")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pmp" version))
       (sha256
        (base32 "0kk0fn0q844xl5z4kjx2yygwrckkqw45zvkg84kxc0pn8ab77dq0"))))
    (properties `((upstream-name . "pmp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-reshape2
                             r-pcamethods
                             r-missforest
                             r-matrixstats
                             r-impute
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/pmp")
    (synopsis
     "Peak Matrix Processing and signal batch correction for metabolomics datasets")
    (description
     "This package provides methods and tools for (pre-)processing of metabolomics
datasets (i.e.  peak matrices), including filtering, normalisation, missing
value imputation, scaling, and signal drift and batch effect correction methods.
 Filtering methods are based on: the fraction of missing values (across samples
or features); Relative Standard Deviation (RSD) calculated from the Quality
Control (QC) samples; the blank samples.  Normalisation methods include
Probabilistic Quotient Normalisation (PQN) and normalisation to total signal
intensity.  A unified user interface for several commonly used missing value
imputation algorithms is also provided.  Supported methods are: k-nearest
neighbours (knn), random forests (rf), Bayesian PCA missing value estimator
(bpca), mean or median value of the given feature and a constant small value.
The generalised logarithm (glog) transformation algorithm is available to
stabilise the variance across low and high intensity mass spectral features.
Finally, this package provides an implementation of the Quality Control-Robust
Spline Correction (QCRSC) algorithm for signal drift and batch effect correction
of mass spectrometry-based datasets.")
    (license license:gpl3)))

(define-public r-pmm
  (package
    (name "r-pmm")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pmm" version))
       (sha256
        (base32 "0nrp23hnk74il7m9v5nv1fn6ihfryghq5h3p9j86zyllxp08jvda"))))
    (properties `((upstream-name . "pmm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lme4))
    (home-page "https://bioconductor.org/packages/pmm")
    (synopsis "Parallel Mixed Model")
    (description
     "The Parallel Mixed Model (PMM) approach is suitable for hit selection and
cross-comparison of RNAi screens generated in experiments that are performed in
parallel under several conditions.  For example, we could think of the
measurements or readouts from cells under RNAi knock-down, which are infected
with several pathogens or which are grown from different cell lines.")
    (license license:gpl3)))

(define-public r-plyxp
  (package
    (name "r-plyxp")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "plyxp" version))
       (sha256
        (base32 "1lybsd3gsx1kc0338gvlh6c8k491ll8l5vk6zbj3fx59xfgnvbr5"))))
    (properties `((upstream-name . "plyxp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vctrs
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-s7
                             r-s4vectors
                             r-rlang
                             r-purrr
                             r-pillar
                             r-glue
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jtlandis/plyxp")
    (synopsis
     "Data masks for SummarizedExperiment enabling dplyr-like manipulation")
    (description
     "The package provides `rlang` data masks for the @code{SummarizedExperiment}
class.  The enables the evaluation of unquoted expression in different contexts
of the @code{SummarizedExperiment} object with optional access to other
contexts.  The goal for `plyxp` is for evaluation to feel like a data.frame
object without ever needing to unwind to a rectangular data.frame.")
    (license license:expat)))

(define-public r-plyinteractions
  (package
    (name "r-plyinteractions")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "plyinteractions" version))
       (sha256
        (base32 "0mw7kbsy21fxbhi0biq8x84i0lvlads0f84mvqg5ycsl641484sp"))))
    (properties `((upstream-name . "plyinteractions")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tibble
                             r-s4vectors
                             r-rlang
                             r-plyranges
                             r-iranges
                             r-interactionset
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/js2264/plyinteractions")
    (synopsis "Extending tidy verbs to genomic interactions")
    (description
     "Operate on `GInteractions` objects as tabular data using `dplyr`-like verbs.
The functions and methods in `plyinteractions` provide a grammatical approach to
manipulate `GInteractions`, to facilitate their integration in genomic analysis
workflows.")
    (license license:artistic2.0)))

(define-public r-plpe
  (package
    (name "r-plpe")
    (version "1.66.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PLPE" version))
       (sha256
        (base32 "1jfmrxd878kyy129349rq8papf20mb1ji2p494y92x6vxcr8hhwa"))))
    (properties `((upstream-name . "PLPE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass r-lpe r-biobase))
    (home-page "http://www.korea.ac.kr/~stat2242/")
    (synopsis
     "Local Pooled Error Test for Differential Expression with Paired High-throughput Data")
    (description
     "This package performs tests for paired high-throughput data.")
    (license license:gpl2+)))

(define-public r-plotgrouper
  (package
    (name "r-plotgrouper")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "plotGrouper" version))
       (sha256
        (base32 "10mbgk8klsmm8dwhi27kqgx2jqdb7wrh1xqczq31da461nk1pb85"))))
    (properties `((upstream-name . "plotGrouper")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-shinythemes
                             r-shiny
                             r-scales
                             r-rlang
                             r-readxl
                             r-readr
                             r-magrittr
                             r-hmisc
                             r-gtable
                             r-gridextra
                             r-ggpubr
                             r-ggplot2
                             r-egg
                             r-dplyr
                             r-colourpicker))
    (native-inputs (list r-knitr))
    (home-page "https://jdgagnon.github.io/plotGrouper/")
    (synopsis
     "Shiny app GUI wrapper for ggplot with built-in statistical analysis")
    (description
     "This package provides a shiny app-based GUI wrapper for ggplot with built-in
statistical analysis.  Import data from file and use dropdown menus and
checkboxes to specify the plotting variables, graph type, and look of your
plots.  Once created, plots can be saved independently or stored in a report
that can be saved as a pdf.  If new data are added to the file, the report can
be refreshed to include new data.  Statistical tests can be selected and added
to the graphs.  Analysis of flow cytometry data is especially integrated with
@code{plotGrouper}.  Count data can be transformed to return the absolute number
of cells in a sample (this feature requires inclusion of the number of beads per
sample and information about any dilution performed).")
    (license license:gpl3)))

(define-public r-plotgardenerdata
  (package
    (name "r-plotgardenerdata")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "plotgardenerData" version
                              'experiment))
       (sha256
        (base32 "0fi7ymf6kbgrr934xw0dj4skar8xvaan0s52j63rbzbvzsdvibz8"))))
    (properties `((upstream-name . "plotgardenerData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/PhanstielLab/plotgardenerData")
    (synopsis "Datasets and test data files for the plotgardener package")
    (description
     "This is a supplemental data package for the plotgardener package.  Includes
example datasets used in plotgardener vignettes and example raw data files.  For
details on how to use these datasets, see the plotgardener package vignettes.")
    (license license:expat)))

(define-public r-plotgardener
  (package
    (name "r-plotgardener")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "plotgardener" version))
       (sha256
        (base32 "0vfw431z7plqlxnmaxgy61gg499b4p38bbb61axaipppldvf87rl"))))
    (properties `((upstream-name . "plotgardener")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr
                             r-strawr
                             r-rlang
                             r-rhdf5
                             r-rcpp
                             r-rcolorbrewer
                             r-purrr
                             r-plyranges
                             r-iranges
                             r-glue
                             r-ggplotify
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr
                             r-data-table
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://phanstiellab.github.io/plotgardener")
    (synopsis "Coordinate-Based Genomic Visualization Package for R")
    (description
     "Coordinate-based genomic visualization package for R. It grants users the
ability to programmatically produce complex, multi-paneled figures.  Tailored
for genomics, plotgardener allows users to visualize large complex genomic
datasets and provides exquisite control over how plots are placed and arranged
on a page.")
    (license license:expat)))

(define-public r-plier
  (package
    (name "r-plier")
    (version "1.76.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "plier" version))
       (sha256
        (base32 "0jcr8drnnscrimdn81qh7gmv7p4f62wzji2yb0s2v83526ly7xjy"))))
    (properties `((upstream-name . "plier")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase r-affy))
    (home-page "https://bioconductor.org/packages/plier")
    (synopsis "Implements the Affymetrix PLIER algorithm")
    (description
     "The PLIER (Probe Logarithmic Error Intensity Estimate) method produces an
improved signal by accounting for experimentally observed patterns in probe
behavior and handling error at the appropriately at low and high signal values.")
    (license license:gpl2+)))

(define-public r-plasmut
  (package
    (name "r-plasmut")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "plasmut" version))
       (sha256
        (base32 "1jah13a4mgvqg6p3jw9f9jz6rgjwga9nfg0yilcmc933iv8zri2k"))))
    (properties `((upstream-name . "plasmut")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/plasmut")
    (synopsis
     "Stratifying mutations observed in cell-free DNA and white blood cells as germline, hematopoietic, or somatic")
    (description
     "This package provides a Bayesian method for quantifying the liklihood that a
given plasma mutation arises from clonal hematopoesis or the underlying tumor.
It requires sequencing data of the mutation in plasma and white blood cells with
the number of distinct and mutant reads in both tissues.  We implement a Monte
Carlo importance sampling method to assess the likelihood that a mutation arises
from the tumor relative to non-tumor origin.")
    (license license:artistic2.0)))

(define-public r-plasmodiumanophelesprobe
  (package
    (name "r-plasmodiumanophelesprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "plasmodiumanophelesprobe" version
                              'annotation))
       (sha256
        (base32 "03hfq51nrpmx8ihc48jiih6bk99irrgal9x7i7mgcv8xd508gcsy"))))
    (properties `((upstream-name . "plasmodiumanophelesprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/plasmodiumanophelesprobe")
    (synopsis
     "Probe sequence data for microarrays of type plasmodiumanopheles")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Plasmodium\\_Anopheles\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-plasmodiumanophelescdf
  (package
    (name "r-plasmodiumanophelescdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "plasmodiumanophelescdf" version
                              'annotation))
       (sha256
        (base32 "1vs36091djinn3g6rjhmy9xfdyi58365zbcjc9mf50adnp2i5fq9"))))
    (properties `((upstream-name . "plasmodiumanophelescdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/plasmodiumanophelescdf")
    (synopsis "plasmodiumanophelescdf")
    (description
     "This package provides a package containing an environment representing the
Plasmodium_Anopheles.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-planttfhunter
  (package
    (name "r-planttfhunter")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "planttfhunter" version))
       (sha256
        (base32 "0r0s1lys5nqdnl38xkkf1ir1pczmqb14ciy2irabbs4d2ni43bdl"))))
    (properties `((upstream-name . "planttfhunter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/almeidasilvaf/planttfhunter")
    (synopsis
     "Identification and classification of plant transcription factors")
    (description
     "planttfhunter is used to identify plant transcription factors (TFs) from protein
sequence data and classify them into families and subfamilies using the
classification scheme implemented in @code{PlantTFDB}.  TFs are identified using
pre-built hidden Markov model profiles for DNA-binding domains.  Then, auxiliary
and forbidden domains are used with DNA-binding domains to classify TFs into
families and subfamilies (when applicable).  Currently, TFs can be classified in
58 different TF families/subfamilies.")
    (license license:gpl3)))

(define-public r-planet
  (package
    (name "r-planet")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "planet" version))
       (sha256
        (base32 "1vnz03gppcklywix2mkyxqz8ivx71kkl8kdn72da7720jp45hb86"))))
    (properties `((upstream-name . "planet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-magrittr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://victor.rbind.io/planet")
    (synopsis "Placental DNA methylation analysis tools")
    (description
     "This package contains R functions to predict biological variables to from
placnetal DNA methylation data generated from infinium arrays.  This includes
inferring ethnicity/ancestry, gestational age, and cell composition from
placental DNA methylation array (450k/850k) data.")
    (license license:gpl2)))

(define-public r-piuma
  (package
    (name "r-piuma")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PIUMA" version))
       (sha256
        (base32 "1s1zwl0ny3s2b84fl2fwxfbcl078mxl20cdgx8ydnmxdv0197a41"))))
    (properties `((upstream-name . "PIUMA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vegan
                             r-umap
                             r-tsne
                             r-summarizedexperiment
                             r-scales
                             r-patchwork
                             r-kernlab
                             r-igraph
                             r-hmisc
                             r-ggplot2
                             r-dbscan
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BioinfoMonzino/PIUMA")
    (synopsis
     "Phenotypes Identification Using Mapper from topological data Analysis")
    (description
     "The PIUMA package offers a tidy pipeline of Topological Data Analysis frameworks
to identify and characterize communities in high and heterogeneous dimensional
data.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-pirat
  (package
    (name "r-pirat")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Pirat" version))
       (sha256
        (base32 "1cd4w3nrhg1fp5awwlx5a6w119p9h56lxlysgmgxl0iwwjzsbl2l"))))
    (properties `((upstream-name . "Pirat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-reticulate
                             r-progress
                             r-mass
                             r-invgamma
                             r-ggplot2
                             r-biocmanager
                             r-basilisk))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/edyp-lab/Pirat")
    (synopsis "Precursor or Peptide Imputation under Random Truncation")
    (description
     "Pirat enables the imputation of missing values (either MNARs or MCARs) in
bottom-up LC-MS/MS proteomics data using a penalized maximum likelihood
strategy.  It does not require any parameter tuning, it models the instrument
censorship from the data available.  It accounts for sibling peptides
correlations and it can leverage complementary transcriptomics measurements.")
    (license license:gpl2)))

(define-public r-pipets
  (package
    (name "r-pipets")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PIPETS" version))
       (sha256
        (base32 "1bysmh2ylmj18rabw6zk8wjqd2dg83pzf67awzvdkx55kr2gvadf"))))
    (properties `((upstream-name . "PIPETS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicranges r-dplyr r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/qfurumo/PIPETS")
    (synopsis "Poisson Identification of PEaks from Term-Seq data")
    (description
     "PIPETS provides statistically robust analysis for 3'-seq/term-seq data.  It
utilizes a sliding window approach to apply a Poisson Distribution test to
identify genomic positions with termination read coverage that is significantly
higher than the surrounding signal.  PIPETS then condenses proximal signal and
produces strand specific results that contain all significant termination peaks.")
    (license license:gpl3)))

(define-public r-pipeframe
  (package
    (name "r-pipeframe")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pipeFrame" version))
       (sha256
        (base32 "089vbqwk6i5zg3bdkqr63ndkgj3sd8ac999423bqpkc2cfg9p6cm"))))
    (properties `((upstream-name . "pipeFrame")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-visnetwork
                             r-rmarkdown
                             r-magrittr
                             r-genomeinfodb
                             r-digest
                             r-bsgenome
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/wzthu/pipeFrame")
    (synopsis "Pipeline framework for bioinformatics in R")
    (description
     "@code{pipeFrame} is an R package for building a componentized bioinformatics
pipeline.  Each step in this pipeline is wrapped in the framework, so the
connection among steps is created seamlessly and automatically.  Users could
focus more on fine-tuning arguments rather than spending a lot of time on
transforming file format, passing task outputs to task inputs or installing the
dependencies.  Componentized step elements can be customized into other new
pipelines flexibly as well.  This pipeline can be split into several important
functional steps, so it is much easier for users to understand the complex
arguments from each step rather than parameter combination from the whole
pipeline.  At the same time, componentized pipeline can restart at the
breakpoint and avoid rerunning the whole pipeline, which may save a lot of time
for users on pipeline tuning or such issues as power off or process other
interrupts.")
    (license license:gpl3)))

(define-public r-pipecomp
  (package
    (name "r-pipecomp")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pipeComp" version))
       (sha256
        (base32 "1hmi2fbnzd1pzilm4ca3gzmfnv0dbil77ml9a8x7hf3bqac398ww"))))
    (properties `((upstream-name . "pipeComp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridislite
                             r-uwot
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-seurat
                             r-scran
                             r-scater
                             r-scales
                             r-s4vectors
                             r-rtsne
                             r-reshape2
                             r-rcolorbrewer
                             r-randomcolor
                             r-matrixstats
                             r-matrix
                             r-knitr
                             r-intrinsicdimension
                             r-ggplot2
                             r-dplyr
                             r-cowplot
                             r-complexheatmap
                             r-cluster
                             r-clue
                             r-circlize
                             r-biocparallel
                             r-aricode))
    (native-inputs (list r-knitr))
    (home-page "https://doi.org/10.1186/s13059-020-02136-7")
    (synopsis "pipeComp pipeline benchmarking framework")
    (description
     "This package provides a simple framework to facilitate the comparison of
pipelines involving various steps and parameters.  The
`@code{pipelineDefinition`} class represents pipelines as, minimally, a set of
functions consecutively executed on the output of the previous one, and
optionally accompanied by step-wise evaluation and aggregation functions.  Given
such an object, a set of alternative parameters/methods, and benchmark datasets,
the `@code{runPipeline`} function then proceeds through all combinations
arguments, avoiding recomputing the same step twice and compiling evaluations on
the fly to avoid storing potentially large intermediate data.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-ping
  (package
    (name "r-ping")
    (version "2.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PING" version))
       (sha256
        (base32 "0bw2w2f01brryz2x36qi82v4v47wwd7fk47bkhcs4yb3qm6xa5k0"))))
    (properties `((upstream-name . "PING")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list gsl))
    (propagated-inputs (list r-s4vectors
                             r-pics
                             r-iranges
                             r-gviz
                             r-genomicranges
                             r-fda
                             r-bsgenome
                             r-biocgenerics))
    (native-inputs (list pkg-config))
    (home-page "https://bioconductor.org/packages/PING")
    (synopsis
     "Probabilistic inference for Nucleosome Positioning with MNase-based or Sonicated Short-read Data")
    (description
     "Probabilistic inference of @code{ChIP-Seq} using an empirical Bayes mixture
model approach.")
    (license license:artistic2.0)))

(define-public r-pigengene
  (package
    (name "r-pigengene")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Pigengene" version))
       (sha256
        (base32 "1r8m1pm7xnbzvjgyffp5izvb9gln1w4by97nnqnlk06hr027r5sw"))))
    (properties `((upstream-name . "Pigengene")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wgcna
                             r-rgraphviz
                             r-reactomepa
                             r-preprocesscore
                             r-pheatmap
                             r-partykit
                             r-openxlsx
                             r-matrixstats
                             r-mass
                             r-impute
                             r-graph
                             r-go-db
                             r-ggplot2
                             r-gdata
                             r-dplyr
                             r-dose
                             r-dbi
                             r-clusterprofiler
                             r-c50
                             r-bnlearn
                             r-biocstyle))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Pigengene")
    (synopsis "Infers biological signatures from gene expression data")
    (description
     "Pigengene package provides an efficient way to infer biological signatures from
gene expression profiles.  The signatures are independent from the underlying
platform, e.g., the input can be microarray or RNA Seq data.  It can even infer
the signatures using data from one platform, and evaluate them on the other.
Pigengene identifies the modules (clusters) of highly coexpressed genes using
coexpression network analysis, summarizes the biological information of each
module in an eigengene, learns a Bayesian network that models the probabilistic
dependencies between modules, and builds a decision tree based on the expression
of eigengenes.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-pig-db0
  (package
    (name "r-pig-db0")
    (version "3.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pig.db0" version
                              'annotation))
       (sha256
        (base32 "0mlc62dj7im85czy9idqfld510d3dfygqm03sx9s8lksb0ib0g7n"))))
    (properties `((upstream-name . "pig.db0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/pig.db0")
    (synopsis "Base Level Annotation databases for pig")
    (description
     "Base annotation databases for pig, intended ONLY to be used by
@code{AnnotationDbi} to produce regular annotation packages.")
    (license license:artistic2.0)))

(define-public r-pics
  (package
    (name "r-pics")
    (version "2.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PICS" version))
       (sha256
        (base32 "0189nsd3qx8dw414d0j3nfkn89i5vclgdmq2y3x3v2nva24whrka"))))
    (properties `((upstream-name . "PICS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list gsl))
    (propagated-inputs (list r-rsamtools r-iranges r-genomicranges
                             r-genomicalignments))
    (native-inputs (list pkg-config r-knitr))
    (home-page "https://github.com/SRenan/PICS")
    (synopsis "Probabilistic inference of ChIP-seq")
    (description
     "Probabilistic inference of @code{ChIP-Seq} using an empirical Bayes mixture
model approach.")
    (license license:artistic2.0)))

(define-public r-pickgene
  (package
    (name "r-pickgene")
    (version "1.78.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pickgene" version))
       (sha256
        (base32 "1h3wih2rs05hx4h1iccj14cj6nw2xlc1dqcfqm3inn040qvr9ig3"))))
    (properties `((upstream-name . "pickgene")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass))
    (home-page "http://www.stat.wisc.edu/~yandell/statgen")
    (synopsis "Adaptive Gene Picking for Microarray Expression Data Analysis")
    (description
     "This package provides functions to Analyze Microarray (Gene Expression) Data.")
    (license license:gpl2+)))

(define-public r-phyloprofiledata
  (package
    (name "r-phyloprofiledata")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PhyloProfileData" version
                              'experiment))
       (sha256
        (base32 "1b1qf8s7il8cyjfmp5z3zrq21apzc8jyr9hyq2vb6y48gycjjs8k"))))
    (properties `((upstream-name . "PhyloProfileData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-experimenthub r-biostrings r-biocstyle))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BIONF/PhyloProfileData")
    (synopsis
     "Data package for phylogenetic profile analysis using PhyloProfile tool")
    (description
     "Two experimental datasets to illustrate running and analysing phylogenetic
profiles with @code{PhyloProfile} package.")
    (license license:expat)))

(define-public r-phyloprofile
  (package
    (name "r-phyloprofile")
    (version "1.20.4")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PhyloProfile" version))
       (sha256
        (base32 "0vv0a6vknjx3zh92ypmbvl4rcbrpfzsgnj1vmjx0y4p3vxkwvhx0"))))
    (properties `((upstream-name . "PhyloProfile")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-zoo
                             r-yaml
                             r-xml2
                             r-umap
                             r-tsne
                             r-stringr
                             r-shinyjs
                             r-shinyfiles
                             r-shinycssloaders
                             r-shinybs
                             r-shiny
                             r-scattermore
                             r-rcurl
                             r-rcolorbrewer
                             r-plotly
                             r-pbapply
                             r-gridextra
                             r-ggplot2
                             r-fastcluster
                             r-extrafont
                             r-experimenthub
                             r-energy
                             r-dt
                             r-dplyr
                             r-data-table
                             r-colourpicker
                             r-biostrings
                             r-biodist
                             r-biocstyle
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BIONF/PhyloProfile/")
    (synopsis "PhyloProfile")
    (description
     "@code{PhyloProfile} is a tool for exploring complex phylogenetic profiles.
Phylogenetic profiles, presence/absence patterns of genes over a set of species,
are commonly used to trace the functional and evolutionary history of genes
across species and time.  With @code{PhyloProfile} we can enrich regular
phylogenetic profiles with further data like sequence/structure similarity, to
make phylogenetic profiling more meaningful.  Besides the interactive
visualisation powered by R-Shiny, the package offers a set of further analysis
features to gain insights like the gene age estimation or core gene
identification.")
    (license license:expat)))

(define-public r-phylop35way-ucsc-mm39
  (package
    (name "r-phylop35way-ucsc-mm39")
    (version "3.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "phyloP35way.UCSC.mm39" version
                              'annotation))
       (sha256
        (base32 "1n0iywfs23dhc54mapirvaqcbx38zjf8lknbsz80p5lxp24n2lf9"))))
    (properties `((upstream-name . "phyloP35way.UCSC.mm39")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicscores r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/phyloP35way.UCSC.mm39")
    (synopsis
     "UCSC phyloP mm39 conservation scores AnnotationHub Resource Metadata")
    (description
     "Store UCSC @code{phyloP} mm39 conservation scores @code{AnnotationHub} Resource
Metadata.  Provide provenance and citation information for UCSC @code{phyloP}
mm39 conservation score @code{AnnotationHub} resources.  Illustrate in a
vignette how to access those resources.")
    (license license:artistic2.0)))

(define-public r-phosr
  (package
    (name "r-phosr")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PhosR" version))
       (sha256
        (base32 "0m3gz1g8a0wvfdjyp2vcarizaxbvs9zqa9zaivq5ns2nhbs2wd5f"))))
    (properties `((upstream-name . "PhosR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-summarizedexperiment
                             r-stringi
                             r-s4vectors
                             r-ruv
                             r-rlang
                             r-reshape2
                             r-rcolorbrewer
                             r-preprocesscore
                             r-pheatmap
                             r-pcamethods
                             r-network
                             r-limma
                             r-igraph
                             r-ggtext
                             r-ggpubr
                             r-ggplot2
                             r-ggdendro
                             r-ggally
                             r-e1071
                             r-dplyr
                             r-dendextend
                             r-circlize
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PhosR")
    (synopsis
     "set of methods and tools for comprehensive analysis of phosphoproteomics data")
    (description
     "@code{PhosR} is a package for the comprenhensive analysis of phosphoproteomic
data.  There are two major components to @code{PhosR}: processing and downstream
analysis. @code{PhosR} consists of various processing tools for
phosphoproteomics data including filtering, imputation, normalisation, and
functional analysis for inferring active kinases and signalling pathways.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-phosphonormalizer
  (package
    (name "r-phosphonormalizer")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "phosphonormalizer" version))
       (sha256
        (base32 "1lpnfvw5krfipz2k96mfdg848d3xyjj71qzzlgnh6xmxiaimabbc"))))
    (properties `((upstream-name . "phosphonormalizer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plyr r-matrixstats))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/phosphonormalizer")
    (synopsis "Compensates for the bias introduced by median normalization in")
    (description
     "It uses the overlap between enriched and non-enriched datasets to compensate for
the bias introduced in global phosphorylation after applying median
normalization.")
    (license license:gpl2+)))

(define-public r-phipdata
  (package
    (name "r-phipdata")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PhIPData" version))
       (sha256
        (base32 "0y0jjnz107srnz4mhx8wy1mrn0g50nsjn8727hdyzn0hybq8inld"))))
    (properties `((upstream-name . "PhIPData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-iranges
                             r-genomicranges
                             r-edger
                             r-cli
                             r-biocgenerics
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PhIPData")
    (synopsis "Container for PhIP-Seq Experiments")
    (description
     "@code{PhIPData} defines an S4 class for phage-immunoprecipitation sequencing
(@code{PhIP-seq}) experiments.  Buliding upon the
@code{RangedSummarizedExperiment} class, @code{PhIPData} enables users to
coordinate metadata with experimental data in analyses.  Additionally,
@code{PhIPData} provides specialized methods to subset and identify beads-only
samples, subset objects using virus aliases, and use existing peptide libraries
to populate object parameters.")
    (license license:expat)))

(define-public r-philr
  (package
    (name "r-philr")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "philr" version))
       (sha256
        (base32 "1ian38y69ng5xi928msp57maf0gr5bb57wnbfifpjdyvz7sinp8q"))))
    (properties `((upstream-name . "philr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-phangorn r-ggtree r-ggplot2 r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jsilve24/philr")
    (synopsis
     "Phylogenetic partitioning based ILR transform for metagenomics data")
    (description
     "@code{PhILR} is short for Phylogenetic Isometric Log-Ratio Transform.  This
package provides functions for the analysis of compositional data (e.g., data
representing proportions of different variables/parts).  Specifically this
package allows analysis of compositional data where the parts can be related
through a phylogenetic tree (as is common in microbiota survey data) and makes
available the Isometric Log Ratio transform built from the phylogenetic tree and
utilizing a weighted reference measure.")
    (license license:gpl3)))

(define-public r-phenstat
  (package
    (name "r-phenstat")
    (version "2.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PhenStat" version))
       (sha256
        (base32 "0jzgpmkk4ljz7kxqmjpp6kspw8a36yiprk8zyhqzb9rw2a5g85xj"))))
    (properties `((upstream-name . "PhenStat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-smoothwin
                             r-reshape
                             r-pingr
                             r-nortest
                             r-nlme
                             r-msgps
                             r-mass
                             r-logistf
                             r-lme4
                             r-knitr
                             r-graph
                             r-ggplot2
                             r-corrplot
                             r-car))
    (home-page "https://bioconductor.org/packages/PhenStat")
    (synopsis "Statistical analysis of phenotypic data")
    (description
     "Package contains methods for statistical analysis of phenotypic data.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-phenotest
  (package
    (name "r-phenotest")
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "phenoTest" version))
       (sha256
        (base32 "111qdiqkzrmcy1lw2961icm55hfgfb6x5h2vddswk4pvj7ylwhqr"))))
    (properties `((upstream-name . "phenoTest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xtable
                             r-survival
                             r-mgcv
                             r-limma
                             r-hopach
                             r-hmisc
                             r-hgu133a-db
                             r-heatplus
                             r-gseabase
                             r-gplots
                             r-ggplot2
                             r-genefilter
                             r-ellipse
                             r-category
                             r-bma
                             r-biomart
                             r-biobase
                             r-annotationdbi
                             r-annotate))
    (home-page "https://bioconductor.org/packages/phenoTest")
    (synopsis
     "Tools to test association between gene expression and phenotype in a way that is efficient, structured, fast and scalable. We also provide tools to do GSEA (Gene set enrichment analysis) and copy number variation")
    (description
     "This package provides tools to test correlation between gene expression and
phenotype in a way that is efficient, structured, fast and scalable.  GSEA is
also provided.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-phenopath
  (package
    (name "r-phenopath")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "phenopath" version))
       (sha256
        (base32 "1kg4x01xp7j3klpqz24fihzhi9sy9dz4i4073zijwb4rvy661jf3"))))
    (properties `((upstream-name . "phenopath")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-rcpp
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/phenopath")
    (synopsis
     "Genomic trajectories with heterogeneous genetic and environmental backgrounds")
    (description
     "@code{PhenoPath} infers genomic trajectories (pseudotimes) in the presence of
heterogeneous genetic and environmental backgrounds and tests for interactions
between them.")
    (license license:asl2.0)))

(define-public r-phenomis
  (package
    (name "r-phenomis")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "phenomis" version))
       (sha256
        (base32 "02pdhaawhiyzhf89b0xgvh85kr8ih31zqm3158v45f5fim4k6ach"))))
    (properties `((upstream-name . "phenomis")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-venndiagram
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-ropls
                             r-rcolorbrewer
                             r-ranger
                             r-pmcmrplus
                             r-plotly
                             r-multidataset
                             r-multiassayexperiment
                             r-limma
                             r-igraph
                             r-htmlwidgets
                             r-ggrepel
                             r-ggplot2
                             r-futile-logger
                             r-data-table
                             r-biodbchebi
                             r-biodb
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://doi.org/10.1038/s41597-021-01095-3")
    (synopsis "Postprocessing and univariate analysis of omics data")
    (description
     "The phenomis package provides methods to perform post-processing (i.e.  quality
control and normalization) as well as univariate statistical analysis of single
and multi-omics data sets.  These methods include quality control metrics,
signal drift and batch effect correction, intensity transformation, univariate
hypothesis testing, but also clustering (as well as annotation of metabolomics
data).  The data are handled in the standard Bioconductor formats (i.e.
@code{SummarizedExperiment} and @code{MultiAssayExperiment} for single and
multi-omics datasets, respectively; the alternative @code{ExpressionSet} and
@code{MultiDataSet} formats are also supported for convenience).  As a result,
all methods can be readily chained as workflows.  The pipeline can be further
enriched by multivariate analysis and feature selection, by using the ropls and
biosigner packages, which support the same formats.  Data can be conveniently
imported from and exported to text files.  Although the methods were initially
targeted to metabolomics data, most of the methods can be applied to other types
of omics data (e.g., transcriptomics, proteomics).")
    (license license:cecill)))

(define-public r-phenogeneranker
  (package
    (name "r-phenogeneranker")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PhenoGeneRanker" version))
       (sha256
        (base32 "0np50456hvkwxcikpsz2d7ji392r6indzqrn9lyjyqvf5as6nw0y"))))
    (properties `((upstream-name . "PhenoGeneRanker")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrix r-igraph r-foreach r-dplyr r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PhenoGeneRanker")
    (synopsis "PhenoGeneRanker: A gene and phenotype prioritization tool")
    (description
     "This package is a gene/phenotype prioritization tool that utilizes multiplex
heterogeneous gene phenotype network. @code{PhenoGeneRanker} allows multi-layer
gene and phenotype networks.  It also calculates empirical p-values of
gene/phenotype ranking using random stratified sampling of genes/phenotypes
based on their connectivity degree in the network.
https://dl.acm.org/doi/10.1145/3307339.3342155.")
    (license (license:fsdg-compatible
              "Creative Commons Attribution 4.0 International License"))))

(define-public r-phastcons35way-ucsc-mm39
  (package
    (name "r-phastcons35way-ucsc-mm39")
    (version "3.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "phastCons35way.UCSC.mm39" version
                              'annotation))
       (sha256
        (base32 "0lniqakqxja8inq3gn168w1xja1m2kbmww0cw971smsnddypmig7"))))
    (properties `((upstream-name . "phastCons35way.UCSC.mm39")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicscores r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/phastCons35way.UCSC.mm39")
    (synopsis
     "UCSC phastCons mm39 conservation scores AnnotationHub Resource Metadata")
    (description
     "Store UCSC @code{phastCons} mm39 conservation scores @code{AnnotationHub}
Resource Metadata.  Provide provenance and citation information for UCSC
@code{phastCons} mm39 conservation score @code{AnnotationHub} resources.
Illustrate in a vignette how to access those resources.")
    (license license:artistic2.0)))

(define-public r-phastcons30way-ucsc-hg38
  (package
    (name "r-phastcons30way-ucsc-hg38")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "phastCons30way.UCSC.hg38" version
                              'annotation))
       (sha256
        (base32 "0jq5z1af0f5jqazz46gvf3nnkrp91a6qzb96bk7fjdbvk5b3z0dd"))))
    (properties `((upstream-name . "phastCons30way.UCSC.hg38")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicscores r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/phastCons30way.UCSC.hg38")
    (synopsis "phastCons30way.UCSC.hg38 AnnotationHub Resource Metadata")
    (description
     "Store @code{phastCons30way.UCSC.hg38} @code{AnnotationHub} Resource Metadata.")
    (license license:artistic2.0)))

(define-public r-phastcons100way-ucsc-hg38
  (package
    (name "r-phastcons100way-ucsc-hg38")
    (version "3.7.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "phastCons100way.UCSC.hg38" version
                              'annotation))
       (sha256
        (base32 "0dka39rvx4d3wbcjypcgvc19s6cnxkkfywa4irv23kpibq1sjyv0"))))
    (properties `((upstream-name . "phastCons100way.UCSC.hg38")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-genomicscores
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome))
    (home-page "https://bioconductor.org/packages/phastCons100way.UCSC.hg38")
    (synopsis "UCSC phastCons conservation scores for hg38")
    (description
     "Store UCSC @code{phastCons} conservation scores for the human genome (hg38)
calculated from multiple alignments with other 99 vertebrate species.")
    (license license:artistic2.0)))

(define-public r-pharmacogx
  (package
    (name "r-pharmacogx")
    (version "3.10.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PharmacoGx" version))
       (sha256
        (base32 "06y3f2f7qw641432h7fb0ibipppqx9j41kx0rphircvy6qpbx70x"))))
    (properties `((upstream-name . "PharmacoGx")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-reshape2
                             r-rcpp
                             r-rcolorbrewer
                             r-multiassayexperiment
                             r-magicaxis
                             r-jsonlite
                             r-ggplot2
                             r-downloader
                             r-data-table
                             r-coregx
                             r-coop
                             r-checkmate
                             r-catools
                             r-boot
                             r-biocparallel
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PharmacoGx")
    (synopsis "Analysis of Large-Scale Pharmacogenomic Data")
    (description
     "This package contains a set of functions to perform large-scale analysis of
pharmaco-genomic data.  These include the @code{PharmacoSet} object for storing
the results of pharmacogenomic experiments, as well as a number of functions for
computing common summaries of drug-dose response and correlating them with the
molecular features in a cancer cell-line.")
    (license license:gpl3+)))

(define-public r-phantasuslite
  (package
    (name "r-phantasuslite")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "phantasusLite" version))
       (sha256
        (base32 "13nnsm7bkpirakyn5k9pz730jjj9ddiwppmk9x0rmfbqchnj8n1g"))))
    (properties `((upstream-name . "phantasusLite")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-rhdf5client r-httr r-data-table
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ctlab/phantasusLite/")
    (synopsis "Loading and annotation RNA-seq counts matrices")
    (description
     "@code{PhantasusLite} – a lightweight package with helper functions of general
interest extracted from phantasus package.  In parituclar it simplifies working
with public RNA-seq datasets from GEO by providing access to the remote HSDS
repository with the precomputed gene counts from ARCHS4 and DEE2 projects.")
    (license license:expat)))

(define-public r-phantasus
  (package
    (name "r-phantasus")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "phantasus" version))
       (sha256
        (base32 "01z7vr54ji89wbwv1cc1icscw06x8lxxnhiyjls0rslccwiprr1g"))))
    (properties `((upstream-name . "phantasus")))
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
    (propagated-inputs (list r-yaml
                             r-xml
                             r-tidyr
                             r-svglite
                             r-stringr
                             r-scales
                             r-rook
                             r-rhdf5client
                             r-rhdf5
                             r-protolite
                             r-pheatmap
                             r-phantasuslite
                             r-opencpu
                             r-matrix
                             r-limma
                             r-jsonlite
                             r-httr
                             r-httpuv
                             r-htmltools
                             r-gtable
                             r-ggplot2
                             r-geoquery
                             r-fs
                             r-fgsea
                             r-edger
                             r-deseq2
                             r-data-table
                             r-curl
                             r-config
                             r-ccapp
                             r-biobase
                             r-assertthat
                             r-apeglm
                             r-annotationdbi))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://alserglab.wustl.edu/phantasus")
    (synopsis "Visual and interactive gene expression analysis")
    (description
     "Phantasus is a web-application for visual and interactive gene expression
analysis.  Phantasus is based on Morpheus – a web-based software for heatmap
visualisation and analysis, which was integrated with an R environment via
@code{OpenCPU} API. Aside from basic visualization and filtering methods,
R-based methods such as k-means clustering, principal component analysis or
differential expression analysis with limma package are supported.")
    (license license:expat)))

(define-public r-pgxrpi
  (package
    (name "r-pgxrpi")
    (version "1.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pgxRpi" version))
       (sha256
        (base32 "1fql64bxlmkfl1z8gz8hk54npd1wghf6lxxw2rzgm7m5d4b9y7lx"))))
    (properties `((upstream-name . "pgxRpi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-survminer
                             r-survival
                             r-summarizedexperiment
                             r-s4vectors
                             r-lubridate
                             r-httr
                             r-ggplot2
                             r-genomicranges
                             r-future-apply
                             r-future
                             r-dplyr
                             r-circlize
                             r-attempt))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/progenetix/pgxRpi")
    (synopsis "R wrapper for Progenetix")
    (description
     "The package is an R wrapper for Progenetix REST API built upon the Beacon v2
protocol.  Its purpose is to provide a seamless way for retrieving genomic data
from Progenetix database—an open resource dedicated to curated oncogenomic
profiles.  Empowered by this package, users can effortlessly access and
visualize data from Progenetix.")
    (license license:artistic2.0)))

(define-public r-pgca
  (package
    (name "r-pgca")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pgca" version))
       (sha256
        (base32 "0d0y609cjys6m754r8vnnxwf19c8yd9ngrasv4nyzjxknzii71k9"))))
    (properties `((upstream-name . "pgca")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/pgca")
    (synopsis
     "PGCA: An Algorithm to Link Protein Groups Created from MS/MS Data")
    (description
     "Protein Group Code Algorithm (PGCA) is a computationally inexpensive algorithm
to merge protein summaries from multiple experimental quantitative proteomics
data.  The algorithm connects two or more groups with overlapping accession
numbers.  In some cases, pairwise groups are mutually exclusive but they may
still be connected by another group (or set of groups) with overlapping
accession numbers.  Thus, groups created by PGCA from multiple experimental runs
(i.e., global groups) are called \"connected\" groups.  These identified global
protein groups enable the analysis of quantitative data available for protein
groups instead of unique protein identifiers.")
    (license license:gpl2+)))

(define-public r-periodicdna
  (package
    (name "r-periodicdna")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "periodicDNA" version))
       (sha256
        (base32 "1i581w88yd3qr4hp8m0dhbasxr3qgd2yz01mxdhiydrkf06hckd4"))))
    (properties `((upstream-name . "periodicDNA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-s4vectors
                             r-rtracklayer
                             r-magrittr
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-cowplot
                             r-bsgenome
                             r-biostrings
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/js2264/periodicDNA")
    (synopsis
     "Set of tools to identify periodic occurrences of k-mers in DNA sequences")
    (description
     "This R package helps the user identify k-mers (e.g. di- or tri-nucleotides)
present periodically in a set of genomic loci (typically regulatory elements).
The functions of this package provide a straightforward approach to find
periodic occurrences of k-mers in DNA sequences, such as regulatory elements.
It is not aimed at identifying motifs separated by a conserved distance; for
this type of analysis, please visit MEME website.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-pepxmltab
  (package
    (name "r-pepxmltab")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pepXMLTab" version))
       (sha256
        (base32 "124h7pfi4da2svl9mxard32cpc3nz6fqdj776vv1q9mdz23wppq7"))))
    (properties `((upstream-name . "pepXMLTab")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml))
    (home-page "https://bioconductor.org/packages/pepXMLTab")
    (synopsis "Parsing pepXML files and filter based on peptide FDR")
    (description
     "Parsing @code{pepXML} files based one XML package.  The package tries to handle
@code{pepXML} files generated from different softwares.  The output will be a
peptide-spectrum-matching tabular file.  The package also provide function to
filter the PSMs based on FDR.")
    (license license:artistic2.0)))

(define-public r-pepstat
  (package
    (name "r-pepstat")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pepStat" version))
       (sha256
        (base32 "14rc4kdjazx99665fj10wj5cmbcmg8m4rmaq09xbvbz65rcjsd5j"))))
    (properties `((upstream-name . "pepStat")))
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
    (propagated-inputs (list r-plyr
                             r-limma
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-fields
                             r-data-table
                             r-biobase))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/RGLab/pepStat")
    (synopsis "Statistical analysis of peptide microarrays")
    (description "Statistical analysis of peptide microarrays.")
    (license license:artistic2.0)))

(define-public r-pepsnmrdata
  (package
    (name "r-pepsnmrdata")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PepsNMRData" version
                              'experiment))
       (sha256
        (base32 "1rvmkyi9y6ny1xyz9xlblp99ddjx1s4wzp1wghdk53rc8qn3fm1v"))))
    (properties `((upstream-name . "PepsNMRData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/PepsNMRData")
    (synopsis "Datasets for the PepsNMR package")
    (description
     "This package contains all the datasets used in the @code{PepsNMR} package.")
    (license (list license:gpl2
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-pepsettest
  (package
    (name "r-pepsettest")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PepSetTest" version))
       (sha256
        (base32 "0d6q1nkn4rp1rpwjgi0xzk8x02dinzd2w6zjrf7k4xlkacysn1gy"))))
    (properties `((upstream-name . "PepSetTest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-summarizedexperiment
                             r-reshape2
                             r-matrixstats
                             r-mass
                             r-lme4
                             r-limma
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/JmWangBio/PepSetTest")
    (synopsis "Peptide Set Test")
    (description
     "Peptide Set Test (@code{PepSetTest}) is a peptide-centric strategy to infer
differentially expressed proteins in LC-MS/MS proteomics data.  This test
detects coordinated changes in the expression of peptides originating from the
same protein and compares these changes against the rest of the peptidome.
Compared to traditional aggregation-based approaches, the peptide set test
demonstrates improved statistical power, yet controlling the Type I error rate
correctly in most cases.  This test can be valuable for discovering novel
biomarkers and prioritizing drug targets, especially when the direct application
of statistical analysis to protein data fails to provide substantial insights.")
    (license license:gpl3+)))

(define-public r-pepdat
  (package
    (name "r-pepdat")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pepDat" version
                              'experiment))
       (sha256
        (base32 "114dx8nlx0hdi5kc5sjddsa1fbcjkx754ayfxxbdb1zl1zqxmbpi"))))
    (properties `((upstream-name . "pepDat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicranges))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/pepDat")
    (synopsis "Peptide microarray data package")
    (description
     "This package provides sample files and data for the vignettes of @code{pepStat}
and Pviz as well as peptide collections for HIV and SIV.")
    (license license:artistic2.0)))

(define-public r-pengls
  (package
    (name "r-pengls")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pengls" version))
       (sha256
        (base32 "0b75c4l4j9pw2bjfnnln8bwxq5k7ah3bans9pn8yf4gf71j1vls6"))))
    (properties `((upstream-name . "pengls")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nlme r-glmnet r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/pengls")
    (synopsis "Fit Penalised Generalised Least Squares models")
    (description
     "Combine generalised least squares methodology from the nlme package for dealing
with autocorrelation with penalised least squares methods from the glmnet
package to deal with high dimensionality.  This pengls packages glues them
together through an iterative loop.  The resulting method is applicable to high
dimensional datasets that exhibit autocorrelation, such as spatial or temporal
data.")
    (license license:gpl2)))

(define-public r-pedixplorer
  (package
    (name "r-pedixplorer")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Pedixplorer" version))
       (sha256
        (base32 "0krm6mhg6nywnmf481rbgj9s0ax5x6zf6vxqavl8s011yav5f2wr"))))
    (properties `((upstream-name . "Pedixplorer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-shinywidgets
                             r-shinytoastr
                             r-shinycssloaders
                             r-shiny
                             r-scales
                             r-s4vectors
                             r-readxl
                             r-quadprog
                             r-plyr
                             r-plotly
                             r-matrix
                             r-htmlwidgets
                             r-gridextra
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-data-table
                             r-colourpicker))
    (native-inputs (list r-knitr))
    (home-page "https://louislenezet.github.io/Pedixplorer/")
    (synopsis "Pedigree Functions")
    (description
     "Routines to handle family data with a Pedigree object.  The initial purpose was
to create correlation structures that describe family relationships such as
kinship and identity-by-descent, which can be used to model family data in mixed
effects models, such as in the coxme function.  Also includes a tool for
Pedigree drawing which is focused on producing compact layouts without
intervention.  Recent additions include utilities to trim the Pedigree object
with various criteria, and kinship for the X chromosome.")
    (license license:artistic2.0)))

(define-public r-pedbarrayv9-db
  (package
    (name "r-pedbarrayv9-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pedbarrayv9.db" version
                              'annotation))
       (sha256
        (base32 "0x9m9m4nmdhc0j5244avmlfwljcpw0sh44l1b00cx05swi3vmjlp"))))
    (properties `((upstream-name . "pedbarrayv9.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/pedbarrayv9.db")
    (synopsis "FHCRC Nelson Lab pedbarrayv9 Annotation Data (pedbarrayv9)")
    (description
     "FHCRC Nelson Lab pedbarrayv9 Annotation Data (pedbarrayv9) assembled using data
from public repositories.")
    (license license:artistic2.0)))

(define-public r-pedbarrayv10-db
  (package
    (name "r-pedbarrayv10-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pedbarrayv10.db" version
                              'annotation))
       (sha256
        (base32 "01sn7qh5r2c2ph7gqirlzlplxscsmczf7ajffd9rsx59932f71kx"))))
    (properties `((upstream-name . "pedbarrayv10.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/pedbarrayv10.db")
    (synopsis "FHCRC Nelson Lab pedbarrayv10 Annotation Data (pedbarrayv10)")
    (description
     "FHCRC Nelson Lab pedbarrayv10 Annotation Data (pedbarrayv10) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-peco
  (package
    (name "r-peco")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "peco" version))
       (sha256
        (base32 "1fir0w1w7x3789gckjyw096vylg61vafhgf34nvq1l4nl0ddai0h"))))
    (properties `((upstream-name . "peco")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-scater
                             r-genlasso
                             r-foreach
                             r-doparallel
                             r-conicfit
                             r-circular
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jhsiao999/peco")
    (synopsis
     "Supervised Approach for **P**r**e**dicting **c**ell Cycle Pr**o**gression using scRNA-seq data")
    (description
     "Our approach provides a way to assign continuous cell cycle phase using
@code{scRNA-seq} data, and consequently, allows to identify cyclic trend of gene
expression levels along the cell cycle.  This package provides method and
training data, which includes @code{scRNA-seq} data collected from 6 individual
cell lines of induced pluripotent stem cells (@code{iPSCs}), and also continuous
cell cycle phase derived from FUCCI fluorescence imaging data.")
    (license license:gpl3+)))

(define-public r-peca
  (package
    (name "r-peca")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PECA" version))
       (sha256
        (base32 "1zz950pjaz6f202zihnjqpmx5vx7rzjlrd70v02y27agyfcsnf4a"))))
    (properties `((upstream-name . "PECA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rots
                             r-preprocesscore
                             r-limma
                             r-genefilter
                             r-aroma-core
                             r-aroma-affymetrix
                             r-affy))
    (home-page "https://bioconductor.org/packages/PECA")
    (synopsis "Probe-level Expression Change Averaging")
    (description
     "Calculates Probe-level Expression Change Averages (PECA) to identify
differential expression in Affymetrix gene expression microarray studies or in
proteomic studies using peptide-level mesurements respectively.")
    (license license:gpl2+)))

(define-public r-peakpanther
  (package
    (name "r-peakpanther")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "peakPantheR" version))
       (sha256
        (base32 "14pi3qjkikd35nfz3pmpljjr7yxv6136vwv6bhbd05jk37r6dia6"))))
    (properties `((upstream-name . "peakPantheR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml
                             r-svglite
                             r-stringr
                             r-shinycssloaders
                             r-shiny
                             r-scales
                             r-pracma
                             r-mzr
                             r-msnbase
                             r-minpack-lm
                             r-lubridate
                             r-gridextra
                             r-ggplot2
                             r-foreach
                             r-dt
                             r-doparallel
                             r-bslib))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/phenomecentre/peakPantheR")
    (synopsis "Peak Picking and Annotation of High Resolution Experiments")
    (description
     "An automated pipeline for the detection, integration and reporting of predefined
features across a large number of mass spectrometry data files.  It enables the
real time annotation of multiple compounds in a single file, or the parallel
annotation of multiple compounds in multiple files.  A graphical user interface
as well as command line functions will assist in assessing the quality of
annotation and update fitting parameters until a satisfactory result is
obtained.")
    (license license:gpl3)))

(define-public r-peacoqc
  (package
    (name "r-peacoqc")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PeacoQC" version))
       (sha256
        (base32 "05rq1l7wz92d6lc97f1yy5kyccp9rk75cqpyhxqjpcm6lqx40djk"))))
    (properties `((upstream-name . "PeacoQC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plyr
                             r-gridextra
                             r-ggplot2
                             r-flowworkspace
                             r-flowcore
                             r-complexheatmap
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/saeyslab/PeacoQC")
    (synopsis "Peak-based selection of high quality cytometry data")
    (description
     "This is a package that includes pre-processing and quality control functions
that can remove margin events, compensate and transform the data and that will
use @code{PeacoQCSignalStability} for quality control.  This last function will
first detect peaks in each channel of the flowframe.  It will remove anomalies
based on the @code{IsolationTree} function and the MAD outlier detection method.
 This package can be used for both flow- and mass cytometry data.")
    (license license:gpl3+)))

(define-public r-pdinfobuilder
  (package
    (name "r-pdinfobuilder")
    (version "1.70.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pdInfoBuilder" version))
       (sha256
        (base32 "0jg5hlib0i46mgkza9rhj95assii6h7gcyl7mgknxyki2bhiz7dc"))))
    (properties `((upstream-name . "pdInfoBuilder")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings
                             r-biocgenerics
                             r-biobase
                             r-affxparser))
    (home-page "https://bioconductor.org/packages/pdInfoBuilder")
    (synopsis "Platform Design Information Package Builder")
    (description
     "Builds platform design information packages.  These consist of a SQLite database
containing feature-level data such as x, y position on chip and
@code{featureSet} ID. The database also incorporates @code{featureSet-level}
annotation data.  The products of this packages are used by the oligo pkg.")
    (license license:artistic2.0)))

(define-public r-pd-zebrafish
  (package
    (name "r-pd-zebrafish")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.zebrafish" version
                              'annotation))
       (sha256
        (base32 "0gg7y7w51pv0vf39qzyaf09wl3vxy222nr69zgxg7cylwxmaky7v"))))
    (properties `((upstream-name . "pd.zebrafish")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.zebrafish")
    (synopsis "Platform Design Info for The Manufacturer's Name Zebrafish")
    (description "Platform Design Info for The Manufacturer's Name Zebrafish.")
    (license license:artistic2.0)))

(define-public r-pd-zebgene-1-1-st
  (package
    (name "r-pd-zebgene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.zebgene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "0xs3kx7l78dfqkasgz8n5s8qjia5qhdcnj1l8al0ivy8mwvlpyxs"))))
    (properties `((upstream-name . "pd.zebgene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.zebgene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix ZebGene-1_1-st")
    (description "Platform Design Info for Affymetrix @code{ZebGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-zebgene-1-0-st
  (package
    (name "r-pd-zebgene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.zebgene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "1vywph8shn23k0s8jmvx34rj34y1zxgwcssjnzbipm71f2sa15hw"))))
    (properties `((upstream-name . "pd.zebgene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.zebgene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix ZebGene-1_0-st")
    (description "Platform Design Info for Affymetrix @code{ZebGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-yg-s98
  (package
    (name "r-pd-yg-s98")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.yg.s98" version
                              'annotation))
       (sha256
        (base32 "1krx7kkjlyc41739c349z0sdbslp19iqfai0xzy6f4jk15524vhj"))))
    (properties `((upstream-name . "pd.yg.s98")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.yg.s98")
    (synopsis "Platform Design Info for The Manufacturer's Name YG_S98")
    (description "Platform Design Info for The Manufacturer's Name YG_S98.")
    (license license:artistic2.0)))

(define-public r-pd-yeast-2
  (package
    (name "r-pd-yeast-2")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.yeast.2" version
                              'annotation))
       (sha256
        (base32 "0l6sxg79xmlb7gdxx4bx24l35jgx5y2qfp3pxzcmdnd7c7qy6z5j"))))
    (properties `((upstream-name . "pd.yeast.2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.yeast.2")
    (synopsis "Platform Design Info for The Manufacturer's Name Yeast_2")
    (description "Platform Design Info for The Manufacturer's Name Yeast_2.")
    (license license:artistic2.0)))

(define-public r-pd-xenopus-laevis
  (package
    (name "r-pd-xenopus-laevis")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.xenopus.laevis" version
                              'annotation))
       (sha256
        (base32 "1fxd95ak5s2dw16prxdwk20hisss32nywy9dc7y72bpqrv0v309y"))))
    (properties `((upstream-name . "pd.xenopus.laevis")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.xenopus.laevis")
    (synopsis
     "Platform Design Info for The Manufacturer's Name Xenopus_laevis")
    (description
     "Platform Design Info for The Manufacturer's Name Xenopus_laevis.")
    (license license:artistic2.0)))

(define-public r-pd-x-tropicalis
  (package
    (name "r-pd-x-tropicalis")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.x.tropicalis" version
                              'annotation))
       (sha256
        (base32 "1pb6jm14k0g4z9vffi3clyh7rwc11c89hinb2amczg4xfm5lqrdr"))))
    (properties `((upstream-name . "pd.x.tropicalis")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.x.tropicalis")
    (synopsis "Platform Design Info for The Manufacturer's Name X_tropicalis")
    (description
     "Platform Design Info for The Manufacturer's Name X_tropicalis.")
    (license license:artistic2.0)))

(define-public r-pd-x-laevis-2
  (package
    (name "r-pd-x-laevis-2")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.x.laevis.2" version
                              'annotation))
       (sha256
        (base32 "0zf3rc8rz05hzga2g5b8khszz6sr29dlp8z1jyn94ial284d0fn3"))))
    (properties `((upstream-name . "pd.x.laevis.2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.x.laevis.2")
    (synopsis "Platform Design Info for The Manufacturer's Name X_laevis_2")
    (description
     "Platform Design Info for The Manufacturer's Name X_laevis_2.")
    (license license:artistic2.0)))

(define-public r-pd-wheat
  (package
    (name "r-pd-wheat")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.wheat" version
                              'annotation))
       (sha256
        (base32 "12n8k5ah8fncbrb2hrpi2ah29fj5rxnh5j5zk8lfwhijg2zf52ra"))))
    (properties `((upstream-name . "pd.wheat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.wheat")
    (synopsis "Platform Design Info for The Manufacturer's Name wheat")
    (description "Platform Design Info for The Manufacturer's Name wheat.")
    (license license:artistic2.0)))

(define-public r-pd-vitis-vinifera
  (package
    (name "r-pd-vitis-vinifera")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.vitis.vinifera" version
                              'annotation))
       (sha256
        (base32 "19r2k7wx3kygw6syqph24glw0b273gpi0z0y8n4bnd3a184g6hxz"))))
    (properties `((upstream-name . "pd.vitis.vinifera")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.vitis.vinifera")
    (synopsis
     "Platform Design Info for The Manufacturer's Name Vitis_Vinifera")
    (description
     "Platform Design Info for The Manufacturer's Name Vitis_Vinifera.")
    (license license:artistic2.0)))

(define-public r-pd-u133-x3p
  (package
    (name "r-pd-u133-x3p")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.u133.x3p" version
                              'annotation))
       (sha256
        (base32 "171rv9syn90k70ivaj8c48s827c08nycpyyc2b76jy405kaqb1gl"))))
    (properties `((upstream-name . "pd.u133.x3p")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.u133.x3p")
    (synopsis "Platform Design Info for The Manufacturer's Name U133_X3P")
    (description "Platform Design Info for The Manufacturer's Name U133_X3P.")
    (license license:artistic2.0)))

(define-public r-pd-tomato
  (package
    (name "r-pd-tomato")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.tomato" version
                              'annotation))
       (sha256
        (base32 "12jn8i691j3kkgwa771f4kffzfcxv19vi0waw13akch7x7cc09q7"))))
    (properties `((upstream-name . "pd.tomato")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.tomato")
    (synopsis "Platform Design Info for The Manufacturer's Name Tomato")
    (description "Platform Design Info for The Manufacturer's Name Tomato.")
    (license license:artistic2.0)))

(define-public r-pd-sugar-cane
  (package
    (name "r-pd-sugar-cane")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.sugar.cane" version
                              'annotation))
       (sha256
        (base32 "09m8m99l9mrhs4gr1rb02l54k8i2wgdzz88qlbpl4xmrfnfn99h6"))))
    (properties `((upstream-name . "pd.sugar.cane")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.sugar.cane")
    (synopsis "Platform Design Info for The Manufacturer's Name Sugar_Cane")
    (description
     "Platform Design Info for The Manufacturer's Name Sugar_Cane.")
    (license license:artistic2.0)))

(define-public r-pd-soygene-1-1-st
  (package
    (name "r-pd-soygene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.soygene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "0978vbl59afgrzy0cmwq4mhsdz5rn5d929nz90fvczm6q8g24616"))))
    (properties `((upstream-name . "pd.soygene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.soygene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix SoyGene-1_1-st")
    (description "Platform Design Info for Affymetrix @code{SoyGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-soygene-1-0-st
  (package
    (name "r-pd-soygene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.soygene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "1hg90pma4ikdgxpw1f5mkjcw7na4mmjbhpr06dcssjl3bvmd4yxc"))))
    (properties `((upstream-name . "pd.soygene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.soygene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix SoyGene-1_0-st")
    (description "Platform Design Info for Affymetrix @code{SoyGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-soybean
  (package
    (name "r-pd-soybean")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.soybean" version
                              'annotation))
       (sha256
        (base32 "0xg90m7k1x9sgmhcp1qdwhxsyr2y5g28p7a4z6gd6mng2l7cgyh0"))))
    (properties `((upstream-name . "pd.soybean")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.soybean")
    (synopsis "Platform Design Info for The Manufacturer's Name Soybean")
    (description "Platform Design Info for The Manufacturer's Name Soybean.")
    (license license:artistic2.0)))

(define-public r-pd-s-aureus
  (package
    (name "r-pd-s-aureus")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.s.aureus" version
                              'annotation))
       (sha256
        (base32 "0kszw94ymxgwd3midzkpl307ch3pyr4g5qjcf4s2jsq6mrvxw666"))))
    (properties `((upstream-name . "pd.s.aureus")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.s.aureus")
    (synopsis "Platform Design Info for The Manufacturer's Name S_aureus")
    (description "Platform Design Info for The Manufacturer's Name S_aureus.")
    (license license:artistic2.0)))

(define-public r-pd-rusgene-1-1-st
  (package
    (name "r-pd-rusgene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.rusgene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "090lxwxzj39d6qzlr7c3x50zf98g8x987rv1gdn0gcas15imya6n"))))
    (properties `((upstream-name . "pd.rusgene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.rusgene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix RUSGene-1_1-st")
    (description "Platform Design Info for Affymetrix RUSGene-1_1-st.")
    (license license:artistic2.0)))

(define-public r-pd-rusgene-1-0-st
  (package
    (name "r-pd-rusgene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.rusgene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "1ik28yykkpdclr5hrv8lzafzfivakwvzgz49q7bpb1g6ihwylshw"))))
    (properties `((upstream-name . "pd.rusgene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.rusgene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix RUSGene-1_0-st")
    (description "Platform Design Info for Affymetrix RUSGene-1_0-st.")
    (license license:artistic2.0)))

(define-public r-pd-rta-1-0
  (package
    (name "r-pd-rta-1-0")
    (version "3.12.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.rta.1.0" version
                              'annotation))
       (sha256
        (base32 "0x3j1a47lxhlqnhfvh1cii11rd433x16i6xmydwq2dkvm4xgd63h"))))
    (properties `((upstream-name . "pd.rta.1.0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.rta.1.0")
    (synopsis "Platform Design Info for Affymetrix RTA-1_0")
    (description "Platform Design Info for Affymetrix RTA-1_0.")
    (license license:artistic2.0)))

(define-public r-pd-rn-u34
  (package
    (name "r-pd-rn-u34")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.rn.u34" version
                              'annotation))
       (sha256
        (base32 "0ayp6r7z7p61b1lfq9dkq4ips4apgjg6igrcnvsivlfhcfcfs0wf"))))
    (properties `((upstream-name . "pd.rn.u34")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.rn.u34")
    (synopsis "Platform Design Info for The Manufacturer's Name RN_U34")
    (description "Platform Design Info for The Manufacturer's Name RN_U34.")
    (license license:artistic2.0)))

(define-public r-pd-rjpgene-1-1-st
  (package
    (name "r-pd-rjpgene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.rjpgene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "0i99fyf6ya13z4hfjf3f5ssvys8wjhmwk894zy0p59p7nmphigyc"))))
    (properties `((upstream-name . "pd.rjpgene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.rjpgene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix RJpGene-1_1-st")
    (description "Platform Design Info for Affymetrix R@code{JpGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-rjpgene-1-0-st
  (package
    (name "r-pd-rjpgene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.rjpgene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "18qj6sdjw17553lwcb3swdx0aiv54izdzzblgl88g90ijny8rbpa"))))
    (properties `((upstream-name . "pd.rjpgene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.rjpgene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix RJpGene-1_0-st")
    (description "Platform Design Info for Affymetrix R@code{JpGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-rice
  (package
    (name "r-pd-rice")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.rice" version
                              'annotation))
       (sha256
        (base32 "0fmd505vianfspb1s5glr6aacnz45dq9skbk1qwm0a9ck6a6paav"))))
    (properties `((upstream-name . "pd.rice")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.rice")
    (synopsis "Platform Design Info for The Manufacturer's Name Rice")
    (description "Platform Design Info for The Manufacturer's Name Rice.")
    (license license:artistic2.0)))

(define-public r-pd-rhesus
  (package
    (name "r-pd-rhesus")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.rhesus" version
                              'annotation))
       (sha256
        (base32 "1zrpq7ppl2gaiprvz4sm0zsxqcw2nvn6qzwi3b0cimqf7r2091dd"))))
    (properties `((upstream-name . "pd.rhesus")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.rhesus")
    (synopsis "Platform Design Info for The Manufacturer's Name Rhesus")
    (description "Platform Design Info for The Manufacturer's Name Rhesus.")
    (license license:artistic2.0)))

(define-public r-pd-rhegene-1-1-st
  (package
    (name "r-pd-rhegene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.rhegene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "0f400qal4qmkxv705n5bzz07rkrz5zgs7swk8xp4pyp161fgb171"))))
    (properties `((upstream-name . "pd.rhegene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.rhegene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix RheGene-1_1-st")
    (description "Platform Design Info for Affymetrix @code{RheGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-rhegene-1-0-st
  (package
    (name "r-pd-rhegene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.rhegene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "1mx221xvxr4ng01ibq1pc472bn5rknfv3sjsbvvfmvqgpwk6z079"))))
    (properties `((upstream-name . "pd.rhegene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.rhegene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix RheGene-1_0-st")
    (description "Platform Design Info for Affymetrix @code{RheGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-rg-u34c
  (package
    (name "r-pd-rg-u34c")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.rg.u34c" version
                              'annotation))
       (sha256
        (base32 "10j3hcszx637dfd55552b75qni0yryrjk8q6p0wkd5dh6p628qrx"))))
    (properties `((upstream-name . "pd.rg.u34c")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.rg.u34c")
    (synopsis "Platform Design Info for The Manufacturer's Name RG_U34C")
    (description "Platform Design Info for The Manufacturer's Name RG_U34C.")
    (license license:artistic2.0)))

(define-public r-pd-rg-u34b
  (package
    (name "r-pd-rg-u34b")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.rg.u34b" version
                              'annotation))
       (sha256
        (base32 "19v2g9lvadvba2dy0c0qn6j8qnsds2xa4cliiq12byad21833ss0"))))
    (properties `((upstream-name . "pd.rg.u34b")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.rg.u34b")
    (synopsis "Platform Design Info for The Manufacturer's Name RG_U34B")
    (description "Platform Design Info for The Manufacturer's Name RG_U34B.")
    (license license:artistic2.0)))

(define-public r-pd-rg-u34a
  (package
    (name "r-pd-rg-u34a")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.rg.u34a" version
                              'annotation))
       (sha256
        (base32 "18jl5w1say8zyp50iqmd6jiw8ffa7qsk6sw7h7cw0j1g90ssf4y3"))))
    (properties `((upstream-name . "pd.rg.u34a")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.rg.u34a")
    (synopsis "Platform Design Info for The Manufacturer's Name RG_U34A")
    (description "Platform Design Info for The Manufacturer's Name RG_U34A.")
    (license license:artistic2.0)))

(define-public r-pd-rcngene-1-1-st
  (package
    (name "r-pd-rcngene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.rcngene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "1lyizr096x5idasvlivl3lb67g7n2xvblrk5zfxglaf2fgpbrgwn"))))
    (properties `((upstream-name . "pd.rcngene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.rcngene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix RCnGene-1_1-st")
    (description "Platform Design Info for Affymetrix R@code{CnGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-rcngene-1-0-st
  (package
    (name "r-pd-rcngene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.rcngene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "0hrhvy6dbw8g1h9qgm9frpmfp45pd5h0fnbvbvz94l98a5gda7xx"))))
    (properties `((upstream-name . "pd.rcngene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.rcngene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix RCnGene-1_0-st")
    (description "Platform Design Info for Affymetrix R@code{CnGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-rat230-2
  (package
    (name "r-pd-rat230-2")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.rat230.2" version
                              'annotation))
       (sha256
        (base32 "0ysn0qi26b3llqs312an0mlgyahf4pgmixlcq2x2n925drns34gg"))))
    (properties `((upstream-name . "pd.rat230.2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.rat230.2")
    (synopsis "Platform Design Info for The Manufacturer's Name Rat230_2")
    (description "Platform Design Info for The Manufacturer's Name Rat230_2.")
    (license license:artistic2.0)))

(define-public r-pd-ragene-2-1-st
  (package
    (name "r-pd-ragene-2-1-st")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.ragene.2.1.st" version
                              'annotation))
       (sha256
        (base32 "1k9zqhnck7fgp6g0b8vmasqjvdyqshzs567rz8qabw6jk5ifssvz"))))
    (properties `((upstream-name . "pd.ragene.2.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.ragene.2.1.st")
    (synopsis "Platform Design Info for Affymetrix RaGene-2_1-st")
    (description "Platform Design Info for Affymetrix @code{RaGene-2_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-ragene-2-0-st
  (package
    (name "r-pd-ragene-2-0-st")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.ragene.2.0.st" version
                              'annotation))
       (sha256
        (base32 "1rq4ivv107853pyr4jrnbms4fgfzddndibrasgql9d4msca0sbz9"))))
    (properties `((upstream-name . "pd.ragene.2.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.ragene.2.0.st")
    (synopsis "Platform Design Info for Affymetrix RaGene-2_0-st")
    (description "Platform Design Info for Affymetrix @code{RaGene-2_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-ragene-1-1-st-v1
  (package
    (name "r-pd-ragene-1-1-st-v1")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.ragene.1.1.st.v1" version
                              'annotation))
       (sha256
        (base32 "1krygwjhqs97gyh94xfbsfd8gg285fg5bgm7rqk7wlwp8fxx8xnn"))))
    (properties `((upstream-name . "pd.ragene.1.1.st.v1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.ragene.1.1.st.v1")
    (synopsis "Platform Design Info for Affymetrix RaGene-1_1-st-v1")
    (description
     "Platform Design Info for Affymetrix @code{RaGene-1_1-st-v1}.")
    (license license:artistic2.0)))

(define-public r-pd-ragene-1-0-st-v1
  (package
    (name "r-pd-ragene-1-0-st-v1")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.ragene.1.0.st.v1" version
                              'annotation))
       (sha256
        (base32 "0afnv1f5xvdh1vdsdfi5k1zscqzpdbf4b399wib3c8dg9vslccgx"))))
    (properties `((upstream-name . "pd.ragene.1.0.st.v1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.ragene.1.0.st.v1")
    (synopsis "Platform Design Info for Affymetrix RaGene-1_0-st-v1")
    (description
     "Platform Design Info for Affymetrix @code{RaGene-1_0-st-v1}.")
    (license license:artistic2.0)))

(define-public r-pd-raex-1-0-st-v1
  (package
    (name "r-pd-raex-1-0-st-v1")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.raex.1.0.st.v1" version
                              'annotation))
       (sha256
        (base32 "11sxhhpb4fy7wh5k7yxwwv141xgn4r1yshx097wicpa6561ffdkc"))))
    (properties `((upstream-name . "pd.raex.1.0.st.v1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.raex.1.0.st.v1")
    (synopsis "Platform Design Info for Affymetrix RaEx-1_0-st-v1")
    (description "Platform Design Info for Affymetrix @code{RaEx-1_0-st-v1}.")
    (license license:artistic2.0)))

(define-public r-pd-rae230b
  (package
    (name "r-pd-rae230b")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.rae230b" version
                              'annotation))
       (sha256
        (base32 "1db6bm6qyrzwwa2scyw6qg7qcdqq97s5vy8kv0fnqc604b1jdzzq"))))
    (properties `((upstream-name . "pd.rae230b")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.rae230b")
    (synopsis "Platform Design Info for The Manufacturer's Name RAE230B")
    (description "Platform Design Info for The Manufacturer's Name RAE230B.")
    (license license:artistic2.0)))

(define-public r-pd-rae230a
  (package
    (name "r-pd-rae230a")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.rae230a" version
                              'annotation))
       (sha256
        (base32 "14kb35pcgxh2hmpzyqp9c2xirs0p6y5dvc3h2n568jmmdd14s7j5"))))
    (properties `((upstream-name . "pd.rae230a")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.rae230a")
    (synopsis "Platform Design Info for The Manufacturer's Name RAE230A")
    (description "Platform Design Info for The Manufacturer's Name RAE230A.")
    (license license:artistic2.0)))

(define-public r-pd-rabgene-1-1-st
  (package
    (name "r-pd-rabgene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.rabgene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "0qs3ka3pdlrpqh66zb62jdfm2y6p2wyn6rcp7gb5qw0s8q9h170a"))))
    (properties `((upstream-name . "pd.rabgene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.rabgene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix RabGene-1_1-st")
    (description "Platform Design Info for Affymetrix @code{RabGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-rabgene-1-0-st
  (package
    (name "r-pd-rabgene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.rabgene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "0vwxzwgwh1a0fpyqsc3mnagin67wf2jmymm9kwhcnxargpmslm7k"))))
    (properties `((upstream-name . "pd.rabgene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.rabgene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix RabGene-1_0-st")
    (description "Platform Design Info for Affymetrix @code{RabGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-porgene-1-1-st
  (package
    (name "r-pd-porgene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.porgene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "038zwlckx58bw4x5naspfnvk4jcyc2g9bijrh1wd4m4k5mr1i4dk"))))
    (properties `((upstream-name . "pd.porgene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.porgene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix PorGene-1_1-st")
    (description "Platform Design Info for Affymetrix @code{PorGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-porgene-1-0-st
  (package
    (name "r-pd-porgene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.porgene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "1jiajzn31yjzs942w3i4cjqlpq81rkbryk961fqb9jpwldzg1pmy"))))
    (properties `((upstream-name . "pd.porgene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.porgene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix PorGene-1_0-st")
    (description "Platform Design Info for Affymetrix @code{PorGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-porcine
  (package
    (name "r-pd-porcine")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.porcine" version
                              'annotation))
       (sha256
        (base32 "0zx2gz90hhalaas3sf2rh8wcapjwmnckr0gq1r8p572chwf2rb81"))))
    (properties `((upstream-name . "pd.porcine")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.porcine")
    (synopsis "Platform Design Info for The Manufacturer's Name Porcine")
    (description "Platform Design Info for The Manufacturer's Name Porcine.")
    (license license:artistic2.0)))

(define-public r-pd-poplar
  (package
    (name "r-pd-poplar")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.poplar" version
                              'annotation))
       (sha256
        (base32 "0j5xmf5hqvbb8ylsrvih92vxn1c1lah3mkffn64fji2lgqy9vjp9"))))
    (properties `((upstream-name . "pd.poplar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.poplar")
    (synopsis "Platform Design Info for The Manufacturer's Name Poplar")
    (description "Platform Design Info for The Manufacturer's Name Poplar.")
    (license license:artistic2.0)))

(define-public r-pd-plasmodium-anopheles
  (package
    (name "r-pd-plasmodium-anopheles")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.plasmodium.anopheles" version
                              'annotation))
       (sha256
        (base32 "0njd97jkg4hxd0jyq03227i00gmy0ccxznzqmp0mjqmkkhljn7nm"))))
    (properties `((upstream-name . "pd.plasmodium.anopheles")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.plasmodium.anopheles")
    (synopsis
     "Platform Design Info for The Manufacturer's Name Plasmodium_Anopheles")
    (description
     "Platform Design Info for The Manufacturer's Name Plasmodium_Anopheles.")
    (license license:artistic2.0)))

(define-public r-pd-pae-g1a
  (package
    (name "r-pd-pae-g1a")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.pae.g1a" version
                              'annotation))
       (sha256
        (base32 "0b0bmzfrh7lm2i5d66z24iz0d5zj3qhw89aw011yssks7sr9lq90"))))
    (properties `((upstream-name . "pd.pae.g1a")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.pae.g1a")
    (synopsis "Platform Design Info for The Manufacturer's Name Pae_G1a")
    (description "Platform Design Info for The Manufacturer's Name Pae_G1a.")
    (license license:artistic2.0)))

(define-public r-pd-ovigene-1-1-st
  (package
    (name "r-pd-ovigene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.ovigene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "1vzrizvk1dbj6ngjxv9wpbm89q5mr8dkfhr0azrczs54c92xy48r"))))
    (properties `((upstream-name . "pd.ovigene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.ovigene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix OviGene-1_1-st")
    (description "Platform Design Info for Affymetrix @code{OviGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-ovigene-1-0-st
  (package
    (name "r-pd-ovigene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.ovigene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "0vga20rb0v4yzd28szsppbgfhmn6ky85qrjj9llvacnlj1riwxsi"))))
    (properties `((upstream-name . "pd.ovigene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.ovigene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix OviGene-1_0-st")
    (description "Platform Design Info for Affymetrix @code{OviGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-nugo-mm1a520177
  (package
    (name "r-pd-nugo-mm1a520177")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.nugo.mm1a520177" version
                              'annotation))
       (sha256
        (base32 "0568zvxc11w2i32wimhmi4271jbmpn97kb0vn4ns20hfg4h63m99"))))
    (properties `((upstream-name . "pd.nugo.mm1a520177")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.nugo.mm1a520177")
    (synopsis
     "Platform Design Info for The Manufacturer's Name NuGO_Mm1a520177")
    (description
     "Platform Design Info for The Manufacturer's Name @code{NuGO_Mm1a520177}.")
    (license license:artistic2.0)))

(define-public r-pd-nugo-hs1a520180
  (package
    (name "r-pd-nugo-hs1a520180")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.nugo.hs1a520180" version
                              'annotation))
       (sha256
        (base32 "1qc87zrrccld1hdqmrk1if98c6jq343gzlmib40wvshmrijp3sk3"))))
    (properties `((upstream-name . "pd.nugo.hs1a520180")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.nugo.hs1a520180")
    (synopsis
     "Platform Design Info for The Manufacturer's Name NuGO_Hs1a520180")
    (description
     "Platform Design Info for The Manufacturer's Name @code{NuGO_Hs1a520180}.")
    (license license:artistic2.0)))

(define-public r-pd-mu11ksubb
  (package
    (name "r-pd-mu11ksubb")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mu11ksubb" version
                              'annotation))
       (sha256
        (base32 "08734j3asq56v090zi0gzk3ryycjm78dfbb0xqmpr7ggqys96qp9"))))
    (properties `((upstream-name . "pd.mu11ksubb")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mu11ksubb")
    (synopsis "Platform Design Info for The Manufacturer's Name Mu11KsubB")
    (description
     "Platform Design Info for The Manufacturer's Name Mu11@code{KsubB}.")
    (license license:artistic2.0)))

(define-public r-pd-mu11ksuba
  (package
    (name "r-pd-mu11ksuba")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mu11ksuba" version
                              'annotation))
       (sha256
        (base32 "10fkys7y5b5frdrjqw3x2gqzp51lgg29nw6gxz25yi5fznc3nnv2"))))
    (properties `((upstream-name . "pd.mu11ksuba")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mu11ksuba")
    (synopsis "Platform Design Info for The Manufacturer's Name Mu11KsubA")
    (description
     "Platform Design Info for The Manufacturer's Name Mu11@code{KsubA}.")
    (license license:artistic2.0)))

(define-public r-pd-mta-1-0
  (package
    (name "r-pd-mta-1-0")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mta.1.0" version
                              'annotation))
       (sha256
        (base32 "07vznamds5lc1xnpv7kjwcrsd5zq0ap4gk8a85xqb93fmcc9ypqi"))))
    (properties `((upstream-name . "pd.mta.1.0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mta.1.0")
    (synopsis "Platform Design Info for Affymetrix MTA-1_0")
    (description "Platform Design Info for Affymetrix MTA-1_0.")
    (license license:artistic2.0)))

(define-public r-pd-mouse430a-2
  (package
    (name "r-pd-mouse430a-2")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mouse430a.2" version
                              'annotation))
       (sha256
        (base32 "11ywfshqxjmwf9q4sj97zv3ylynfkswcfaqglj883p4719lhxmc3"))))
    (properties `((upstream-name . "pd.mouse430a.2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mouse430a.2")
    (synopsis "Platform Design Info for The Manufacturer's Name Mouse430A_2")
    (description
     "Platform Design Info for The Manufacturer's Name Mouse430A_2.")
    (license license:artistic2.0)))

(define-public r-pd-mouse430-2
  (package
    (name "r-pd-mouse430-2")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mouse430.2" version
                              'annotation))
       (sha256
        (base32 "1ix7vkjy175cxbsbs67z38dhszxjik6370j0jkfpcknms6bh1db3"))))
    (properties `((upstream-name . "pd.mouse430.2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mouse430.2")
    (synopsis "Platform Design Info for The Manufacturer's Name Mouse430_2")
    (description
     "Platform Design Info for The Manufacturer's Name Mouse430_2.")
    (license license:artistic2.0)))

(define-public r-pd-mogene-2-1-st
  (package
    (name "r-pd-mogene-2-1-st")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mogene.2.1.st" version
                              'annotation))
       (sha256
        (base32 "14qwcq6yyy2ayrqv8kr33chlpgw3vkgq8iwb3yycsh3x3wz40jb8"))))
    (properties `((upstream-name . "pd.mogene.2.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mogene.2.1.st")
    (synopsis "Platform Design Info for Affymetrix MoGene-2_1-st")
    (description "Platform Design Info for Affymetrix @code{MoGene-2_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-mogene-2-0-st
  (package
    (name "r-pd-mogene-2-0-st")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mogene.2.0.st" version
                              'annotation))
       (sha256
        (base32 "0205jk6x8r35bmma771q6km631jlppm4y72zy85bv87dv4adxci8"))))
    (properties `((upstream-name . "pd.mogene.2.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mogene.2.0.st")
    (synopsis "Platform Design Info for Affymetrix MoGene-2_0-st")
    (description "Platform Design Info for Affymetrix @code{MoGene-2_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-mogene-1-1-st-v1
  (package
    (name "r-pd-mogene-1-1-st-v1")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mogene.1.1.st.v1" version
                              'annotation))
       (sha256
        (base32 "13s7r8g29y56qbj2xm81r5kj65y2qcp5d24bakbhfcvz60wzljqf"))))
    (properties `((upstream-name . "pd.mogene.1.1.st.v1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mogene.1.1.st.v1")
    (synopsis "Platform Design Info for Affymetrix MoGene-1_1-st-v1")
    (description
     "Platform Design Info for Affymetrix @code{MoGene-1_1-st-v1}.")
    (license license:artistic2.0)))

(define-public r-pd-mogene-1-0-st-v1
  (package
    (name "r-pd-mogene-1-0-st-v1")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mogene.1.0.st.v1" version
                              'annotation))
       (sha256
        (base32 "1hmb8kf91jd9q6b4pxiwlaj6ajzmkv1c3xsszyps5cwv13pgdjix"))))
    (properties `((upstream-name . "pd.mogene.1.0.st.v1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mogene.1.0.st.v1")
    (synopsis "Platform Design Info for Affymetrix MoGene-1_0-st-v1")
    (description
     "Platform Design Info for Affymetrix @code{MoGene-1_0-st-v1}.")
    (license license:artistic2.0)))

(define-public r-pd-moex-1-0-st-v1
  (package
    (name "r-pd-moex-1-0-st-v1")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.moex.1.0.st.v1" version
                              'annotation))
       (sha256
        (base32 "13bqzbyqngbhj7yji568cc36fq0zw0bjaglfp2n9nnhdddd8b62x"))))
    (properties `((upstream-name . "pd.moex.1.0.st.v1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.moex.1.0.st.v1")
    (synopsis "Platform Design Info for Affymetrix MoEx-1_0-st-v1")
    (description "Platform Design Info for Affymetrix @code{MoEx-1_0-st-v1}.")
    (license license:artistic2.0)))

(define-public r-pd-moe430b
  (package
    (name "r-pd-moe430b")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.moe430b" version
                              'annotation))
       (sha256
        (base32 "1xas3ld65xp2g1cfkd1n4v3yvx3g0g221c3ag550k552v0alfbyd"))))
    (properties `((upstream-name . "pd.moe430b")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.moe430b")
    (synopsis "Platform Design Info for The Manufacturer's Name MOE430B")
    (description "Platform Design Info for The Manufacturer's Name MOE430B.")
    (license license:artistic2.0)))

(define-public r-pd-moe430a
  (package
    (name "r-pd-moe430a")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.moe430a" version
                              'annotation))
       (sha256
        (base32 "15qys3pm8nwkr385y8mj976k16as8r65lmzykm8cy0skl071i8wb"))))
    (properties `((upstream-name . "pd.moe430a")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.moe430a")
    (synopsis "Platform Design Info for The Manufacturer's Name MOE430A")
    (description "Platform Design Info for The Manufacturer's Name MOE430A.")
    (license license:artistic2.0)))

(define-public r-pd-mirna-4-0
  (package
    (name "r-pd-mirna-4-0")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mirna.4.0" version
                              'annotation))
       (sha256
        (base32 "000gqhcvlpydrpr61853q22x8gvzmlf1kp7w98lll5g1vvwkw1ad"))))
    (properties `((upstream-name . "pd.mirna.4.0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mirna.4.0")
    (synopsis "Platform Design Info for Affymetrix miRNA-4_0")
    (description "Platform Design Info for Affymetrix @code{miRNA-4_0}.")
    (license license:artistic2.0)))

(define-public r-pd-mirna-3-1
  (package
    (name "r-pd-mirna-3-1")
    (version "3.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mirna.3.1" version
                              'annotation))
       (sha256
        (base32 "0g8fjwhxmps1w5f7lvnv258qn2ipggs1ar4r810amqqxd0yd5ah2"))))
    (properties `((upstream-name . "pd.mirna.3.1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mirna.3.1")
    (synopsis "Platform Design Info for Affymetrix miRNA-3_1")
    (description "Platform Design Info for Affymetrix @code{miRNA-3_1}.")
    (license license:artistic2.0)))

(define-public r-pd-mirna-3-0
  (package
    (name "r-pd-mirna-3-0")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mirna.3.0" version
                              'annotation))
       (sha256
        (base32 "0awghps8nlisdj2anvs400dn1hwdi8iw6xlrw17qr70fznbihdsy"))))
    (properties `((upstream-name . "pd.mirna.3.0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mirna.3.0")
    (synopsis "Platform Design Info for Affymetrix miRNA-3_0")
    (description "Platform Design Info for Affymetrix @code{miRNA-3_0}.")
    (license license:artistic2.0)))

(define-public r-pd-mirna-2-0
  (package
    (name "r-pd-mirna-2-0")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mirna.2.0" version
                              'annotation))
       (sha256
        (base32 "12ynrrr0jrc0kl6s4pkn9fv3r3bh6wsbrfyywb5bvxf71n75wnqy"))))
    (properties `((upstream-name . "pd.mirna.2.0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mirna.2.0")
    (synopsis "Platform Design Info for Affymetrix miRNA-2_0")
    (description "Platform Design Info for Affymetrix @code{miRNA-2_0}.")
    (license license:artistic2.0)))

(define-public r-pd-mirna-1-0
  (package
    (name "r-pd-mirna-1-0")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mirna.1.0" version
                              'annotation))
       (sha256
        (base32 "0klkmrljgvkqvdlm07c47bl0jppbzz95ikxabfi8b3ajv78k6gn1"))))
    (properties `((upstream-name . "pd.mirna.1.0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mirna.1.0")
    (synopsis "Platform Design Info for The Manufacturer's Name miRNA-1_0")
    (description
     "Platform Design Info for The Manufacturer's Name @code{miRNA-1_0}.")
    (license license:artistic2.0)))

(define-public r-pd-mg-u74cv2
  (package
    (name "r-pd-mg-u74cv2")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mg.u74cv2" version
                              'annotation))
       (sha256
        (base32 "1s59s9ch1ynrmnsn5jl2b19phij4qamgcpfs3f5zhji6ip41lckj"))))
    (properties `((upstream-name . "pd.mg.u74cv2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mg.u74cv2")
    (synopsis "Platform Design Info for The Manufacturer's Name MG_U74Cv2")
    (description "Platform Design Info for The Manufacturer's Name MG_U74Cv2.")
    (license license:artistic2.0)))

(define-public r-pd-mg-u74c
  (package
    (name "r-pd-mg-u74c")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mg.u74c" version
                              'annotation))
       (sha256
        (base32 "13sq8jmwlqrci87bnl313dyqzy6v141r3fqzh1frl1w66ilw9chm"))))
    (properties `((upstream-name . "pd.mg.u74c")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mg.u74c")
    (synopsis "Platform Design Info for The Manufacturer's Name MG_U74C")
    (description "Platform Design Info for The Manufacturer's Name MG_U74C.")
    (license license:artistic2.0)))

(define-public r-pd-mg-u74bv2
  (package
    (name "r-pd-mg-u74bv2")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mg.u74bv2" version
                              'annotation))
       (sha256
        (base32 "0hxczlax8qnghp4f7d3ph2y5j3vz3k4iwl6lyw3sig51msl4q6sd"))))
    (properties `((upstream-name . "pd.mg.u74bv2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mg.u74bv2")
    (synopsis "Platform Design Info for The Manufacturer's Name MG_U74Bv2")
    (description "Platform Design Info for The Manufacturer's Name MG_U74Bv2.")
    (license license:artistic2.0)))

(define-public r-pd-mg-u74b
  (package
    (name "r-pd-mg-u74b")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mg.u74b" version
                              'annotation))
       (sha256
        (base32 "0yav9ghdk8y12bsqam2r0p4q3r1yymfwrz1kdg0l7qfzw3mn141d"))))
    (properties `((upstream-name . "pd.mg.u74b")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mg.u74b")
    (synopsis "Platform Design Info for The Manufacturer's Name MG_U74B")
    (description "Platform Design Info for The Manufacturer's Name MG_U74B.")
    (license license:artistic2.0)))

(define-public r-pd-mg-u74av2
  (package
    (name "r-pd-mg-u74av2")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mg.u74av2" version
                              'annotation))
       (sha256
        (base32 "08ym915fb26qbz2r9kzgf7znai4mc06lr59l1da0x02iaixagg32"))))
    (properties `((upstream-name . "pd.mg.u74av2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mg.u74av2")
    (synopsis "Platform Design Info for The Manufacturer's Name MG_U74Av2")
    (description "Platform Design Info for The Manufacturer's Name MG_U74Av2.")
    (license license:artistic2.0)))

(define-public r-pd-mg-u74a
  (package
    (name "r-pd-mg-u74a")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mg.u74a" version
                              'annotation))
       (sha256
        (base32 "1jji6g49icsxyam9qx3mbaspg24q0hjavi0w75k99m2ckmllc47c"))))
    (properties `((upstream-name . "pd.mg.u74a")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mg.u74a")
    (synopsis "Platform Design Info for The Manufacturer's Name MG_U74A")
    (description "Platform Design Info for The Manufacturer's Name MG_U74A.")
    (license license:artistic2.0)))

(define-public r-pd-medicago
  (package
    (name "r-pd-medicago")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.medicago" version
                              'annotation))
       (sha256
        (base32 "1wm81jr9d04yiyg0alj197fjigcvjhz2kvh8j6jw9yaawppr0c5p"))))
    (properties `((upstream-name . "pd.medicago")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.medicago")
    (synopsis "Platform Design Info for The Manufacturer's Name Medicago")
    (description "Platform Design Info for The Manufacturer's Name Medicago.")
    (license license:artistic2.0)))

(define-public r-pd-medgene-1-1-st
  (package
    (name "r-pd-medgene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.medgene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "1mlyv6qjcxj9q416pmjq36q0aqp5l47pkd557ayaqd7gm3ygikcq"))))
    (properties `((upstream-name . "pd.medgene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.medgene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix MedGene-1_1-st")
    (description "Platform Design Info for Affymetrix @code{MedGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-medgene-1-0-st
  (package
    (name "r-pd-medgene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.medgene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "0f5blbhlp160av6r37icjdq2lyrvip09r4yzxhfa2vlxpcm7i83m"))))
    (properties `((upstream-name . "pd.medgene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.medgene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix MedGene-1_0-st")
    (description "Platform Design Info for Affymetrix @code{MedGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-margene-1-1-st
  (package
    (name "r-pd-margene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.margene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "067jv9486win2kv563gr4vpc96lpl02zqd09cnma7ycd7l1nvj9s"))))
    (properties `((upstream-name . "pd.margene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.margene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix MarGene-1_1-st")
    (description "Platform Design Info for Affymetrix @code{MarGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-margene-1-0-st
  (package
    (name "r-pd-margene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.margene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "1s4l57hw511cnzj197jvvzqs8ymfbf14khxcv4llg55prxnvvnfc"))))
    (properties `((upstream-name . "pd.margene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.margene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix MarGene-1_0-st")
    (description "Platform Design Info for Affymetrix @code{MarGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-mapping250k-sty
  (package
    (name "r-pd-mapping250k-sty")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mapping250k.sty" version
                              'annotation))
       (sha256
        (base32 "1hpyijrkr6svxxhrdp6s4jjcvr44hhbrdhrzvnw5ywpykmbphryc"))))
    (properties `((upstream-name . "pd.mapping250k.sty")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mapping250k.sty")
    (synopsis "Platform Design Info for Affymetrix Mapping250K_Sty")
    (description "Platform Design Info for Affymetrix Mapping250K_Sty.")
    (license license:artistic2.0)))

(define-public r-pd-mapping250k-nsp
  (package
    (name "r-pd-mapping250k-nsp")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.mapping250k.nsp" version
                              'annotation))
       (sha256
        (base32 "10j8c18glhvg07zp6w84hlc6l3a3qkvcvfnq0blpjfdk3a2lndz7"))))
    (properties `((upstream-name . "pd.mapping250k.nsp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.mapping250k.nsp")
    (synopsis "Platform Design Info for Affymetrix Mapping250K_Nsp")
    (description "Platform Design Info for Affymetrix Mapping250K_Nsp.")
    (license license:artistic2.0)))

(define-public r-pd-maize
  (package
    (name "r-pd-maize")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.maize" version
                              'annotation))
       (sha256
        (base32 "02viqnqf02d75sbarxh1k76966yay5i6wwdx118s4c9nlr5q6aqg"))))
    (properties `((upstream-name . "pd.maize")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.maize")
    (synopsis "Platform Design Info for The Manufacturer's Name Maize")
    (description "Platform Design Info for The Manufacturer's Name Maize.")
    (license license:artistic2.0)))

(define-public r-pd-hugene-2-1-st
  (package
    (name "r-pd-hugene-2-1-st")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.hugene.2.1.st" version
                              'annotation))
       (sha256
        (base32 "07la78206cvilfm8l2fwrcyy3gpwnhn0p32ilv043ln9drka2r8h"))))
    (properties `((upstream-name . "pd.hugene.2.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.hugene.2.1.st")
    (synopsis "Platform Design Info for Affymetrix HuGene-2_1-st")
    (description "Platform Design Info for Affymetrix @code{HuGene-2_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-hugene-2-0-st
  (package
    (name "r-pd-hugene-2-0-st")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.hugene.2.0.st" version
                              'annotation))
       (sha256
        (base32 "02m5x9mrz4ca0w84ljmdpw7rnlzqbqdq0q5k4sg7izx99k5c8r59"))))
    (properties `((upstream-name . "pd.hugene.2.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.hugene.2.0.st")
    (synopsis "Platform Design Info for Affymetrix HuGene-2_0-st")
    (description "Platform Design Info for Affymetrix @code{HuGene-2_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-hugene-1-1-st-v1
  (package
    (name "r-pd-hugene-1-1-st-v1")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.hugene.1.1.st.v1" version
                              'annotation))
       (sha256
        (base32 "0bsvwr4h8j4niagnmf7d2jd714dqk4yzdhr664z6vpx6429s0rsw"))))
    (properties `((upstream-name . "pd.hugene.1.1.st.v1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.hugene.1.1.st.v1")
    (synopsis "Platform Design Info for Affymetrix HuGene-1_1-st-v1")
    (description
     "Platform Design Info for Affymetrix @code{HuGene-1_1-st-v1}.")
    (license license:artistic2.0)))

(define-public r-pd-hugene-1-0-st-v1
  (package
    (name "r-pd-hugene-1-0-st-v1")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.hugene.1.0.st.v1" version
                              'annotation))
       (sha256
        (base32 "1ikd6h7wnyxm11j0had2wcsxfbfrwdfw9605bvvdgd63dlvdv5dk"))))
    (properties `((upstream-name . "pd.hugene.1.0.st.v1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.hugene.1.0.st.v1")
    (synopsis "Platform Design Info for Affymetrix HuGene-1_0-st-v1")
    (description
     "Platform Design Info for Affymetrix @code{HuGene-1_0-st-v1}.")
    (license license:artistic2.0)))

(define-public r-pd-huex-1-0-st-v2
  (package
    (name "r-pd-huex-1-0-st-v2")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.huex.1.0.st.v2" version
                              'annotation))
       (sha256
        (base32 "1chlvjy1gvw5r8hfmkb34m3h7w2z4s5x9gsc50qbj84988k4gzga"))))
    (properties `((upstream-name . "pd.huex.1.0.st.v2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.huex.1.0.st.v2")
    (synopsis "Platform Design Info for Affymetrix HuEx-1_0-st-v2")
    (description "Platform Design Info for Affymetrix @code{HuEx-1_0-st-v2}.")
    (license license:artistic2.0)))

(define-public r-pd-hu6800
  (package
    (name "r-pd-hu6800")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.hu6800" version
                              'annotation))
       (sha256
        (base32 "07dj0avpx53kwaab9s126pn844nal9kn3h288n1m0kihir2mrjmv"))))
    (properties `((upstream-name . "pd.hu6800")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.hu6800")
    (synopsis "Platform Design Info for The Manufacturer's Name Hu6800")
    (description "Platform Design Info for The Manufacturer's Name Hu6800.")
    (license license:artistic2.0)))

(define-public r-pd-hta-2-0
  (package
    (name "r-pd-hta-2-0")
    (version "3.12.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.hta.2.0" version
                              'annotation))
       (sha256
        (base32 "004mm93wag59arzirws3cfqjv4whl8sbv558xxg7pj1ar026g4m3"))))
    (properties `((upstream-name . "pd.hta.2.0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.hta.2.0")
    (synopsis "Platform Design Info for Affymetrix HTA-2_0")
    (description "Platform Design Info for Affymetrix HTA-2_0.")
    (license license:artistic2.0)))

(define-public r-pd-ht-mg-430a
  (package
    (name "r-pd-ht-mg-430a")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.ht.mg.430a" version
                              'annotation))
       (sha256
        (base32 "10shsap47217p6zmb9fn86na7if965h45l2r787cisgyyn9n45mq"))))
    (properties `((upstream-name . "pd.ht.mg.430a")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.ht.mg.430a")
    (synopsis "Platform Design Info for The Manufacturer's Name HT_MG-430A")
    (description
     "Platform Design Info for The Manufacturer's Name HT_MG-430A.")
    (license license:artistic2.0)))

(define-public r-pd-ht-hg-u133a
  (package
    (name "r-pd-ht-hg-u133a")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.ht.hg.u133a" version
                              'annotation))
       (sha256
        (base32 "14bnnxsn02mpyynn8bvl8c47id9l2wfakngbvpq4h5yjy689jm1c"))))
    (properties `((upstream-name . "pd.ht.hg.u133a")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.ht.hg.u133a")
    (synopsis "Platform Design Info for The Manufacturer's Name HT_HG-U133A")
    (description
     "Platform Design Info for The Manufacturer's Name HT_HG-U133A.")
    (license license:artistic2.0)))

(define-public r-pd-ht-hg-u133-plus-pm
  (package
    (name "r-pd-ht-hg-u133-plus-pm")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.ht.hg.u133.plus.pm" version
                              'annotation))
       (sha256
        (base32 "1000f1d28yzc0kcdf380fkx3xlgla3kn4n9f2ddawzjb7igash92"))))
    (properties `((upstream-name . "pd.ht.hg.u133.plus.pm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.ht.hg.u133.plus.pm")
    (synopsis
     "Platform Design Info for The Manufacturer's Name HT_HG-U133_Plus_PM")
    (description
     "Platform Design Info for The Manufacturer's Name HT_HG-U133_Plus_PM.")
    (license license:artistic2.0)))

(define-public r-pd-hg18-60mer-expr
  (package
    (name "r-pd-hg18-60mer-expr")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.hg18.60mer.expr" version
                              'annotation))
       (sha256
        (base32 "1lsfsgsj6gyv0q509d0axr6g2yv226zxqh8f2n1hw0kfxwl27bm8"))))
    (properties `((upstream-name . "pd.hg18.60mer.expr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.hg18.60mer.expr")
    (synopsis "Platform Design Info for NimbleGen hg18_60mer_expr")
    (description "Platform Design Info for @code{NimbleGen} hg18_60mer_expr.")
    (license license:artistic2.0)))

(define-public r-pd-hg-u95e
  (package
    (name "r-pd-hg-u95e")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.hg.u95e" version
                              'annotation))
       (sha256
        (base32 "0cksi811m9fzjq5linlsarfswp3p7rdgks0js3chv91jr3v2z3a7"))))
    (properties `((upstream-name . "pd.hg.u95e")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.hg.u95e")
    (synopsis "Platform Design Info for The Manufacturer's Name HG_U95E")
    (description "Platform Design Info for The Manufacturer's Name HG_U95E.")
    (license license:artistic2.0)))

(define-public r-pd-hg-u95d
  (package
    (name "r-pd-hg-u95d")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.hg.u95d" version
                              'annotation))
       (sha256
        (base32 "0ygfx73b122b468zvr9lhw2vkr1aijasrazarqjqc8bjbfm4fybw"))))
    (properties `((upstream-name . "pd.hg.u95d")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.hg.u95d")
    (synopsis "Platform Design Info for The Manufacturer's Name HG_U95D")
    (description "Platform Design Info for The Manufacturer's Name HG_U95D.")
    (license license:artistic2.0)))

(define-public r-pd-hg-u95c
  (package
    (name "r-pd-hg-u95c")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.hg.u95c" version
                              'annotation))
       (sha256
        (base32 "0p9yrwjw75r5dg3z0pl4yr04agjpqv9rz3in2faw3pqawdzndihq"))))
    (properties `((upstream-name . "pd.hg.u95c")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.hg.u95c")
    (synopsis "Platform Design Info for The Manufacturer's Name HG_U95C")
    (description "Platform Design Info for The Manufacturer's Name HG_U95C.")
    (license license:artistic2.0)))

(define-public r-pd-hg-u95b
  (package
    (name "r-pd-hg-u95b")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.hg.u95b" version
                              'annotation))
       (sha256
        (base32 "0gyxh7nagya1hgh5vvwalxmhbqm9pii3l6h1mndvx2ib58msh49h"))))
    (properties `((upstream-name . "pd.hg.u95b")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.hg.u95b")
    (synopsis "Platform Design Info for The Manufacturer's Name HG_U95B")
    (description "Platform Design Info for The Manufacturer's Name HG_U95B.")
    (license license:artistic2.0)))

(define-public r-pd-hg-u95av2
  (package
    (name "r-pd-hg-u95av2")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.hg.u95av2" version
                              'annotation))
       (sha256
        (base32 "1l3y2bhjk67jwxvxwn5rngzn5c2dzk4lk24cm74f6px845qw5sk7"))))
    (properties `((upstream-name . "pd.hg.u95av2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.hg.u95av2")
    (synopsis "Platform Design Info for The Manufacturer's Name HG_U95Av2")
    (description "Platform Design Info for The Manufacturer's Name HG_U95Av2.")
    (license license:artistic2.0)))

(define-public r-pd-hg-u95a
  (package
    (name "r-pd-hg-u95a")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.hg.u95a" version
                              'annotation))
       (sha256
        (base32 "1c7d16im1xxs8v0ccn19klwv43qr6b4iw0k5hz9cl8m10jmyw49b"))))
    (properties `((upstream-name . "pd.hg.u95a")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.hg.u95a")
    (synopsis "Platform Design Info for The Manufacturer's Name HG_U95A")
    (description "Platform Design Info for The Manufacturer's Name HG_U95A.")
    (license license:artistic2.0)))

(define-public r-pd-hg-u219
  (package
    (name "r-pd-hg-u219")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.hg.u219" version
                              'annotation))
       (sha256
        (base32 "04kqvh5ilf83z2iwvfw7m8xsgjxy29vqayp1lgh38y48j0nn24dk"))))
    (properties `((upstream-name . "pd.hg.u219")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.hg.u219")
    (synopsis "Platform Design Info for The Manufacturer's Name HG-U219")
    (description "Platform Design Info for The Manufacturer's Name HG-U219.")
    (license license:artistic2.0)))

(define-public r-pd-hg-u133b
  (package
    (name "r-pd-hg-u133b")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.hg.u133b" version
                              'annotation))
       (sha256
        (base32 "1mafh53bj6g30869pdyl59040m2crqqbfcbdpdxfpigxpqr3rb4c"))))
    (properties `((upstream-name . "pd.hg.u133b")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.hg.u133b")
    (synopsis "Platform Design Info for The Manufacturer's Name HG-U133B")
    (description "Platform Design Info for The Manufacturer's Name HG-U133B.")
    (license license:artistic2.0)))

(define-public r-pd-hg-u133a-tag
  (package
    (name "r-pd-hg-u133a-tag")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.hg.u133a.tag" version
                              'annotation))
       (sha256
        (base32 "1ndjzcydshh5f3cnrav91hi47bx92z6rqliiwirhx2cqk8bvz5yp"))))
    (properties `((upstream-name . "pd.hg.u133a.tag")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.hg.u133a.tag")
    (synopsis "Platform Design Info for The Manufacturer's Name HG-U133A_tag")
    (description
     "Platform Design Info for The Manufacturer's Name HG-U133A_tag.")
    (license license:artistic2.0)))

(define-public r-pd-hg-u133a-2
  (package
    (name "r-pd-hg-u133a-2")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.hg.u133a.2" version
                              'annotation))
       (sha256
        (base32 "1rlh62r5zmxllkc9izr6a4yr2n88flfz1rybwvi90yggc788chxy"))))
    (properties `((upstream-name . "pd.hg.u133a.2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.hg.u133a.2")
    (synopsis "Platform Design Info for The Manufacturer's Name HG-U133A_2")
    (description
     "Platform Design Info for The Manufacturer's Name HG-U133A_2.")
    (license license:artistic2.0)))

(define-public r-pd-hg-u133a
  (package
    (name "r-pd-hg-u133a")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.hg.u133a" version
                              'annotation))
       (sha256
        (base32 "08bk5im2zkb1vif1i6bgfx068xcl5q5m0ac33zpscfdq4jashm7k"))))
    (properties `((upstream-name . "pd.hg.u133a")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.hg.u133a")
    (synopsis "Platform Design Info for The Manufacturer's Name HG-U133A")
    (description "Platform Design Info for The Manufacturer's Name HG-U133A.")
    (license license:artistic2.0)))

(define-public r-pd-hg-u133-plus-2
  (package
    (name "r-pd-hg-u133-plus-2")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.hg.u133.plus.2" version
                              'annotation))
       (sha256
        (base32 "02ip0mf24lw818ij8xgk7cylb5q1059jwvbdd2aynqqwy2mg31h0"))))
    (properties `((upstream-name . "pd.hg.u133.plus.2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.hg.u133.plus.2")
    (synopsis
     "Platform Design Info for The Manufacturer's Name HG-U133_Plus_2")
    (description
     "Platform Design Info for The Manufacturer's Name HG-U133_Plus_2.")
    (license license:artistic2.0)))

(define-public r-pd-hg-focus
  (package
    (name "r-pd-hg-focus")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.hg.focus" version
                              'annotation))
       (sha256
        (base32 "1qlkhxq76nb55c299g7x7x8wn8nx1mg4ra5b0faflsjirkh4b32s"))))
    (properties `((upstream-name . "pd.hg.focus")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.hg.focus")
    (synopsis "Platform Design Info for The Manufacturer's Name HG-Focus")
    (description "Platform Design Info for The Manufacturer's Name HG-Focus.")
    (license license:artistic2.0)))

(define-public r-pd-hc-g110
  (package
    (name "r-pd-hc-g110")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.hc.g110" version
                              'annotation))
       (sha256
        (base32 "014bb45m2pwwbz7aca6l6442188mkp5bsk46z7x18g0aa66p06hv"))))
    (properties `((upstream-name . "pd.hc.g110")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.hc.g110")
    (synopsis "Platform Design Info for The Manufacturer's Name HC_G110")
    (description "Platform Design Info for The Manufacturer's Name HC_G110.")
    (license license:artistic2.0)))

(define-public r-pd-guigene-1-1-st
  (package
    (name "r-pd-guigene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.guigene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "0p53kkhaa4d6ib32sfnwvs363zir227dmzxp8yqma0z4kz0djdna"))))
    (properties `((upstream-name . "pd.guigene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.guigene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix GuiGene-1_1-st")
    (description "Platform Design Info for Affymetrix @code{GuiGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-guigene-1-0-st
  (package
    (name "r-pd-guigene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.guigene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "1rq5gbdm6k0shv82zy7vrqxahzffh1xikrd3a6d1ai67n129bv6f"))))
    (properties `((upstream-name . "pd.guigene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.guigene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix GuiGene-1_0-st")
    (description "Platform Design Info for Affymetrix @code{GuiGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-genomewidesnp-6
  (package
    (name "r-pd-genomewidesnp-6")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.genomewidesnp.6" version
                              'annotation))
       (sha256
        (base32 "1f35nw987axlc5rsr97i7rwcy1dd8zjjj6jf4cg75y0la6rvhfw4"))))
    (properties `((upstream-name . "pd.genomewidesnp.6")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.genomewidesnp.6")
    (synopsis "Platform Design Info for Affymetrix GenomeWideSNP_6")
    (description "Platform Design Info for Affymetrix @code{GenomeWideSNP_6}.")
    (license license:artistic2.0)))

(define-public r-pd-genomewidesnp-5
  (package
    (name "r-pd-genomewidesnp-5")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.genomewidesnp.5" version
                              'annotation))
       (sha256
        (base32 "1kiqmcc07q2m7hkgqczqndk7frpwibpsi2c0ihr5av0vjrp118ak"))))
    (properties `((upstream-name . "pd.genomewidesnp.5")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.genomewidesnp.5")
    (synopsis "Platform Design Info for Affymetrix GenomeWideSNP_5")
    (description "Platform Design Info for Affymetrix @code{GenomeWideSNP_5}.")
    (license license:artistic2.0)))

(define-public r-pd-fingene-1-1-st
  (package
    (name "r-pd-fingene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.fingene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "1habbw9fvygailw73azfrvczgp6ap1az688vz8pklqq77vlqs1qz"))))
    (properties `((upstream-name . "pd.fingene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.fingene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix FinGene-1_1-st")
    (description "Platform Design Info for Affymetrix @code{FinGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-fingene-1-0-st
  (package
    (name "r-pd-fingene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.fingene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "0l19h920cghw65nqbh79s1rwijqdl7k84km0iv1fgx0kxhh28xa0"))))
    (properties `((upstream-name . "pd.fingene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.fingene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix FinGene-1_0-st")
    (description "Platform Design Info for Affymetrix @code{FinGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-felgene-1-1-st
  (package
    (name "r-pd-felgene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.felgene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "027cgqxfgmlkx64y6nm9h36ji781fkrnnrdxblh8h4jwjd5n36rj"))))
    (properties `((upstream-name . "pd.felgene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.felgene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix FelGene-1_1-st")
    (description "Platform Design Info for Affymetrix @code{FelGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-felgene-1-0-st
  (package
    (name "r-pd-felgene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.felgene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "1lf3lp3zjprfwni2nfdpkvj2j6y7hd7znmxqcgj46vccznc49hh6"))))
    (properties `((upstream-name . "pd.felgene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.felgene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix FelGene-1_0-st")
    (description "Platform Design Info for Affymetrix @code{FelGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-feinberg-mm8-me-hx1
  (package
    (name "r-pd-feinberg-mm8-me-hx1")
    (version "0.99.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.feinberg.mm8.me.hx1" version
                              'annotation))
       (sha256
        (base32 "1xk4rmpxjh9mwijwglzlycg7bk2zk599fk7xbnk114rj216y2jsm"))))
    (properties `((upstream-name . "pd.feinberg.mm8.me.hx1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.feinberg.mm8.me.hx1")
    (synopsis "Platform Design Info for NimbleGen feinberg_mm8_me_hx1")
    (description
     "Platform Design Info for @code{NimbleGen} feinberg_mm8_me_hx1.")
    (license license:artistic2.0)))

(define-public r-pd-feinberg-hg18-me-hx1
  (package
    (name "r-pd-feinberg-hg18-me-hx1")
    (version "0.99.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.feinberg.hg18.me.hx1" version
                              'annotation))
       (sha256
        (base32 "1k50khs7mrp1qy9z0whm5drwv59m8zn7v0zxhv26bpvmwbrnlhfg"))))
    (properties `((upstream-name . "pd.feinberg.hg18.me.hx1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.feinberg.hg18.me.hx1")
    (synopsis "Platform Design Info for NimbleGen feinberg_hg18_me_hx1")
    (description
     "Platform Design Info for @code{NimbleGen} feinberg_hg18_me_hx1.")
    (license license:artistic2.0)))

(define-public r-pd-equgene-1-1-st
  (package
    (name "r-pd-equgene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.equgene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "0migyzmrgqvvnkl8w61qv26hj5kjy720q4ipamdn99z9s4r8cxrn"))))
    (properties `((upstream-name . "pd.equgene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.equgene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix EquGene-1_1-st")
    (description "Platform Design Info for Affymetrix @code{EquGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-equgene-1-0-st
  (package
    (name "r-pd-equgene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.equgene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "01vcj6a6hm9j2fbhrz244sbig63j1jyxyg068q4hizpl9lpzaibd"))))
    (properties `((upstream-name . "pd.equgene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.equgene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix EquGene-1_0-st")
    (description "Platform Design Info for Affymetrix @code{EquGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-elegene-1-1-st
  (package
    (name "r-pd-elegene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.elegene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "18v3n3ss3rl2ksvjg1jk1w0mprhhxra55znixfcd8ikqsrdfj2a2"))))
    (properties `((upstream-name . "pd.elegene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.elegene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix EleGene-1_1-st")
    (description "Platform Design Info for Affymetrix @code{EleGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-elegene-1-0-st
  (package
    (name "r-pd-elegene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.elegene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "1if8gwvvk9jybsrcwr8sayg1czchpnlmysa9plrm50g7r2ki7m4l"))))
    (properties `((upstream-name . "pd.elegene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.elegene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix EleGene-1_0-st")
    (description "Platform Design Info for Affymetrix @code{EleGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-ecoli-asv2
  (package
    (name "r-pd-ecoli-asv2")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.ecoli.asv2" version
                              'annotation))
       (sha256
        (base32 "19pn7691cr0vakxlx0q0x3p1pfc0z8l5f14475bv2fr4djljhhma"))))
    (properties `((upstream-name . "pd.ecoli.asv2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.ecoli.asv2")
    (synopsis "Platform Design Info for The Manufacturer's Name Ecoli_ASv2")
    (description
     "Platform Design Info for The Manufacturer's Name Ecoli_ASv2.")
    (license license:artistic2.0)))

(define-public r-pd-ecoli
  (package
    (name "r-pd-ecoli")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.ecoli" version
                              'annotation))
       (sha256
        (base32 "0mi5i0cp5xz97pb3ic6qmwl3fp4byyddvas2npll4ngarl5wv5ag"))))
    (properties `((upstream-name . "pd.ecoli")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.ecoli")
    (synopsis "Platform Design Info for The Manufacturer's Name Ecoli")
    (description "Platform Design Info for The Manufacturer's Name Ecoli.")
    (license license:artistic2.0)))

(define-public r-pd-e-coli-2
  (package
    (name "r-pd-e-coli-2")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.e.coli.2" version
                              'annotation))
       (sha256
        (base32 "1nny0w0adg433n1i20q0jdmi5yy1anpa91dgrklpvxyxbr5902vz"))))
    (properties `((upstream-name . "pd.e.coli.2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.e.coli.2")
    (synopsis "Platform Design Info for The Manufacturer's Name E_coli_2")
    (description "Platform Design Info for The Manufacturer's Name E_coli_2.")
    (license license:artistic2.0)))

(define-public r-pd-drosophila-2
  (package
    (name "r-pd-drosophila-2")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.drosophila.2" version
                              'annotation))
       (sha256
        (base32 "0rr3l6203nfzhz21wps7dfcifvzmbnixcr2piv5jdfh7birj23aa"))))
    (properties `((upstream-name . "pd.drosophila.2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.drosophila.2")
    (synopsis "Platform Design Info for The Manufacturer's Name Drosophila_2")
    (description
     "Platform Design Info for The Manufacturer's Name Drosophila_2.")
    (license license:artistic2.0)))

(define-public r-pd-drosgenome1
  (package
    (name "r-pd-drosgenome1")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.drosgenome1" version
                              'annotation))
       (sha256
        (base32 "1cp3fs2g88yv50gkd6m769idlj7kci2g82wafn17ci65g64q0g05"))))
    (properties `((upstream-name . "pd.drosgenome1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.drosgenome1")
    (synopsis "Platform Design Info for The Manufacturer's Name DrosGenome1")
    (description
     "Platform Design Info for The Manufacturer's Name @code{DrosGenome1}.")
    (license license:artistic2.0)))

(define-public r-pd-drogene-1-1-st
  (package
    (name "r-pd-drogene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.drogene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "0yjxjzmcx2hh6rm15p9d36vfj77fwmd7q2kbjk8h7hbpkm72ssdf"))))
    (properties `((upstream-name . "pd.drogene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.drogene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix DroGene-1_1-st")
    (description "Platform Design Info for Affymetrix @code{DroGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-drogene-1-0-st
  (package
    (name "r-pd-drogene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.drogene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "1zp85q3a2bayr0q5r0ij62kfypzngcz9v791xsf9n9k7nx6714fi"))))
    (properties `((upstream-name . "pd.drogene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.drogene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix DroGene-1_0-st")
    (description "Platform Design Info for Affymetrix @code{DroGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-cytogenetics-array
  (package
    (name "r-pd-cytogenetics-array")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.cytogenetics.array" version
                              'annotation))
       (sha256
        (base32 "0gd7q64zfxda9irdmmr92iqxlswaj5v4pklsfm96xkn8lxq34dlb"))))
    (properties `((upstream-name . "pd.cytogenetics.array")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.cytogenetics.array")
    (synopsis "Platform Design Info for Affymetrix Cytogenetics_Array")
    (description "Platform Design Info for Affymetrix Cytogenetics_Array.")
    (license license:artistic2.0)))

(define-public r-pd-cyrgene-1-1-st
  (package
    (name "r-pd-cyrgene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.cyrgene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "0p7j8ygyx8f5aqyy847rfcc35hrkcavi1700af971jjrha3gllc0"))))
    (properties `((upstream-name . "pd.cyrgene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.cyrgene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix CyRGene-1_1-st")
    (description "Platform Design Info for Affymetrix @code{CyRGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-cyrgene-1-0-st
  (package
    (name "r-pd-cyrgene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.cyrgene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "1s7rrwcmaar230y90hhvrx3wxlp228j88pwdh2glap2pn3d3rlnd"))))
    (properties `((upstream-name . "pd.cyrgene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.cyrgene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix CyRGene-1_0-st")
    (description "Platform Design Info for Affymetrix @code{CyRGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-cyngene-1-1-st
  (package
    (name "r-pd-cyngene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.cyngene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "1kicrk0n2lik32q9nkpfy8ydh8klsy6i5cy6m2grddv80g5hc6n4"))))
    (properties `((upstream-name . "pd.cyngene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.cyngene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix CynGene-1_1-st")
    (description "Platform Design Info for Affymetrix @code{CynGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-cyngene-1-0-st
  (package
    (name "r-pd-cyngene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.cyngene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "1xkv8m346x1zrnp4bhbjk2xwfq5jkbprbh417bya8swqvcyv3zbj"))))
    (properties `((upstream-name . "pd.cyngene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.cyngene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix CynGene-1_0-st")
    (description "Platform Design Info for Affymetrix @code{CynGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-cotton
  (package
    (name "r-pd-cotton")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.cotton" version
                              'annotation))
       (sha256
        (base32 "1h71klvndi32j7hb7cy2w6asf7lb1xhs5glxajnd30y7ksigba7l"))))
    (properties `((upstream-name . "pd.cotton")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.cotton")
    (synopsis "Platform Design Info for The Manufacturer's Name Cotton")
    (description "Platform Design Info for The Manufacturer's Name Cotton.")
    (license license:artistic2.0)))

(define-public r-pd-clariom-s-rat-ht
  (package
    (name "r-pd-clariom-s-rat-ht")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.clariom.s.rat.ht" version
                              'annotation))
       (sha256
        (base32 "17fk4qiznh2ks7r4mzbv1gnpjca39n6rzshb5dw5n73rbnd24160"))))
    (properties `((upstream-name . "pd.clariom.s.rat.ht")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.clariom.s.rat.ht")
    (synopsis "Platform Design Info for Affymetrix Clariom_S_Rat_HT")
    (description "Platform Design Info for Affymetrix Clariom_S_Rat_HT.")
    (license license:artistic2.0)))

(define-public r-pd-clariom-s-rat
  (package
    (name "r-pd-clariom-s-rat")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.clariom.s.rat" version
                              'annotation))
       (sha256
        (base32 "1bx0vipcw3vjpz59h5820yanwy7b8mxb8bkgwp3n58vm24x7l304"))))
    (properties `((upstream-name . "pd.clariom.s.rat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.clariom.s.rat")
    (synopsis "Platform Design Info for Affymetrix Clariom_S_Rat")
    (description "Platform Design Info for Affymetrix Clariom_S_Rat.")
    (license license:artistic2.0)))

(define-public r-pd-clariom-s-mouse-ht
  (package
    (name "r-pd-clariom-s-mouse-ht")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.clariom.s.mouse.ht" version
                              'annotation))
       (sha256
        (base32 "1ka9mganvymml306yh196rqan333ykrmqp9dfl4xs9mz57p405kk"))))
    (properties `((upstream-name . "pd.clariom.s.mouse.ht")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.clariom.s.mouse.ht")
    (synopsis "Platform Design Info for Affymetrix Clariom_S_Mouse_HT")
    (description "Platform Design Info for Affymetrix Clariom_S_Mouse_HT.")
    (license license:artistic2.0)))

(define-public r-pd-clariom-s-mouse
  (package
    (name "r-pd-clariom-s-mouse")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.clariom.s.mouse" version
                              'annotation))
       (sha256
        (base32 "15fc25840lnhv0rlxc98akda1gis1s4xn61ycvymjii3lgx8hwpk"))))
    (properties `((upstream-name . "pd.clariom.s.mouse")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.clariom.s.mouse")
    (synopsis "Platform Design Info for Affymetrix Clariom_S_Mouse")
    (description "Platform Design Info for Affymetrix Clariom_S_Mouse.")
    (license license:artistic2.0)))

(define-public r-pd-clariom-s-human-ht
  (package
    (name "r-pd-clariom-s-human-ht")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.clariom.s.human.ht" version
                              'annotation))
       (sha256
        (base32 "08fzm8xp6wa4x03vqb28dvlz3hiwv2q5n5h9m2np0g4g40hbhg89"))))
    (properties `((upstream-name . "pd.clariom.s.human.ht")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.clariom.s.human.ht")
    (synopsis "Platform Design Info for Affymetrix Clariom_S_Human_HT")
    (description "Platform Design Info for Affymetrix Clariom_S_Human_HT.")
    (license license:artistic2.0)))

(define-public r-pd-clariom-s-human
  (package
    (name "r-pd-clariom-s-human")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.clariom.s.human" version
                              'annotation))
       (sha256
        (base32 "0a68mnwv735mi9k9qxs2vv4hnh76yg1n7jjyaw34g8m7405yjxxp"))))
    (properties `((upstream-name . "pd.clariom.s.human")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.clariom.s.human")
    (synopsis "Platform Design Info for Affymetrix Clariom_S_Human")
    (description "Platform Design Info for Affymetrix Clariom_S_Human.")
    (license license:artistic2.0)))

(define-public r-pd-clariom-d-human
  (package
    (name "r-pd-clariom-d-human")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.clariom.d.human" version
                              'annotation))
       (sha256
        (base32 "11q4s4q07fpkl5wpmhhjfkrp4l8i8gy1i8wc80aar84lp1261vvx"))))
    (properties `((upstream-name . "pd.clariom.d.human")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.clariom.d.human")
    (synopsis "Platform Design Info for Affymetrix Clariom_D_Human")
    (description "Platform Design Info for Affymetrix Clariom_D_Human.")
    (license license:artistic2.0)))

(define-public r-pd-citrus
  (package
    (name "r-pd-citrus")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.citrus" version
                              'annotation))
       (sha256
        (base32 "1792gsxdr24264n121zvspdq39ac3khaghv5j66rn2nzqds75qch"))))
    (properties `((upstream-name . "pd.citrus")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.citrus")
    (synopsis "Platform Design Info for The Manufacturer's Name Citrus")
    (description "Platform Design Info for The Manufacturer's Name Citrus.")
    (license license:artistic2.0)))

(define-public r-pd-chogene-2-1-st
  (package
    (name "r-pd-chogene-2-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.chogene.2.1.st" version
                              'annotation))
       (sha256
        (base32 "0d9pslimh0w37yvvfgqljbr2z5arjn6kx0wnjhp19gcch44jvkr2"))))
    (properties `((upstream-name . "pd.chogene.2.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.chogene.2.1.st")
    (synopsis "Platform Design Info for Affymetrix CHOGene-2_1-st")
    (description "Platform Design Info for Affymetrix CHOGene-2_1-st.")
    (license license:artistic2.0)))

(define-public r-pd-chogene-2-0-st
  (package
    (name "r-pd-chogene-2-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.chogene.2.0.st" version
                              'annotation))
       (sha256
        (base32 "0pljjz466y2aav9045qgr5hbrv7alyl3gw3br4a8knbijk6fbw15"))))
    (properties `((upstream-name . "pd.chogene.2.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.chogene.2.0.st")
    (synopsis "Platform Design Info for Affymetrix CHOGene-2_0-st")
    (description "Platform Design Info for Affymetrix CHOGene-2_0-st.")
    (license license:artistic2.0)))

(define-public r-pd-chigene-1-1-st
  (package
    (name "r-pd-chigene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.chigene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "013baf38h35fsxq0f32v00rizik8iq76jm1s8azkicv90bvw5g8k"))))
    (properties `((upstream-name . "pd.chigene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.chigene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix ChiGene-1_1-st")
    (description "Platform Design Info for Affymetrix @code{ChiGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-chigene-1-0-st
  (package
    (name "r-pd-chigene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.chigene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "0smfgx1brfla96ijsv3a3ljcn02kpbk6sczgp06dik3g0k54788h"))))
    (properties `((upstream-name . "pd.chigene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.chigene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix ChiGene-1_0-st")
    (description "Platform Design Info for Affymetrix @code{ChiGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-chicken
  (package
    (name "r-pd-chicken")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.chicken" version
                              'annotation))
       (sha256
        (base32 "1alkhr297ar6iv7nrjxnlhmq3xvjzpl46mdckkbxw13w73vj6p32"))))
    (properties `((upstream-name . "pd.chicken")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.chicken")
    (synopsis "Platform Design Info for The Manufacturer's Name Chicken")
    (description "Platform Design Info for The Manufacturer's Name Chicken.")
    (license license:artistic2.0)))

(define-public r-pd-charm-hg18-example
  (package
    (name "r-pd-charm-hg18-example")
    (version "0.99.4")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.charm.hg18.example" version
                              'annotation))
       (sha256
        (base32 "0nqv3h4zp83vp7q49n956920x5hdfcbw4z3hlvmqx8dixbgr1jrg"))))
    (properties `((upstream-name . "pd.charm.hg18.example")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.charm.hg18.example")
    (synopsis "Platform Design Info for NimbleGen charm_hg18_example")
    (description
     "Platform Design Info for @code{NimbleGen} charm_hg18_example.")
    (license license:artistic2.0)))

(define-public r-pd-celegans
  (package
    (name "r-pd-celegans")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.celegans" version
                              'annotation))
       (sha256
        (base32 "08byc5xvnbfdlikv9118k52pk37br4k8hn86xypkrmbz67fzlzpd"))))
    (properties `((upstream-name . "pd.celegans")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.celegans")
    (synopsis "Platform Design Info for The Manufacturer's Name Celegans")
    (description "Platform Design Info for The Manufacturer's Name Celegans.")
    (license license:artistic2.0)))

(define-public r-pd-canine-2
  (package
    (name "r-pd-canine-2")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.canine.2" version
                              'annotation))
       (sha256
        (base32 "1dx914yyq6ry88d6fipsxsvp41pgcgllznpwsqqm2xa99y85ka5y"))))
    (properties `((upstream-name . "pd.canine.2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.canine.2")
    (synopsis "Platform Design Info for The Manufacturer's Name Canine_2")
    (description "Platform Design Info for The Manufacturer's Name Canine_2.")
    (license license:artistic2.0)))

(define-public r-pd-canine
  (package
    (name "r-pd-canine")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.canine" version
                              'annotation))
       (sha256
        (base32 "0xpisxv7c990w44gd5g2iwfzqi3618xa3mdps69z2j4bfrcm37vq"))))
    (properties `((upstream-name . "pd.canine")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.canine")
    (synopsis "Platform Design Info for The Manufacturer's Name Canine")
    (description "Platform Design Info for The Manufacturer's Name Canine.")
    (license license:artistic2.0)))

(define-public r-pd-cangene-1-1-st
  (package
    (name "r-pd-cangene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.cangene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "0pgw1424rvg3k9m3z6ffiyfj91i930dx2slqd15bnvc9hrr75094"))))
    (properties `((upstream-name . "pd.cangene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.cangene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix CanGene-1_1-st")
    (description "Platform Design Info for Affymetrix @code{CanGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-cangene-1-0-st
  (package
    (name "r-pd-cangene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.cangene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "0dcwy6gnlj51hkc2gsv6fdq02vczci4z37f3iy1n8zkvz5b4yw6c"))))
    (properties `((upstream-name . "pd.cangene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.cangene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix CanGene-1_0-st")
    (description "Platform Design Info for Affymetrix @code{CanGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-bsubtilis
  (package
    (name "r-pd-bsubtilis")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.bsubtilis" version
                              'annotation))
       (sha256
        (base32 "07x4dss0zp3p315q38bi7xarycav2hr44x7jb1jx4dypr0jh98mh"))))
    (properties `((upstream-name . "pd.bsubtilis")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.bsubtilis")
    (synopsis "Platform Design Info for The Manufacturer's Name Bsubtilis")
    (description "Platform Design Info for The Manufacturer's Name Bsubtilis.")
    (license license:artistic2.0)))

(define-public r-pd-bovine
  (package
    (name "r-pd-bovine")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.bovine" version
                              'annotation))
       (sha256
        (base32 "1g03za5jc8lz21wpx1h2rcxdwsx7ddmmnyflz46z35ginzy41g7h"))))
    (properties `((upstream-name . "pd.bovine")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.bovine")
    (synopsis "Platform Design Info for The Manufacturer's Name Bovine")
    (description "Platform Design Info for The Manufacturer's Name Bovine.")
    (license license:artistic2.0)))

(define-public r-pd-bovgene-1-1-st
  (package
    (name "r-pd-bovgene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.bovgene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "0npjm9rpcwj5j8sh1mdr5j1fz7dbwrqvjh2jx69fpslry69i6daq"))))
    (properties `((upstream-name . "pd.bovgene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.bovgene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix BovGene-1_1-st")
    (description "Platform Design Info for Affymetrix @code{BovGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-bovgene-1-0-st
  (package
    (name "r-pd-bovgene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.bovgene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "00ys19pdc7zgprfrhmk0pzfb5q96qy0vqxi2a6g28pxwf3367b30"))))
    (properties `((upstream-name . "pd.bovgene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.bovgene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix BovGene-1_0-st")
    (description "Platform Design Info for Affymetrix @code{BovGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-barley1
  (package
    (name "r-pd-barley1")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.barley1" version
                              'annotation))
       (sha256
        (base32 "0mha6w2zh7gi4y7ngkh84jaff50h8l9a0q9dwc8a00m5npkpkv4g"))))
    (properties `((upstream-name . "pd.barley1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.barley1")
    (synopsis "Platform Design Info for The Manufacturer's Name Barley1")
    (description "Platform Design Info for The Manufacturer's Name Barley1.")
    (license license:artistic2.0)))

(define-public r-pd-ath1-121501
  (package
    (name "r-pd-ath1-121501")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.ath1.121501" version
                              'annotation))
       (sha256
        (base32 "0j83s6402xrggnlnqjyphy577by9w1ncvf1az4immzaixdamaaxc"))))
    (properties `((upstream-name . "pd.ath1.121501")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.ath1.121501")
    (synopsis "Platform Design Info for The Manufacturer's Name ATH1-121501")
    (description
     "Platform Design Info for The Manufacturer's Name ATH1-121501.")
    (license license:artistic2.0)))

(define-public r-pd-atdschip-tiling
  (package
    (name "r-pd-atdschip-tiling")
    (version "0.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.atdschip.tiling" version
                              'experiment))
       (sha256
        (base32 "1h92qkdbhk11qh8286zczrk00158yxjny4ya053dxcbg7wrzyv1s"))))
    (properties `((upstream-name . "pd.atdschip.tiling")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.atdschip.tiling")
    (synopsis "Platform Design Info for Affymetrix Atdschip_tiling")
    (description "Platform Design Info for Affymetrix Atdschip_tiling.")
    (license license:artistic2.0)))

(define-public r-pd-aragene-1-1-st
  (package
    (name "r-pd-aragene-1-1-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.aragene.1.1.st" version
                              'annotation))
       (sha256
        (base32 "105qfxg8p9z0bzffm6zg16c5f6nnv5hddlpcxs0kp3daddap8h5s"))))
    (properties `((upstream-name . "pd.aragene.1.1.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.aragene.1.1.st")
    (synopsis "Platform Design Info for Affymetrix AraGene-1_1-st")
    (description "Platform Design Info for Affymetrix @code{AraGene-1_1-st}.")
    (license license:artistic2.0)))

(define-public r-pd-aragene-1-0-st
  (package
    (name "r-pd-aragene-1-0-st")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.aragene.1.0.st" version
                              'annotation))
       (sha256
        (base32 "0255bgsqz8fflnlnxw77wvv6rky46n3pcryk9yhw7nfx0cq19v4r"))))
    (properties `((upstream-name . "pd.aragene.1.0.st")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.aragene.1.0.st")
    (synopsis "Platform Design Info for Affymetrix AraGene-1_0-st")
    (description "Platform Design Info for Affymetrix @code{AraGene-1_0-st}.")
    (license license:artistic2.0)))

(define-public r-pd-ag
  (package
    (name "r-pd-ag")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.ag" version
                              'annotation))
       (sha256
        (base32 "0kh7ridgihqpibazpxpf9y8qiznxm4nng39701abamadxb5r6qmq"))))
    (properties `((upstream-name . "pd.ag")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/pd.ag")
    (synopsis "Platform Design Info for The Manufacturer's Name AG")
    (description "Platform Design Info for The Manufacturer's Name AG.")
    (license license:artistic2.0)))

(define-public r-pd-2006-10-31-rn34-refseq-promoter
  (package
    (name "r-pd-2006-10-31-rn34-refseq-promoter")
    (version "0.99.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.2006.10.31.rn34.refseq.promoter" version
                              'annotation))
       (sha256
        (base32 "0v0fa1hn5bwa15vg31dar2x0xfki0xby6qf5p1a0ivrx3pnvbsrl"))))
    (properties `((upstream-name . "pd.2006.10.31.rn34.refseq.promoter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page
     "https://bioconductor.org/packages/pd.2006.10.31.rn34.refseq.promoter")
    (synopsis
     "Platform Design Info for NimbleGen 2006-10-31_rn34_refseq_promoter")
    (description
     "Platform Design Info for @code{NimbleGen} 2006-10-31_rn34_refseq_promoter.")
    (license license:artistic2.0)))

(define-public r-pd-2006-07-18-mm8-refseq-promoter
  (package
    (name "r-pd-2006-07-18-mm8-refseq-promoter")
    (version "0.99.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.2006.07.18.mm8.refseq.promoter" version
                              'annotation))
       (sha256
        (base32 "14cm7z1y7rsk5m2zazg27wvjabckb9ifwa1g091ckwn1jfaf7aqn"))))
    (properties `((upstream-name . "pd.2006.07.18.mm8.refseq.promoter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page
     "https://bioconductor.org/packages/pd.2006.07.18.mm8.refseq.promoter")
    (synopsis
     "Platform Design Info for NimbleGen 2006-07-18_mm8_refseq_promoter")
    (description
     "Platform Design Info for @code{NimbleGen} 2006-07-18_mm8_refseq_promoter.")
    (license license:artistic2.0)))

(define-public r-pd-2006-07-18-hg18-refseq-promoter
  (package
    (name "r-pd-2006-07-18-hg18-refseq-promoter")
    (version "1.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.2006.07.18.hg18.refseq.promoter" version
                              'annotation))
       (sha256
        (base32 "09593qkh3jqlgxlqrpl3gla3y1kcshnzlq6nf10xhlps0qdlskhx"))))
    (properties `((upstream-name . "pd.2006.07.18.hg18.refseq.promoter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page
     "https://bioconductor.org/packages/pd.2006.07.18.hg18.refseq.promoter")
    (synopsis
     "Platform Design Info for NimbleGen 2006-07-18_hg18_refseq_promoter")
    (description
     "Platform Design Info for @code{NimbleGen} 2006-07-18_hg18_refseq_promoter.")
    (license license:artistic2.0)))

(define-public r-pd-081229-hg18-promoter-medip-hx1
  (package
    (name "r-pd-081229-hg18-promoter-medip-hx1")
    (version "0.99.4")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pd.081229.hg18.promoter.medip.hx1" version
                              'annotation))
       (sha256
        (base32 "1h4925dmw0vfsnhllg55gswq3sxfmx9rcjzifdvgs9y27399psrr"))))
    (properties `((upstream-name . "pd.081229.hg18.promoter.medip.hx1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings))
    (home-page
     "https://bioconductor.org/packages/pd.081229.hg18.promoter.medip.hx1")
    (synopsis
     "Platform Design Info for NimbleGen 081229_hg18_promoter_medip_hx1")
    (description
     "Platform Design Info for @code{NimbleGen} 081229_hg18_promoter_medip_hx1.")
    (license license:artistic2.0)))

(define-public r-pchicdata
  (package
    (name "r-pchicdata")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PCHiCdata" version
                              'experiment))
       (sha256
        (base32 "110b8ss4mfh9gvhbkvkwxhsjx82wzdk159b76643id9gwrhvick6"))))
    (properties `((upstream-name . "PCHiCdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-chicago))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PCHiCdata")
    (synopsis "Promoter Capture Hi-C data")
    (description
     "Subsets of Promoter Capture Hi-C data conveniently packaged for Chicago users.
Data includes interactions detected for chromosomes 20 and 21 in GM12878 cells
and for chromosomes 18 and 19 in @code{mESC}.")
    (license license:artistic2.0)))

(define-public r-pcan
  (package
    (name "r-pcan")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PCAN" version))
       (sha256
        (base32 "1g92h79fcy6sh6vbrk8as2pk16dxnmhb37g87h97bsrnpmwl2v8r"))))
    (properties `((upstream-name . "PCAN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PCAN")
    (synopsis "Phenotype Consensus ANalysis (PCAN)")
    (description
     "Phenotypes comparison based on a pathway consensus approach.  Assess the
relationship between candidate genes and a set of phenotypes based on additional
genes related to the candidate (e.g. Pathways or network neighbors).")
    (license (license:fsdg-compatible "CC BY-NC-ND 4.0"))))

(define-public r-pathwaypca
  (package
    (name "r-pathwaypca")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pathwayPCA" version))
       (sha256
        (base32 "0r345sxbxak67f3qgv78vnrcky8lv0fypr2cppqa3bc9sybqvg00"))))
    (properties `((upstream-name . "pathwayPCA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-lars))
    (native-inputs (list r-knitr))
    (home-page "<https://gabrielodom.github.io/pathwayPCA/>")
    (synopsis
     "Integrative Pathway Analysis with Modern PCA Methodology and Gene Selection")
    (description
     "@code{pathwayPCA} is an integrative analysis tool that implements the principal
component analysis (PCA) based pathway analysis approaches described in Chen et
al. (2008), Chen et al. (2010), and Chen (2011). @code{pathwayPCA} allows users
to: (1) Test pathway association with binary, continuous, or survival
phenotypes. (2) Extract relevant genes in the pathways using the @code{SuperPCA}
and AES-PCA approaches. (3) Compute principal components (PCs) based on the
selected genes.  These estimated latent variables represent pathway activities
for individual subjects, which can then be used to perform integrative pathway
analysis, such as multi-omics analysis. (4) Extract relevant genes that drive
pathway significance as well as data corresponding to these relevant genes for
additional in-depth analysis. (5) Perform analyses with enhanced computational
efficiency with parallel computing and enhanced data safety with S4-class data
objects. (6) Analyze studies with complex experimental designs, with multiple
covariates, and with interaction effects, e.g., testing whether pathway
association with clinical phenotype is different between male and female
subjects.  Citations: Chen et al. (2008)
<https://doi.org/10.1093/bioinformatics/btn458>; Chen et al. (2010)
<https://doi.org/10.1002/gepi.20532>; and Chen (2011)
<https://doi.org/10.2202/1544-6115.1697>.")
    (license license:gpl3)))

(define-public r-pathrender
  (package
    (name "r-pathrender")
    (version "1.74.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pathRender" version))
       (sha256
        (base32 "00nmvykh3s5lq6n7ggjbz4qisbpbf9lj76fbzabkblnb5xcbsvx4"))))
    (properties `((upstream-name . "pathRender")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rgraphviz r-rcolorbrewer r-graph r-cmap
                             r-annotationdbi))
    (home-page "http://www.bioconductor.org")
    (synopsis "Render molecular pathways")
    (description
     "build graphs from pathway databases, render them by Rgraphviz.")
    (license license:lgpl2.0+)))

(define-public r-pathostat
  (package
    (name "r-pathostat")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PathoStat" version))
       (sha256
        (base32 "1n855cc9wbshqg8zp6bg1c3dqx3hbqsgxx65wdgl8d0xr4jp0r3b"))))
    (properties `((upstream-name . "PathoStat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml
                             r-webshot
                             r-vegan
                             r-tidyr
                             r-shinyjs
                             r-shiny
                             r-scales
                             r-rocr
                             r-reshape2
                             r-rentrez
                             r-rcolorbrewer
                             r-plyr
                             r-plotly
                             r-phyloseq
                             r-matrixstats
                             r-limma
                             r-knitr
                             r-gmodels
                             r-glmnet
                             r-ggplot2
                             r-edger
                             r-dt
                             r-dplyr
                             r-devtools
                             r-deseq2
                             r-corpcor
                             r-complexheatmap
                             r-biocstyle
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mani2012/PathoStat")
    (synopsis "PathoStat Statistical Microbiome Analysis Package")
    (description
     "The purpose of this package is to perform Statistical Microbiome Analysis on
metagenomics results from sequencing data samples.  In particular, it supports
analyses on the @code{PathoScope} generated report files. @code{PathoStat}
provides various functionalities including Relative Abundance charts, Diversity
estimates and plots, tests of Differential Abundance, Time Series visualization,
and Core OTU analysis.")
    (license license:gpl2+)))

(define-public r-pathnetdata
  (package
    (name "r-pathnetdata")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PathNetData" version
                              'experiment))
       (sha256
        (base32 "1wix226lja5mhxzqargmpa3vnyjxs54jvia71jq438pp4ssrsjzq"))))
    (properties `((upstream-name . "PathNetData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/PathNetData")
    (synopsis "Experimental data for the PathNet package")
    (description
     "This package contains the data employed in the vignette of the @code{PathNet}
package.  These data belong to the following publication: @code{PathNet}: A tool
for pathway analysis using topological information.  Dutta B, Wallqvist A, and
Reifman J., Source Code for Biology and Medicine 2012 Sep 24;7(1):10.")
    (license license:gpl3)))

(define-public r-pathnet
  (package
    (name "r-pathnet")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PathNet" version))
       (sha256
        (base32 "0y60fw08i2kh15h2vh264yy7njyv6vvppxwic91631z992w3rw31"))))
    (properties `((upstream-name . "PathNet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/PathNet")
    (synopsis
     "An R package for pathway analysis using topological information")
    (description
     "@code{PathNet} uses topological information present in pathways and differential
expression levels of genes (obtained from microarray experiment) to identify
pathways that are 1) significantly enriched and 2) associated with each other in
the context of differential expression.  The algorithm is described in:
@code{PathNet}: A tool for pathway analysis using topological information.
Dutta B, Wallqvist A, and Reifman J. Source Code for Biology and Medicine 2012
Sep 24;7(1):10.")
    (license license:gpl3)))

(define-public r-pathlinkr
  (package
    (name "r-pathlinkr")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pathlinkR" version))
       (sha256
        (base32 "0jmxmwfdz7gvqgvanr5pxp9da2y9jpaq1n7gxyfgy5g5d0bfbahq"))))
    (properties `((upstream-name . "pathlinkR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-visnetwork
                             r-vegan
                             r-tidyr
                             r-tidygraph
                             r-tibble
                             r-stringr
                             r-sigora
                             r-purrr
                             r-igraph
                             r-ggrepel
                             r-ggraph
                             r-ggpubr
                             r-ggplot2
                             r-ggforce
                             r-fgsea
                             r-dplyr
                             r-complexheatmap
                             r-clusterprofiler
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hancockinformatics/pathlinkR")
    (synopsis "Analyze and interpret RNA-Seq results")
    (description
     "@code{pathlinkR} is an R package designed to facilitate analysis of RNA-Seq
results.  Specifically, our aim with @code{pathlinkR} was to provide a number of
tools which take a list of DE genes and perform different analyses on them,
aiding with the interpretation of results.  Functions are included to perform
pathway enrichment, with muliplte databases supported, and tools for visualizing
these results.  Genes can also be used to create and plot protein-protein
interaction networks, all from inside of R.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-pathifier
  (package
    (name "r-pathifier")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pathifier" version))
       (sha256
        (base32 "16y1630jkl20zh5p13zr1h8aygmkbx60p9z9rxdci6dalv6b3yrb"))))
    (properties `((upstream-name . "pathifier")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-r-oo r-princurve))
    (home-page "https://bioconductor.org/packages/pathifier")
    (synopsis "Quantify deregulation of pathways in cancer")
    (description
     "Pathifier is an algorithm that infers pathway deregulation scores for each tumor
sample on the basis of expression data.  This score is determined, in a
context-specific manner, for every particular dataset and type of cancer that is
being investigated.  The algorithm transforms gene-level information into
pathway-level information, generating a compact and biologically relevant
representation of each sample.")
    (license (license:fsdg-compatible "Artistic-1.0"))))

(define-public r-path2ppi
  (package
    (name "r-path2ppi")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Path2PPI" version))
       (sha256
        (base32 "09pmdl9133cgjd1d30m2qhbwwd4ckql3d1hl58xz9fiif2f9sxrw"))))
    (properties `((upstream-name . "Path2PPI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-igraph))
    (native-inputs (list r-knitr))
    (home-page "http://www.bioinformatik.uni-frankfurt.de/")
    (synopsis
     "Prediction of pathway-related protein-protein interaction networks")
    (description
     "Package to predict protein-protein interaction (PPI) networks in target
organisms for which only a view information about PPIs is available.  Path2PPI
predicts PPI networks based on sets of proteins which can belong to a certain
pathway from well-established model organisms.  It helps to combine and transfer
information of a certain pathway or biological process from several reference
organisms to one target organism.  Path2PPI only depends on the sequence
similarity of the involved proteins.")
    (license license:gpl2+)))

(define-public r-past
  (package
    (name "r-past")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PAST" version))
       (sha256
        (base32 "1wvddpwdxmhvvczfgk5mnyqrrzglsi9s7cknv8j08sdhlqgqd82y"))))
    (properties `((upstream-name . "PAST")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rtracklayer
                             r-rlang
                             r-qvalue
                             r-iterators
                             r-ggplot2
                             r-genomicranges
                             r-foreach
                             r-dplyr
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/IGBB/past")
    (synopsis "Pathway Association Study Tool (PAST)")
    (description
     "PAST takes GWAS output and assigns SNPs to genes, uses those genes to find
pathways associated with the genes, and plots pathways based on significance.
Implements methods for reading GWAS input data, finding genes associated with
SNPs, calculating enrichment score and significance of pathways, and plotting
pathways.")
    (license (license:fsdg-compatible "GPL (>=3) + file LICENSE"))))

(define-public r-pasillatranscriptexpr
  (package
    (name "r-pasillatranscriptexpr")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PasillaTranscriptExpr" version
                              'experiment))
       (sha256
        (base32 "0bjxqnkybdcj6g4q88kiq2mpvap9qwayq99whl634fjawibpipk8"))))
    (properties `((upstream-name . "PasillaTranscriptExpr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PasillaTranscriptExpr")
    (synopsis
     "Data package with transcript expression obtained with kallisto from pasilla knock-down RNA-Seq data from Brooks et al")
    (description
     "This package provides kallisto workflow and transcript expression of RNA-Seq
data from Brooks et al.")
    (license license:gpl3+)))

(define-public r-partheenmetadata-db
  (package
    (name "r-partheenmetadata-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PartheenMetaData.db" version
                              'annotation))
       (sha256
        (base32 "0d37c5b7s3fgkkvg7sj7gl9ksrjk5pyyv54vkys8w3qwgsm8yrdz"))))
    (properties `((upstream-name . "PartheenMetaData.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/PartheenMetaData.db")
    (synopsis
     "PartheenMetaData http://swegene.onk.lu.se Annotation Data (PartheenMetaData)")
    (description
     "@code{PartheenMetaData} http://swegene.onk.lu.se Annotation Data
(@code{PartheenMetaData}) assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-partcnv
  (package
    (name "r-partcnv")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "partCNV" version))
       (sha256
        (base32 "196h4h4mr3ikp5rh3h3jcny7zda06hmx7ckwcbvildskhpyisarc"))))
    (properties `((upstream-name . "partCNV")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-singlecellexperiment
                             r-seurat
                             r-magrittr
                             r-genomicranges
                             r-depmixs4
                             r-data-table
                             r-biocstyle
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/partCNV")
    (synopsis "Infer locally aneuploid cells using single cell RNA-seq data")
    (description
     "This package uses a statistical framework for rapid and accurate detection of
aneuploid cells with local copy number deletion or amplification.  Our method
uses an EM algorithm with mixtures of Poisson distributions while incorporating
cytogenetics information (e.g., regional deletion or amplification) to guide the
classification (@code{partCNV}).  When applicable, we further improve the
accuracy by integrating a Hidden Markov Model for feature selection
(@code{partCNVH}).")
    (license license:gpl2)))

(define-public r-parglms
  (package
    (name "r-parglms")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "parglms" version))
       (sha256
        (base32 "1gmrfbd4rha4zrxi8bskai1i32ccjn1ws315camb8qfpxr3wfb4n"))))
    (properties `((upstream-name . "parglms")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-foreach r-doparallel r-biocgenerics r-batchjobs))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/parglms")
    (synopsis "support for parallelized estimation of GLMs/GEEs")
    (description
     "This package provides support for parallelized estimation of GLMs/GEEs, catering
for dispersed data.")
    (license license:artistic2.0)))

(define-public r-panther-db
  (package
    (name "r-panther-db")
    (version "1.0.12")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PANTHER.db" version
                              'annotation))
       (sha256
        (base32 "05ydg87cix86hp6hkkqmcniy69q5zyb3xyc3q7bykp26bvrgjvqq"))))
    (properties `((upstream-name . "PANTHER.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsqlite r-biocfilecache r-annotationhub
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PANTHER.db")
    (synopsis
     "set of annotation maps describing the entire PANTHER Gene Ontology")
    (description
     "This package provides a set of annotation maps describing the entire Gene
Ontology assembled using data from PANTHER.")
    (license license:artistic2.0)))

(define-public r-panr
  (package
    (name "r-panr")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PANR" version))
       (sha256
        (base32 "1r76yr00f3xprxnvsffy2kyrbzkkq6r9cm5qy07kbq4k40kws8b3"))))
    (properties `((upstream-name . "PANR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reder r-pvclust r-mass r-igraph))
    (home-page "https://bioconductor.org/packages/PANR")
    (synopsis
     "Posterior association networks and functional modules inferred from rich phenotypes of gene perturbations")
    (description
     "This package provides S4 classes and methods for inferring functional gene
networks with edges encoding posterior beliefs of gene association types and
nodes encoding perturbation effects.")
    (license license:artistic2.0)))

(define-public r-panp
  (package
    (name "r-panp")
    (version "1.76.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "panp" version))
       (sha256
        (base32 "03shbp9izf8q7fvdcb6fyi9ybgbmjxmmzvyvl8acgvx2r6gsmqjp"))))
    (properties `((upstream-name . "panp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase r-affy))
    (home-page "https://bioconductor.org/packages/panp")
    (synopsis "Presence-Absence Calls from Negative Strand Matching Probesets")
    (description
     "This package provides a function to make gene presence/absence calls based on
distance from negative strand matching probesets (NSMP) which are derived from
Affymetrix annotation.  PANP is applied after gene expression values are
created, and therefore can be used after any preprocessing method such as MAS5
or GCRMA, or PM-only methods like RMA. NSMP sets have been established for the
HGU133A and HGU133-Plus-2.0 chipsets to date.")
    (license license:gpl2+)))

(define-public r-panomir
  (package
    (name "r-panomir")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PanomiR" version))
       (sha256
        (base32 "0hnh8y428q1scnk7hw7y2inlwqxj887cv541mb4fvjxgxdhsdnsd"))))
    (properties `((upstream-name . "PanomiR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr
                             r-tibble
                             r-rlang
                             r-rcolorbrewer
                             r-preprocesscore
                             r-org-hs-eg-db
                             r-metap
                             r-limma
                             r-igraph
                             r-gseabase
                             r-forcats
                             r-dplyr
                             r-clusterprofiler))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pouryany/PanomiR")
    (synopsis
     "Detection of miRNAs that regulate interacting groups of pathways")
    (description
     "@code{PanomiR} is a package to detect @code{miRNAs} that target groups of
pathways from gene expression data.  This package provides functionality for
generating pathway activity profiles, determining differentially activated
pathways between user-specified conditions, determining clusters of pathways via
the P@code{CxN} package, and generating @code{miRNAs} targeting clusters of
pathways.  These function can be used separately or sequentially to analyze
RNA-Seq data.")
    (license license:expat)))

(define-public r-panelcn-mops
  (package
    (name "r-panelcn-mops")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "panelcn.mops" version))
       (sha256
        (base32 "10zqj21k8k4qz4f83cy4xfdkdk672i8jjrj16plnhlx67xl520qa"))))
    (properties `((upstream-name . "panelcn.mops")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsamtools
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-cn-mops))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/panelcn.mops")
    (synopsis "CNV detection tool for targeted NGS panel data")
    (description
     "CNV detection tool for targeted NGS panel data.  Extension of the cn.mops
package.")
    (license license:lgpl2.0+)))

(define-public r-pandar
  (package
    (name "r-pandar")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pandaR" version))
       (sha256
        (base32 "07w702788cxq26fk7jj346nqa58mc4pncs3fcv5sx8p6z5a785kz"))))
    (properties `((upstream-name . "pandaR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-runit
                             r-reshape
                             r-plyr
                             r-matrixstats
                             r-igraph
                             r-hexbin
                             r-ggplot2
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/pandaR")
    (synopsis "PANDA Algorithm")
    (description
     "Runs PANDA, an algorithm for discovering novel network structure by combining
information from multiple complementary data sources.")
    (license license:gpl2)))

(define-public r-pairkat
  (package
    (name "r-pairkat")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pairkat" version))
       (sha256
        (base32 "1y1zjhh90kwlmdkzrbv63n0m0j3pl7nvsjzrrbhrz9lyiigrzw7v"))))
    (properties `((upstream-name . "pairkat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-summarizedexperiment
                             r-magrittr
                             r-keggrest
                             r-igraph
                             r-data-table
                             r-compquadform))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/pairkat")
    (synopsis "PaIRKAT")
    (description
     "@code{PaIRKAT} is model framework for assessing statistical relationships
between networks of metabolites (pathways) and an outcome of interest
(phenotype). @code{PaIRKAT} queries the KEGG database to determine interactions
between metabolites from which network connectivity is constructed.  This model
framework improves testing power on high dimensional data by including graph
topography in the kernel machine regression setting.  Studies on high
dimensional data can struggle to include the complex relationships between
variables.  The semi-parametric kernel machine regression model is a powerful
tool for capturing these types of relationships.  They provide a framework for
testing for relationships between outcomes of interest and high dimensional data
such as metabolomic, genomic, or proteomic pathways. @code{PaIRKAT} uses known
biological connections between high dimensional variables by representing them
as edges of ‘graphs’ or ‘networks.’ It is common for nodes (e.g. metabolites) to
be disconnected from all others within the graph, which leads to meaningful
decreases in testing power whether or not the graph information is included.  We
include a graph regularization or ‘smoothing’ approach for managing this issue.")
    (license license:gpl3)))

(define-public r-pairedgsea
  (package
    (name "r-pairedgsea")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pairedGSEA" version))
       (sha256
        (base32 "16kf9jahdb234gf8n83q623nsni67l4zmqh12mfir970l3galkzr"))))
    (properties `((upstream-name . "pairedGSEA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sva
                             r-summarizedexperiment
                             r-s4vectors
                             r-limma
                             r-ggplot2
                             r-fgsea
                             r-dexseq
                             r-deseq2
                             r-biocparallel
                             r-aggregation))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/shdam/pairedGSEA")
    (synopsis "Paired DGE and DGS analysis for gene set enrichment analysis")
    (description
     "@code{pairedGSEA} makes it simple to run a paired Differential Gene Expression
(DGE) and Differencital Gene Splicing (DGS) analysis.  The package allows you to
store intermediate results for further investiation, if desired.
@code{pairedGSEA} comes with a wrapper function for running an
Over-Representation Analysis (ORA) and functionalities for plotting the results.")
    (license license:expat)))

(define-public r-paircompviz
  (package
    (name "r-paircompviz")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "paircompviz" version))
       (sha256
        (base32 "05qq1jxlb86ry5xyfcv3yjas98v8qsxwz53p5gqgxygxzk1lings"))))
    (properties `((upstream-name . "paircompviz")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rgraphviz))
    (home-page "https://bioconductor.org/packages/paircompviz")
    (synopsis "Multiple comparison test visualization")
    (description
     "This package provides visualization of the results from the multiple (i.e.
pairwise) comparison tests such as pairwise.t.test, pairwise.prop.test or
pairwise.wilcox.test.  The groups being compared are visualized as nodes in
Hasse diagram.  Such approach enables very clear and vivid depiction of which
group is significantly greater than which others, especially if comparing a
large number of groups.")
    (license (license:fsdg-compatible "GPL (>=3.0)"))))

(define-public r-pagerank
  (package
    (name "r-pagerank")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pageRank" version))
       (sha256
        (base32 "1mhpr1m95351a6r1sfb2alraf6i9jxmyas1i69l5vx5ccgc8322m"))))
    (properties `((upstream-name . "pageRank")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-motifmatchr r-igraph r-genomicranges))
    (home-page "https://github.com/hd2326/pageRank")
    (synopsis
     "Temporal and Multiplex PageRank for Gene Regulatory Network Analysis")
    (description
     "Implemented temporal @code{PageRank} analysis as defined by Rozenshtein and
Gionis.  Implemented multiplex @code{PageRank} as defined by Halu et al.
Applied temporal and multiplex @code{PageRank} in gene regulatory network
analysis.")
    (license license:gpl2)))

(define-public r-paeg1aprobe
  (package
    (name "r-paeg1aprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "paeg1aprobe" version
                              'annotation))
       (sha256
        (base32 "0hbyd402wf9nzy2g93nhnf2zsi9jvhgfk0llxlyfk0kqxs0y4byy"))))
    (properties `((upstream-name . "paeg1aprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/paeg1aprobe")
    (synopsis "Probe sequence data for microarrays of type paeg1a")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was P\\_aeg1a\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-paeg1acdf
  (package
    (name "r-paeg1acdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "paeg1acdf" version
                              'annotation))
       (sha256
        (base32 "127pgxxp5wp3hgmafbzdzsk4gqnllq1m1gcsfyzkvpkvmbn4aa9n"))))
    (properties `((upstream-name . "paeg1acdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/paeg1acdf")
    (synopsis "paeg1acdf")
    (description
     "This package provides a package containing an environment representing the
Pae_G1a.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-padog
  (package
    (name "r-padog")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PADOG" version))
       (sha256
        (base32 "0sbsnizmfplkli7j88qgksphzn40567z126kpmrjlndfn04nlx6h"))))
    (properties `((upstream-name . "PADOG")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nlme
                             r-limma
                             r-keggrest
                             r-keggdzpathwaysgeo
                             r-hgu133plus2-db
                             r-hgu133a-db
                             r-gsa
                             r-foreach
                             r-dorng
                             r-biobase
                             r-annotationdbi))
    (home-page "https://bioconductor.org/packages/PADOG")
    (synopsis
     "Pathway Analysis with Down-weighting of Overlapping Genes (PADOG)")
    (description
     "This package implements a general purpose gene set analysis method called PADOG
that downplays the importance of genes that apear often accross the sets of
genes to be analyzed.  The package provides also a benchmark for gene set
analysis methods in terms of sensitivity and ranking using 24 public datasets
from KEG@code{GdzPathwaysGEO} package.")
    (license license:gpl2+)))

(define-public r-padma
  (package
    (name "r-padma")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "padma" version))
       (sha256
        (base32 "0v9jnrqc93779gf1znbd9yx97k2v6098xhzxn3qf4z1j13p4r4xf"))))
    (properties `((upstream-name . "padma")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-s4vectors
                             r-multiassayexperiment r-factominer))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/andreamrau/padma")
    (synopsis
     "Individualized Multi-Omic Pathway Deviation Scores Using Multiple Factor Analysis")
    (description
     "Use multiple factor analysis to calculate individualized pathway-centric scores
of deviation with respect to the sampled population based on multi-omic assays
(e.g., RNA-seq, copy number alterations, methylation, etc).  Graphical and
numerical outputs are provided to identify highly aberrant individuals for a
particular pathway of interest, as well as the gene and omics drivers of
aberrant multi-omic profiles.")
    (license license:gpl3+)))

(define-public r-packfinder
  (package
    (name "r-packfinder")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "packFinder" version))
       (sha256
        (base32 "0ll3849za23jrq9hly8b05dlx664l62x0yk7775yh7k8i76cmp5p"))))
    (properties `((upstream-name . "packFinder")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-kmer
                             r-iranges
                             r-genomicranges
                             r-biostrings
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jackgisby/packFinder")
    (synopsis "de novo Annotation of Pack-TYPE Transposable Elements")
    (description
     "Algorithm and tools for in silico pack-TYPE transposon discovery.  Filters a
given genome for properties unique to DNA transposons and provides tools for the
investigation of returned matches.  Sequences are input in DNAString format, and
ranges are returned as a dataframe (in the format returned by
as.dataframe(GRanges)).")
    (license license:gpl2)))

(define-public r-paa
  (package
    (name "r-paa")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PAA" version))
       (sha256
        (base32 "1nqhrvrl3h7wj7w1davfavcaknaq9dnhr91lr2l8g6hlzqi48q1k"))))
    (properties `((upstream-name . "PAA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sva
                             r-rocr
                             r-rcpp
                             r-randomforest
                             r-mrmre
                             r-mass
                             r-limma
                             r-gtools
                             r-gplots
                             r-e1071))
    (home-page "http://www.ruhr-uni-bochum.de/mpc/software/PAA/")
    (synopsis "PAA (Protein Array Analyzer)")
    (description
     "PAA imports single color (protein) microarray data that has been saved in gpr
file format - esp. @code{ProtoArray} data.  After preprocessing (background
correction, batch filtering, normalization) univariate feature preselection is
performed (e.g., using the \"minimum M statistic\" approach - hereinafter referred
to as \"@code{mMs}\").  Subsequently, a multivariate feature selection is
conducted to discover biomarker candidates.  Therefore, either a frequency-based
backwards elimination aproach or ensemble feature selection can be used.  PAA
provides a complete toolbox of analysis tools including several different plots
for results examination and evaluation.")
    (license license:bsd-3)))

