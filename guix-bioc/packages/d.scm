(define-module (guix-bioc packages d)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages cran)
  #:use-module (guix-cran packages g)
  #:use-module (guix-cran packages m)
  #:use-module (gnu packages bioinformatics)
  #:use-module (guix-cran packages s)
  #:use-module (guix-cran packages c)
  #:use-module (guix-cran packages i)
  #:use-module (guix-cran packages p)
  #:use-module (guix-cran packages b)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages k)
  #:use-module (guix-cran packages w)
  #:use-module (guix-cran packages e)
  #:use-module (guix-cran packages r)
  #:use-module (guix-cran packages t)
  #:use-module (guix-cran packages f)
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
  #:use-module (guix-bioc packages i)
  #:use-module (guix-bioc packages h)
  #:use-module (guix-bioc packages g)
  #:use-module (guix-bioc packages f)
  #:use-module (guix-bioc packages e)
  #:use-module (guix-bioc packages c)
  #:use-module (guix-bioc packages b)
  #:use-module (guix-bioc packages a))

(define-public r-dyebiasexamples
  (package
    (name "r-dyebiasexamples")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dyebiasexamples" version
                              'experiment))
       (sha256
        (base32 "1c8g32qzrw293963zxar63y6jywrs3afqh71a8s14l9ykwsq7p52"))))
    (properties `((upstream-name . "dyebiasexamples")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-marray r-geoquery))
    (home-page "http://www.holstegelab.nl/publications/margaritis_lijnzaad")
    (synopsis
     "Example data for the dyebias package, which implements the GASSCO method")
    (description
     "Data for the dyebias package, consisting of 4 self-self hybrizations of
self-spotted yeast slides, as well as data from Array Express accession
E-MTAB-32.")
    (license license:gpl3)))

(define-public r-dyebias
  (package
    (name "r-dyebias")
    (version "1.72.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dyebias" version))
       (sha256
        (base32 "0i4g2b5hak3zakjgx4nm67adjh9qihd3saccq07sm5gk2c6nagvj"))))
    (properties `((upstream-name . "dyebias")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-marray r-biobase))
    (home-page "http://www.holstegelab.nl/publications/margaritis_lijnzaad")
    (synopsis
     "The GASSCO method for correcting for slide-dependent gene-specific dye bias")
    (description
     "Many two-colour hybridizations suffer from a dye bias that is both gene-specific
and slide-specific.  The former depends on the content of the nucleotide used
for labeling; the latter depends on the labeling percentage.  The
slide-dependency was hitherto not recognized, and made addressing the artefact
impossible.  Given a reasonable number of dye-swapped pairs of hybridizations,
or of same vs. same hybridizations, both the gene- and slide-biases can be
estimated and corrected using the GASSCO method (Margaritis et al., Mol.  Sys.
Biol.  5:266 (2009), doi:10.1038/msb.2009.21).")
    (license license:gpl3)))

(define-public r-dvddata
  (package
    (name "r-dvddata")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DvDdata" version
                              'experiment))
       (sha256
        (base32 "1qq59aalkh4kmldjknwh39jk50qvj1q1fj4v4876fws004wvia5a"))))
    (properties `((upstream-name . "DvDdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/DvDdata")
    (synopsis "Drug versus Disease Data")
    (description
     "Data package which provides default drug and disease expression profiles for the
@code{DvD} package.")
    (license license:gpl3)))

(define-public r-dupradar
  (package
    (name "r-dupradar")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dupRadar" version))
       (sha256
        (base32 "0h609ysl5la1yyba06syw9198vfq93lxqxpw66qgp0kqds0zlz6k"))))
    (properties `((upstream-name . "dupRadar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsubread r-kernsmooth))
    (native-inputs (list r-knitr))
    (home-page "https://www.bioconductor.org/packages/dupRadar")
    (synopsis "Assessment of duplication rates in RNA-Seq datasets")
    (description "Duplication rate quality control for RNA-Seq datasets.")
    (license license:gpl3)))

(define-public r-duplexdiscoverer
  (package
    (name "r-duplexdiscoverer")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DuplexDiscovereR" version))
       (sha256
        (base32 "02gq0l7szz5v6qxzvmd84msx9p7zmncdkd9ci5ngavr6nmywqgqc"))))
    (properties `((upstream-name . "DuplexDiscovereR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vctrs
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-scales
                             r-rtracklayer
                             r-rlang
                             r-purrr
                             r-interactionset
                             r-igraph
                             r-gviz
                             r-ggsci
                             r-genomicranges
                             r-genomicalignments
                             r-genomeinfodb
                             r-dplyr
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Egors01/DuplexDiscovereR/")
    (synopsis "Analysis of the data from RNA duplex probing experiments")
    (description
     "@code{DuplexDiscovereR} is a package designed for analyzing data from RNA
cross-linking and proximity ligation protocols such as SPLASH, PARIS, LIGR-seq,
and others. @code{DuplexDiscovereR} accepts input in the form of chimerically or
split-aligned reads.  It includes procedures for alignment classification,
filtering, and efficient clustering of individual chimeric reads into duplex
groups (DGs).  Once DGs are identified, the package predicts RNA duplex
formation and their hybridization energies.  Additional metrics, such as
p-values for random ligation hypothesis or mean DG alignment scores, can be
calculated to rank final set of RNA duplexes.  Data from multiple experiments or
replicates can be processed separately and further compared to check the
reproducibility of the experimental method.")
    (license license:gpl3)))

(define-public r-duoclustering2018
  (package
    (name "r-duoclustering2018")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DuoClustering2018" version
                              'experiment))
       (sha256
        (base32 "0a1c3lmwmvy78lspl4rdwkwwi4ybn17pk4320ydq834s3g81ax3d"))))
    (properties `((upstream-name . "DuoClustering2018")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-viridis
                             r-tidyr
                             r-reshape2
                             r-purrr
                             r-mclust
                             r-magrittr
                             r-ggthemes
                             r-ggplot2
                             r-experimenthub
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DuoClustering2018")
    (synopsis
     "Data, Clustering Results and Visualization Functions From Duò et al (2018)")
    (description
     "Preprocessed experimental and simulated @code{scRNA-seq} data sets used for
evaluation of clustering methods for @code{scRNA-seq} data in Duò et al (2018).
Also contains results from applying several clustering methods to each of the
data sets, and functions for plotting method performance.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-dune
  (package
    (name "r-dune")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Dune" version))
       (sha256
        (base32 "1yf1h15v65mlrd9mv7zfp4wa7zzbvxmrzm5i5ary6iq8psvwryp7"))))
    (properties `((upstream-name . "Dune")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-summarizedexperiment
                             r-rcolorbrewer
                             r-purrr
                             r-magrittr
                             r-ggplot2
                             r-gganimate
                             r-dplyr
                             r-biocparallel
                             r-aricode))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Dune")
    (synopsis
     "Improving replicability in single-cell RNA-Seq cell type discovery")
    (description
     "Given a set of clustering labels, Dune merges pairs of clusters to increase mean
ARI between labels, improving replicability.")
    (license license:expat)))

(define-public r-dta
  (package
    (name "r-dta")
    (version "2.58.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DTA" version))
       (sha256
        (base32 "1sma84fiqkzimk6a1c7z7lb9xcav59r8h2ih2k15a6rz2xa7sici"))))
    (properties `((upstream-name . "DTA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scatterplot3d r-lsd))
    (home-page "https://bioconductor.org/packages/DTA")
    (synopsis "Dynamic Transcriptome Analysis")
    (description
     "Dynamic Transcriptome Analysis (DTA) can monitor the cellular response to
perturbations with higher sensitivity and temporal resolution than standard
transcriptomics.  The package implements the underlying kinetic modeling
approach capable of the precise determination of synthesis- and decay rates from
individual microarray or RNAseq measurements.")
    (license license:artistic2.0)))

(define-public r-dstruct
  (package
    (name "r-dstruct")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dStruct" version))
       (sha256
        (base32 "147rm0h2ia8vm4h0lg6d4v1sxlr5vr72n8b2wl5xf27gj6li54sn"))))
    (properties `((upstream-name . "dStruct")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-s4vectors
                             r-rlang
                             r-reshape2
                             r-purrr
                             r-iranges
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dataMaster-Kris/dStruct")
    (synopsis
     "Identifying differentially reactive regions from RNA structurome profiling data")
    (description
     "@code{dStruct} identifies differentially reactive regions from RNA structurome
profiling data. @code{dStruct} is compatible with a broad range of structurome
profiling technologies, e.g., SHAPE-@code{MaP}, DMS-@code{MaPseq},
Structure-Seq, SHAPE-Seq, etc.  See Choudhary et al., Genome Biology, 2019 for
the underlying method.")
    (license license:gpl2+)))

(define-public r-dspikein
  (package
    (name "r-dspikein")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DspikeIn" version))
       (sha256
        (base32 "0g4i5597nmxd3sg0xm618p8f89rrpi9x4mx29pz8qq77y2fbk63c"))))
    (properties `((upstream-name . "DspikeIn")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-treesummarizedexperiment
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-scales
                             r-s4vectors
                             r-rlang
                             r-reshape2
                             r-rcolorbrewer
                             r-randomforest
                             r-phyloseq
                             r-phangorn
                             r-patchwork
                             r-officer
                             r-msa
                             r-microbiome
                             r-matrixstats
                             r-limma
                             r-igraph
                             r-ggtreeextra
                             r-ggtree
                             r-ggstar
                             r-ggridges
                             r-ggrepel
                             r-ggraph
                             r-ggpubr
                             r-ggplot2
                             r-ggnewscale
                             r-ggalluvial
                             r-flextable
                             r-edger
                             r-dplyr
                             r-deseq2
                             r-decipher
                             r-data-table
                             r-biostrings
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mghotbi/DspikeIn")
    (synopsis "Estimating Absolute Abundance from Microbial Spike-in Controls")
    (description
     "This package provides a reproducible and modular workflow for absolute microbial
quantification using spike-in controls.  Supports both single spike-in taxa and
synthetic microbial communities with user-defined spike-in volumes and genome
copy numbers.  Compatible with phyloseq and @code{TreeSummarizedExperiment}
(TSE) data structures.  The package implements methods for spike-in validation,
preprocessing, scaling factor estimation, absolute abundance conversion, bias
correction, and normalization.  Facilitates downstream statistical analyses with
DESeq2', @code{edgeR}', and other Bioconductor-compatible methods.
Visualization tools are provided via ggplot2', ggtree', and related packages.
Includes detailed vignettes, case studies, and function-level documentation to
guide users through experimental design, quantification, and interpretation.")
    (license license:expat)))

(define-public r-drugvsdiseasedata
  (package
    (name "r-drugvsdiseasedata")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DrugVsDiseasedata" version
                              'experiment))
       (sha256
        (base32 "05p881vqaqf3pvdrdalz5xy6glxh0mghx7rsg1qqrrq9bsq7kqmz"))))
    (properties `((upstream-name . "DrugVsDiseasedata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/DrugVsDiseasedata")
    (synopsis "Drug versus Disease Data")
    (description
     "Data package which provides default disease expression profiles, clusters and
annotation information for use with the @code{DrugVsDisease} package.")
    (license license:gpl3)))

(define-public r-drugvsdisease
  (package
    (name "r-drugvsdisease")
    (version "2.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DrugVsDisease" version))
       (sha256
        (base32 "14jjhggmmk9gjp3ay2br9ja8rk64mdfh042a6kkxbyycslm74b2f"))))
    (properties `((upstream-name . "DrugVsDisease")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xtable
                             r-runit
                             r-qvalue
                             r-limma
                             r-hgu133plus2-db
                             r-hgu133a2-db
                             r-hgu133a-db
                             r-geoquery
                             r-drugvsdiseasedata
                             r-cmap2data
                             r-biomart
                             r-biocgenerics
                             r-arrayexpress
                             r-annotate
                             r-affy))
    (home-page "https://bioconductor.org/packages/DrugVsDisease")
    (synopsis
     "Comparison of disease and drug profiles using Gene set Enrichment Analysis")
    (description
     "This package generates ranked lists of differential gene expression for either
disease or drug profiles.  Input data can be downloaded from Array Express or
GEO, or from local CEL files.  Ranked lists of differential expression and
associated p-values are calculated using Limma.  Enrichment scores (Subramanian
et al.  PNAS 2005) are calculated to a reference set of default drug or disease
profiles, or a set of custom data supplied by the user.  Network visualisation
of significant scores are output in Cytoscape format.")
    (license license:gpl3)))

(define-public r-drugtargetinteractions
  (package
    (name "r-drugtargetinteractions")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "drugTargetInteractions" version))
       (sha256
        (base32 "1ngh7n9lqwjifb865zca6gglhzb7ibdvl1w8chab811gcacz2kiw"))))
    (properties `((upstream-name . "drugTargetInteractions")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-uniprot-ws
                             r-s4vectors
                             r-rsqlite
                             r-rappdirs
                             r-ensembldb
                             r-dplyr
                             r-biomart
                             r-biocfilecache
                             r-annotationfilter))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/girke-lab/drugTargetInteractions")
    (synopsis "Drug-Target Interactions")
    (description
     "This package provides utilities for identifying drug-target interactions for
sets of small molecule or gene/protein identifiers.  The required drug-target
interaction information is obained from a local SQLite instance of the
@code{ChEMBL} database. @code{ChEMBL} has been chosen for this purpose, because
it provides one of the most comprehensive and best annotatated knowledge
resources for drug-target information available in the public domain.")
    (license license:artistic2.0)))

(define-public r-drugfindr
  (package
    (name "r-drugfindr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "drugfindR" version))
       (sha256
        (base32 "1gi9rba228gbykrl3wbchj46f5cgfpfl3ry4iqk34h8l6nw7j2bx"))))
    (properties `((upstream-name . "drugfindR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-s4vectors
                             r-rlang
                             r-readr
                             r-purrr
                             r-lifecycle
                             r-httr2
                             r-dplyr
                             r-dfplyr
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/CogDisResLab/drugfindR")
    (synopsis "Investigate iLINCS for candidate repurposable drugs")
    (description
     "This package provides a convenient way to access the LINCS Signatures available
in the @code{iLINCS} database.  These signatures include Consensus Gene
Knockdown Signatures, Gene Overexpression signatures and Chemical Perturbagen
Signatures.  It also provides a way to enter your own transcriptomic signatures
and identify concordant and discordant signatures in the LINCS database.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-drosophila2probe
  (package
    (name "r-drosophila2probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "drosophila2probe" version
                              'annotation))
       (sha256
        (base32 "1b8wnkyg0p7cffs3ka7by295jsys1sx2gpbj2j63239f0dylpl0i"))))
    (properties `((upstream-name . "drosophila2probe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/drosophila2probe")
    (synopsis "Probe sequence data for microarrays of type drosophila2")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Drosophila\\_2\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-drosophila2cdf
  (package
    (name "r-drosophila2cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "drosophila2cdf" version
                              'annotation))
       (sha256
        (base32 "1w8k5br8nl7m5l4r05af8nc2wwnlpxxl8ncvvhqx5annlb2ynrg3"))))
    (properties `((upstream-name . "drosophila2cdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/drosophila2cdf")
    (synopsis "drosophila2cdf")
    (description
     "This package provides a package containing an environment representing the
Drosophila_2.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-drosophila2-db
  (package
    (name "r-drosophila2-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "drosophila2.db" version
                              'annotation))
       (sha256
        (base32 "03lnr2k1dk784mid0ax7v96hnawp5275a3nnzryz8bnl5052fwds"))))
    (properties `((upstream-name . "drosophila2.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-dm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/drosophila2.db")
    (synopsis
     "Affymetrix Affymetrix Drosophila_2 Array annotation data (chip drosophila2)")
    (description
     "Affymetrix Affymetrix Drosophila_2 Array annotation data (chip drosophila2)
assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-drosgenome1probe
  (package
    (name "r-drosgenome1probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "drosgenome1probe" version
                              'annotation))
       (sha256
        (base32 "1vzf8197nkbdqdpafpafxlkcy61d6mwd7wcbakdhq5493dwhdi98"))))
    (properties `((upstream-name . "drosgenome1probe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/drosgenome1probe")
    (synopsis "Probe sequence data for microarrays of type drosgenome1")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was @code{DrosGenome1\\_probe\\_tab}.")
    (license license:lgpl2.0+)))

(define-public r-drosgenome1cdf
  (package
    (name "r-drosgenome1cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "drosgenome1cdf" version
                              'annotation))
       (sha256
        (base32 "02x6kcnzayx3adz5kjrmfcly36j6j5xwwknd16nskh9050g8xg1y"))))
    (properties `((upstream-name . "drosgenome1cdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/drosgenome1cdf")
    (synopsis "drosgenome1cdf")
    (description
     "This package provides a package containing an environment representing the
@code{DrosGenome1.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-drosgenome1-db
  (package
    (name "r-drosgenome1-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "drosgenome1.db" version
                              'annotation))
       (sha256
        (base32 "0qhhmgjx5yhbdwid6xjp6vbiql8qrh952rq5gwsrhra6812dzwnr"))))
    (properties `((upstream-name . "drosgenome1.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-dm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/drosgenome1.db")
    (synopsis
     "Affymetrix Affymetrix DrosGenome1 Array annotation data (chip drosgenome1)")
    (description
     "Affymetrix Affymetrix @code{DrosGenome1} Array annotation data (chip
drosgenome1) assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-droplettestfiles
  (package
    (name "r-droplettestfiles")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DropletTestFiles" version
                              'experiment))
       (sha256
        (base32 "038hi6x9dmz3l5vr9c9ify3c6lpxrpiinv3qqh1ilc6sylwd147b"))))
    (properties `((upstream-name . "DropletTestFiles")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-s4vectors r-experimenthub r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DropletTestFiles")
    (synopsis "Test Files for Single-Cell Droplet Utilities")
    (description
     "Assorted files generated from droplet-based single-cell protocols, to be used
for testing functions in @code{DropletUtils}.  Primarily intended for storing
files that directly come out of processing pipelines like 10X Genomics
@code{CellRanger} software, prior to the formation of a
@code{SingleCellExperiment} object.  Unlike other packages, this is not designed
to provide objects that are immediately ready for analysis.")
    (license license:gpl3)))

(define-public r-drivernet
  (package
    (name "r-drivernet")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DriverNet" version))
       (sha256
        (base32 "0xcy08c1v73p4i1fdzjbh6k5q77qwdfxd1r71v1vc7abb8r4bnnp"))))
    (properties `((upstream-name . "DriverNet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/DriverNet")
    (synopsis
     "Drivernet: uncovering somatic driver mutations modulating transcriptional networks in cancer")
    (description
     "@code{DriverNet} is a package to predict functional important driver genes in
cancer by integrating genome data (mutation and copy number variation data) and
transcriptome data (gene expression data).  The different kinds of data are
combined by an influence graph, which is a gene-gene interaction network deduced
from pathway data.  A greedy algorithm is used to find the possible driver
genes, which may mutated in a larger number of patients and these mutations will
push the gene expression values of the connected genes to some extreme values.")
    (license license:gpl3)))

(define-public r-dresscheck
  (package
    (name "r-dresscheck")
    (version "0.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dressCheck" version
                              'experiment))
       (sha256
        (base32 "0dslqwcvig55bxpsj8n6jz54kcz29dsbg4qc9r46w4llzbiwjf3z"))))
    (properties `((upstream-name . "dressCheck")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/dressCheck")
    (synopsis "data and software for checking Dressman JCO 25(5) 2007")
    (description "data and software for checking Dressman JCO 25(5) 2007.")
    (license license:artistic2.0)))

(define-public r-dreamlet
  (package
    (name "r-dreamlet")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dreamlet" version))
       (sha256
        (base32 "19195pz2xm59nlb308jy5dz3nwcifn1fs0lnh3f84k4hpdwgp5x2"))))
    (properties `((upstream-name . "dreamlet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zenith
                             r-variancepartition
                             r-tidyr
                             r-summarizedexperiment
                             r-sparsematrixstats
                             r-sparsearray
                             r-singlecellexperiment
                             r-scattermore
                             r-s4vectors
                             r-s4arrays
                             r-rlang
                             r-reshape2
                             r-remacor
                             r-reformulas
                             r-rdpack
                             r-rcpp
                             r-purrr
                             r-metafor
                             r-matrixgenerics
                             r-matrix
                             r-mass
                             r-mashr
                             r-limma
                             r-irlba
                             r-iranges
                             r-gtools
                             r-gseabase
                             r-ggrepel
                             r-ggplot2
                             r-ggbeeswarm
                             r-edger
                             r-dplyr
                             r-delayedmatrixstats
                             r-delayedarray
                             r-data-table
                             r-broom
                             r-biocparallel
                             r-biocgenerics
                             r-beachmat
                             r-ashr))
    (native-inputs (list r-knitr))
    (home-page "https://DiseaseNeurogenomics.github.io/dreamlet")
    (synopsis
     "Scalable differential expression analysis of single cell transcriptomics datasets with complex study designs")
    (description
     "Recent advances in single cell/nucleus transcriptomic technology has enabled
collection of cohort-scale datasets to study cell type specific gene expression
differences associated disease state, stimulus, and genetic regulation.  The
scale of these data, complex study designs, and low read count per cell mean
that characterizing cell type specific molecular mechanisms requires a
user-frieldly, purpose-build analytical framework.  We have developed the
dreamlet package that applies a pseudobulk approach and fits a regression model
for each gene and cell cluster to test differential expression across
individuals associated with a trait of interest.  Use of precision-weighted
linear mixed models enables accounting for repeated measures study designs, high
dimensional batch effects, and varying sequencing depth or observed cells per
biosample.")
    (license license:artistic2.0)))

(define-public r-drawproteins
  (package
    (name "r-drawproteins")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "drawProteins" version))
       (sha256
        (base32 "0880lbqq3q4icil01wsg5nsc4jl8ppl2jvl1p7cng5700c9434hm"))))
    (properties `((upstream-name . "drawProteins")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-readr r-httr r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/brennanpincardiff/drawProteins")
    (synopsis "Package to Draw Protein Schematics from Uniprot API output")
    (description
     "This package draws protein schematics from Uniprot API output.  From the JSON
returned by the GET command, it creates a dataframe from the Uniprot Features
API. This dataframe can then be used by geoms based on ggplot2 and base R to
draw protein schematics.")
    (license license:expat)))

(define-public r-doubletrouble
  (package
    (name "r-doubletrouble")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "doubletrouble" version))
       (sha256
        (base32 "0axwh2wpj5hxhy07nn6kk27hvgpfks6hnhgyy85fcakm4fq2kdvh"))))
    (properties `((upstream-name . "doubletrouble")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-syntenet
                             r-rlang
                             r-msa2dist
                             r-mclust
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-biostrings
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/almeidasilvaf/doubletrouble")
    (synopsis "Identification and classification of duplicated genes")
    (description
     "doubletrouble aims to identify duplicated genes from whole-genome protein
sequences and classify them based on their modes of duplication.  The
duplication modes are i.  segmental duplication (SD); ii.  tandem duplication
(TD); iii.  proximal duplication (PD); iv.  transposed duplication (TRD) and; v.
 dispersed duplication (DD).  Transposon-derived duplicates (TRD) can be further
subdivided into @code{rTRD} (retrotransposon-derived duplication) and
@code{dTRD} (DNA transposon-derived duplication).  If users want a simpler
classification scheme, duplicates can also be classified into SD- and
SSD-derived (small-scale duplication) gene pairs.  Besides classifying gene
pairs, users can also classify genes, so that each gene is assigned a unique
mode of duplication.  Users can also calculate substitution rates per
substitution site (i.e., Ka and Ks) from duplicate pairs, find peaks in Ks
distributions with Gaussian Mixture Models (GMMs), and classify gene pairs into
age groups based on Ks peaks.")
    (license license:gpl3)))

(define-public r-dotseq
  (package
    (name "r-dotseq")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DOTSeq" version))
       (sha256
        (base32 "16vli5rp3iq7rqqqmviy0rzs7498gzpjwx311878pc06gzcym9dl"))))
    (properties `((upstream-name . "DOTSeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdbmaker
                             r-summarizedexperiment
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-rcpp
                             r-pbapply
                             r-matrix
                             r-iranges
                             r-glmmtmb
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodbdata
                             r-genomeinfodb
                             r-emmeans
                             r-deseq2
                             r-data-table
                             r-bsgenome
                             r-boot
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics
                             r-ashr
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/compgenom/DOTSeq")
    (synopsis "Genome-wide Detection of Differential ORF Usage")
    (description
     "Differential open reading frame (ORF) translation analysis framework for
ribosome profiling (Ribo-seq) with matched RNA-seq.  Implements (i) Differential
ORF Usage (DOU), a beta-binomial generalized linear model that models the
expected proportion of Ribo-seq versus RNA-seq reads mapping to each ORF within
a gene, and (ii) ORF-level Differential Translation Efficiency (DTE), a negative
binomial GLM that capture changes in translation efficiency of individual ORFs
across experimental conditions.  Supports ORF-level read summarization for bulk
and single-cell Ribo-seq.")
    (license license:expat)))

(define-public r-dotools
  (package
    (name "r-dotools")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DOtools" version))
       (sha256
        (base32 "0ac161adrrmjgihrd977ihxkzly9jbxd89magx51jvpj0za4k8gs"))))
    (properties `((upstream-name . "DOtools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zellkonverter
                             r-tidyverse
                             r-tidyr
                             r-tibble
                             r-singlecellexperiment
                             r-seuratobject
                             r-seurat
                             r-scpubr
                             r-scdblfinder
                             r-sccustomize
                             r-scales
                             r-s4vectors
                             r-rstatix
                             r-rlang
                             r-reticulate
                             r-reshape2
                             r-purrr
                             r-progress
                             r-openxlsx
                             r-matrix
                             r-magrittr
                             r-ks
                             r-ggtext
                             r-ggrastr
                             r-ggpubr
                             r-ggplot2
                             r-ggiraphextra
                             r-ggcorrplot
                             r-ggalluvial
                             r-fnn
                             r-enrichr
                             r-dropletutils
                             r-dplyr
                             r-deseq2
                             r-curl
                             r-cowplot
                             r-cli
                             r-basilisk))
    (native-inputs (list r-knitr))
    (home-page "https://marianoruzjurado.github.io/DOtools/")
    (synopsis
     "Convenient functions to streamline your single cell data analysis workflow")
    (description
     "This package provides functions for creating various visualizations, convenient
wrappers, and quality-of-life utilities for single cell experiment objects.  It
offers a streamlined approach to visualize results and integrates different
tools for easy use.")
    (license license:expat)))

(define-public r-doser
  (package
    (name "r-doser")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "doseR" version))
       (sha256
        (base32 "00dr8ph3xnc4qs7v3ky222icv6mcv9qff0q7affj9a74p456m6d9"))))
    (properties `((upstream-name . "doseR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-runit
                             r-mclust
                             r-matrixstats
                             r-lme4
                             r-edger
                             r-digest))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/doseR")
    (synopsis "doseR")
    (description
     "@code{doseR} package is a next generation sequencing package for sex chromosome
dosage compensation which can be applied broadly to detect shifts in gene
expression among an arbitrary number of pre-defined groups of loci. @code{doseR}
is a differential gene expression package for count data, that detects
directional shifts in expression for multiple, specific subsets of genes, broad
utility in systems biology research. @code{doseR} has been prepared to manage
the nature of the data and the desired set of inferences. @code{doseR} uses S4
classes to store count data from sequencing experiment.  It contains functions
to normalize and filter count data, as well as to plot and calculate statistics
of count data.  It contains a framework for linear modeling of count data.  The
package has been tested using real and simulated data.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-doscheda
  (package
    (name "r-doscheda")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Doscheda" version))
       (sha256
        (base32 "1kjbclysmjx8i5qjnbbl6ac2lb47j6v4qb2qd4jh9mwd2s2k7pqh"))))
    (properties `((upstream-name . "Doscheda")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vsn
                             r-stringr
                             r-shinydashboard
                             r-shiny
                             r-reshape2
                             r-readxl
                             r-prodlim
                             r-matrixstats
                             r-limma
                             r-jsonlite
                             r-httr
                             r-gridextra
                             r-ggplot2
                             r-dt
                             r-drc
                             r-corrgram
                             r-calibrate
                             r-affy))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Doscheda")
    (synopsis "DownStream Chemo-Proteomics Analysis Pipeline")
    (description
     "Doscheda focuses on quantitative chemoproteomics used to determine protein
interaction profiles of small molecules from whole cell or tissue lysates using
Mass Spectrometry data.  The package provides a shiny application to run the
pipeline, several visualisations and a downloadable report of an experiment.")
    (license license:gpl3)))

(define-public r-dorothea
  (package
    (name "r-dorothea")
    (version "1.23.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dorothea" version
                              'experiment))
       (sha256
        (base32 "0fxcdzxyzr6zvmw1s6drzkdpwf17c75l6xflkd8grm5z90xlg4ha"))))
    (properties `((upstream-name . "dorothea")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-magrittr r-dplyr r-decoupler r-bcellviper))
    (native-inputs (list r-knitr))
    (home-page "https://saezlab.github.io/dorothea/")
    (synopsis "Collection Of Human And Mouse TF Regulons")
    (description
     "@code{DoRothEA} is a gene regulatory network containing signed transcription
factor (TF) - target gene interactions. @code{DoRothEA} regulons, the collection
of a TF and its transcriptional targets, were curated and collected from
different types of evidence for both human and mouse.  A confidence level was
assigned to each TF-target interaction based on the number of supporting
evidence.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-doremitra
  (package
    (name "r-doremitra")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DoReMiTra" version
                              'experiment))
       (sha256
        (base32 "1s9rrkq3msqc1688hzfp32mr3qjy5q321a4nh055wp36kwic14d7"))))
    (properties `((upstream-name . "DoReMiTra")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment
                             r-scater
                             r-s4vectors
                             r-glue
                             r-experimenthub
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/AhmedSAHassan/DoReMiTra")
    (synopsis "Orchestrating Blood Radiation Transcriptomic Data")
    (description
     "@code{DoReMiTra} is an R data package providing access to curated transcriptomic
datasets related to blood radiation, with a focus on neutron, x-ray, and gamma
ray studies.  It is designed to facilitate radiation biology research and
support data exploration and reproducibility in radiation transcriptomics.  All
datasets are provided as @code{SummarizedExperiment} objects, allowing seamless
integration with the Bioconductor ecosystem.")
    (license license:expat)))

(define-public r-doppelgangr
  (package
    (name "r-doppelgangr")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "doppelgangR" version))
       (sha256
        (base32 "1fg4bb2lfwqmc91srqhdjpk5lwkk37c76mm6fyz0pv7xrjxyxs2w"))))
    (properties `((upstream-name . "doppelgangR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sva
                             r-summarizedexperiment
                             r-mnormt
                             r-impute
                             r-digest
                             r-biocparallel
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lwaldron/doppelgangR")
    (synopsis "Identify likely duplicate samples from genomic or meta-data")
    (description
     "The main function is @code{doppelgangR()}, which takes as minimal input a list
of @code{ExpressionSet} object, and searches all list pairs for duplicated
samples.  The search is based on the genomic data (exprs(eset)),
phenotype/clinical data (@code{pData(eset})), and \"smoking guns\" - supposedly
unique identifiers found in @code{pData(eset}).")
    (license (license:fsdg-compatible "GPL (>=2.0)"))))

(define-public r-donapllp2013
  (package
    (name "r-donapllp2013")
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DonaPLLP2013" version
                              'experiment))
       (sha256
        (base32 "0gq36s7687nzjz5xrpqcpms2ddnzgnsxkfjhyl3zp1ffb4y6i34z"))))
    (properties `((upstream-name . "DonaPLLP2013")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ebimage))
    (home-page "https://bioconductor.org/packages/DonaPLLP2013")
    (synopsis
     "Supplementary data package for Dona et al. (2013) containing example images and tables")
    (description
     "An experiment data package associated with the publication Dona et al. (2013).
Package contains runnable vignettes showing an example image segmentation for
one posterior lateral line primordium, and also the data table and code used to
analyze tissue-scale lifetime-ratio statistics.")
    (license license:artistic2.0)))

(define-public r-dominosignal
  (package
    (name "r-dominosignal")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dominoSignal" version))
       (sha256
        (base32 "1ih3cnhjqm0kkycj8fsb3647hjkwd0vcbb42qpwfss6wrqxz4abi"))))
    (properties `((upstream-name . "dominoSignal")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-purrr
                             r-plyr
                             r-matrix
                             r-magrittr
                             r-igraph
                             r-ggpubr
                             r-dplyr
                             r-complexheatmap
                             r-circlize
                             r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://FertigLab.github.io/dominoSignal/")
    (synopsis "Cell Communication Analysis for Single Cell RNA Sequencing")
    (description
     "@code{dominoSignal} is a package developed to analyze cell signaling through
ligand - receptor - transcription factor networks in @code{scRNAseq} data.  It
takes as input information transcriptomic data, requiring counts, z-scored
counts, and cluster labels, as well as information on transcription factor
activation (such as from SCENIC) and a database of ligand and receptor pairings
(such as from @code{CellPhoneDB}).  This package creates an object storing
ligand - receptor - transcription factor linkages by cluster and provides
several methods for exploring, summarizing, and visualizing the analysis.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-dominoeffect
  (package
    (name "r-dominoeffect")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DominoEffect" version))
       (sha256
        (base32 "0yj2w24lxfmvaf988yjwkvpwqh9z6x094pg672k28bhpx7vmj2qc"))))
    (properties `((upstream-name . "DominoEffect")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-summarizedexperiment
                             r-seqinfo
                             r-pwalign
                             r-iranges
                             r-genomicranges
                             r-data-table
                             r-biostrings
                             r-biomart
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DominoEffect")
    (synopsis "Identification and Annotation of Protein Hotspot Residues")
    (description
     "The functions support identification and annotation of hotspot residues in
proteins.  These are individual amino acids that accumulate mutations at a much
higher rate than their surrounding regions.")
    (license license:gpl3+)))

(define-public r-dominatrdata
  (package
    (name "r-dominatrdata")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dominatRData" version
                              'experiment))
       (sha256
        (base32 "19zm4xy5vyx28hw52k8jdna2j7vnfvz9q62rn9m9bqc9rfj4k029"))))
    (properties `((upstream-name . "dominatRData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/VanBortleLab/dominatRData")
    (synopsis "Datasets for R Package dominatR")
    (description
     "@code{dominatRData} is a data package useful for showcasing @code{dominatR}
examples. @code{dominatR} is an R package for quantifying and visualizing
feature dominance in datasets. @code{dominatR} makes use of entropy-based
triangular projections and compositional comparison metrics.")
    (license license:expat)))

(define-public r-dominatr
  (package
    (name "r-dominatr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dominatR" version))
       (sha256
        (base32 "0m02w9drgs50l6gckxygdy9c3y454sy17yb3myska3dm9s3fgzsd"))))
    (properties `((upstream-name . "dominatR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-scales
                             r-rlang
                             r-ggplot2
                             r-ggnewscale
                             r-ggforce
                             r-geomtextpath
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/VanBortleLab/dominatR")
    (synopsis "Feature Dominance-based R Package for Genomic Data")
    (description
     "@code{dominatR} is an R package for quantifying and visualizing feature
dominance in datasets. @code{dominatR} applies concepts drawn from physics such
as center of mass and shannon's entropy to effectively visualize features (e.g.
genes) that are present within a specific context or condition.  The package
integrates, dataframes, matrices and @code{SummerizedExperiment} objects and is
able to perform common genomic normalization methods.  The key aspect is the
generation of plots that serve to highlight context-relevant feature dominance.")
    (license license:expat)))

(define-public r-dnea
  (package
    (name "r-dnea")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DNEA" version))
       (sha256
        (base32 "0s8q6ddanva2101l82lgy4vjmq1jb532fgxy9sydv71s9dsp4np1"))))
    (properties `((upstream-name . "DNEA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-stringr
                             r-netgsa
                             r-matrix
                             r-janitor
                             r-igraph
                             r-glasso
                             r-gdata
                             r-dplyr
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Karnovsky-Lab/DNEA")
    (synopsis "Differential Network Enrichment Analysis for Biological Data")
    (description
     "The DNEA R package is the latest implementation of the Differential Network
Enrichment Analysis algorithm and is the successor to the Filigree
Java-application described in Iyer et al. (2020).  The package is designed to
take as input an m x n expression matrix for some -omics modality (ie.
metabolomics, lipidomics, proteomics, etc.) and jointly estimate the biological
network associations of each condition using the DNEA algorithm described in Ma
et al. (2019).  This approach provides a framework for data-driven enrichment
analysis across two experimental conditions that utilizes the underlying
correlation structure of the data to determine feature-feature interactions.")
    (license license:expat)))

(define-public r-dnazoodata
  (package
    (name "r-dnazoodata")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DNAZooData" version
                              'experiment))
       (sha256
        (base32 "19vrmfvwla8iy5y51lh0282cxq5p7zjaxgj8rbg321cy0khbasva"))))
    (properties `((upstream-name . "DNAZooData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors r-rjson r-hicexperiment
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/js2264/DNAZooData")
    (synopsis "DNA Zoo data package")
    (description
     "DNA@code{ZooData} is a data package giving programmatic access to genome
assemblies and Hi-C contact matrices uniformly processed by the [DNA Zoo
Consortium](https://www.dnazoo.org/).  The matrices are available in the
multi-resolution `.hic` format.  A URL to corrected genome assemblies in
`.fastq` format is also provided to the end-user.")
    (license license:expat)))

(define-public r-dnashaper
  (package
    (name "r-dnashaper")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DNAshapeR" version))
       (sha256
        (base32 "0p7y3cjnrzv8hhw3j6pzw2ibw1qahab3rqz4kcb80ah6h59970a5"))))
    (properties `((upstream-name . "DNAshapeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-genomicranges r-fields r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DNAshapeR")
    (synopsis "High-throughput prediction of DNA shape features")
    (description
     "DN@code{AhapeR} is an R/@code{BioConductor} package for ultra-fast,
high-throughput predictions of DNA shape features.  The package allows to
predict, visualize and encode DNA shape features for statistical learning.")
    (license license:gpl2)))

(define-public r-dnafusion
  (package
    (name "r-dnafusion")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DNAfusion" version))
       (sha256
        (base32 "09qzqr9jqd3srhakhb5bixfasc9vbq9jngfgfikwaw932kmvrmgs"))))
    (properties `((upstream-name . "DNAfusion")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdb-hsapiens-ucsc-hg38-knowngene
                             r-s4vectors
                             r-rsamtools
                             r-iranges
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-biocgenerics
                             r-biocbaseutils))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/CTrierMaansson/DNAfusion")
    (synopsis "Identification of gene fusions using paired-end sequencing")
    (description
     "DNAfusion can identify gene fusions such as EML4-ALK based on paired-end
sequencing results.  This package was developed using position deduplicated BAM
files generated with the AVENIO Oncology Analysis Software.  These files are
made using the AVENIO @code{ctDNA} surveillance kit and Illumina Nextseq 500
sequencing.  This is a targeted hybridization NGS approach and includes
ALK-specific but not EML4-specific probes.")
    (license license:gpl3)))

(define-public r-dnacycp2
  (package
    (name "r-dnacycp2")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DNAcycP2" version))
       (sha256
        (base32 "0ffq3flyhwaf7aq5a5gfvx1nzpw9zzp5x9ga0sd73dw4r4ci9wll"))))
    (properties `((upstream-name . "DNAcycP2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reticulate r-basilisk))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jipingw/DNAcycP2")
    (synopsis "DNA Cyclizability Prediction")
    (description
     "This package performs prediction of intrinsic cyclizability of of every 50-bp
subsequence in a DNA sequence.  The input could be a file either in FASTA or
text format.  The output will be the C-score, the estimated intrinsic
cyclizability score for each 50 bp sequences in each entry of the sequence set.")
    (license license:artistic2.0)))

(define-public r-dnabarcodecompatibility
  (package
    (name "r-dnabarcodecompatibility")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DNABarcodeCompatibility" version))
       (sha256
        (base32 "0bv56993il1wsbwmh9c53ijqrv12scmcxnyp14y64vcmllrppwmh"))))
    (properties `((upstream-name . "DNABarcodeCompatibility")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rcpp
                             r-purrr
                             r-numbers
                             r-dplyr
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://dnabarcodecompatibility.pasteur.fr/")
    (synopsis
     "Tool for Optimizing Combinations of DNA Barcodes Used in Multiplexed Experiments on Next Generation Sequencing Platforms")
    (description
     "The package allows one to obtain optimised combinations of DNA barcodes to be
used for multiplex sequencing.  In each barcode combination, barcodes are pooled
with respect to Illumina chemistry constraints.  Combinations can be filtered to
keep those that are robust against substitution and insertion/deletion errors
thereby facilitating the demultiplexing step.  In addition, the package provides
an optimiser function to further favor the selection of barcode combinations
with least heterogeneity in barcode usage.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-dmrsegaldata
  (package
    (name "r-dmrsegaldata")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DMRsegaldata" version
                              'experiment))
       (sha256
        (base32 "09fvd9yijm2sgkdalzppw2bckx28qwlj08brf5j3sq64mnljshjj"))))
    (properties `((upstream-name . "DMRsegaldata")))
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
    (home-page "https://github.com/CMG-UA/DMRsegal")
    (synopsis "Example DNAm Data for DMRsegal")
    (description
     "Data package providing example DNA methylation files used in the DMRsegal
vignette and examples.  Includes a sorted beta matrix as a tab-delimited,
bgzip-compressed file and a matching phenotype table.  The data contains 10
healthy and 10 cancer samples, and preprocessing has already been performed on
the beta values.")
    (license license:gpl2+)))

(define-public r-dmrscan
  (package
    (name "r-dmrscan")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DMRScan" version))
       (sha256
        (base32 "134q3qh8ydcf659ysrwgaj05xngs9pnzb8k51rrg3a56hq8ysr3y"))))
    (properties `((upstream-name . "DMRScan")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-seqinfo
                             r-rcpproll
                             r-mvtnorm
                             r-matrix
                             r-mass
                             r-iranges
                             r-genomicranges))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/christpa/DMRScan")
    (synopsis "Detection of Differentially Methylated Regions")
    (description
     "This package detects significant differentially methylated regions (for both
qualitative and quantitative traits), using a scan statistic with underlying
Poisson heuristics.  The scan statistic will depend on a sequence of window
sizes (# of @code{CpGs} within each window) and on a threshold for each window
size.  This threshold can be calculated by three different means: i)
analytically using Siegmund et.al (2012) solution (preferred), ii) an important
sampling as suggested by Zhang (2008), and a iii) full MCMC modeling of the
data, choosing between a number of different options for modeling the dependency
between each @code{CpG}.")
    (license license:gpl3)))

(define-public r-dmrcatedata
  (package
    (name "r-dmrcatedata")
    (version "2.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DMRcatedata" version
                              'experiment))
       (sha256
        (base32 "062pj4mgm3a5lzqv2kkscyv9mz72rdsm58bi883ycisrs14k4h3m"))))
    (properties `((upstream-name . "DMRcatedata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-rtracklayer
                             r-readxl
                             r-plyr
                             r-illuminahumanmethylationepicanno-ilm10b4-hg19
                             r-illuminahumanmethylation450kanno-ilmn12-hg19
                             r-gviz
                             r-genomicfeatures
                             r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DMRcatedata")
    (synopsis "Data Package for DMRcate")
    (description
     "This package contains 9 data objects supporting functionality and examples of
the Bioconductor package DMRcate.")
    (license license:gpl3)))

(define-public r-dmrcaller
  (package
    (name "r-dmrcaller")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DMRcaller" version))
       (sha256
        (base32 "1ivvh21ng1q64v30nlbyyr1dvw11z0dqqg5x0jz6nzwm9b87mqbl"))))
    (properties `((upstream-name . "DMRcaller")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-seqinfo
                             r-s4vectors
                             r-rsamtools
                             r-rcpproll
                             r-rcpp
                             r-iranges
                             r-interactionset
                             r-inflection
                             r-genomicranges
                             r-genomicalignments
                             r-genomeinfodb
                             r-bsgenome
                             r-biostrings
                             r-biocparallel
                             r-biocmanager
                             r-betareg))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DMRcaller")
    (synopsis "Differentially Methylated Regions Caller")
    (description
     "Uses Bisulfite sequencing data in two conditions and identifies differentially
methylated regions between the conditions in CG and non-CG context.  The input
is the CX report files produced by Bismark and the output is a list of DMRs
stored as GRanges objects.")
    (license license:gpl3)))

(define-public r-dmgsea
  (package
    (name "r-dmgsea")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dmGsea" version))
       (sha256
        (base32 "0gvnm6947h4drr1vj6b56ki34xk64bcnd35advpj8wfz1dxbsam5"))))
    (properties `((upstream-name . "dmGsea")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-seqinfo
                             r-poolr
                             r-matrix
                             r-dqrng
                             r-biasedurn
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Bioconductor/dmGsea")
    (synopsis
     "Efficient Gene Set Enrichment Analysis for DNA Methylation Data")
    (description
     "The R package @code{dmGsea} provides efficient gene set enrichment analysis
specifically for DNA methylation data.  It addresses key biases, including probe
dependency and varying probe numbers per gene.  The package supports Illumina
450K, EPIC, and mouse methylation arrays.  Users can also apply it to other
omics data by supplying custom probe-to-gene mapping annotations. @code{dmGsea}
is flexible, fast, and well-suited for large-scale epigenomic studies.")
    (license license:artistic2.0)))

(define-public r-dmchmm
  (package
    (name "r-dmchmm")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DMCHMM" version))
       (sha256
        (base32 "1cjy6alsi87fjk86qfvcz722wlc06mkb062f05qc1dq2q0d3ylqk"))))
    (properties `((upstream-name . "DMCHMM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-rtracklayer
                             r-multcomp
                             r-iranges
                             r-genomicranges
                             r-fdrtool
                             r-calibrate
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DMCHMM")
    (synopsis "Differentially Methylated CpG using Hidden Markov Model")
    (description
     "This package provides a pipeline for identifying differentially methylated
@code{CpG} sites using Hidden Markov Model in bisulfite sequencing data.  DNA
methylation studies have enabled researchers to understand methylation patterns
and their regulatory roles in biological processes and disease.  However, only a
limited number of statistical approaches have been developed to provide formal
quantitative analysis.  Specifically, a few available methods do identify
differentially methylated @code{CpG} (DMC) sites or regions (DMR), but they
suffer from limitations that arise mostly due to challenges inherent in
bisulfite sequencing data.  These challenges include: (1) that read-depths vary
considerably among genomic positions and are often low; (2) both methylation and
autocorrelation patterns change as regions change; and (3) @code{CpG} sites are
distributed unevenly.  Furthermore, there are several methodological
limitations: almost none of these tools is capable of comparing multiple groups
and/or working with missing values, and only a few allow continuous or multiple
covariates.  The last of these is of great interest among researchers, as the
goal is often to find which regions of the genome are associated with several
exposures and traits.  To tackle these issues, we have developed an efficient
DMC identification method based on Hidden Markov Models (HMMs) called “DMCHMM”
which is a three-step approach (model selection, prediction, testing) aiming to
address the aforementioned drawbacks.")
    (license license:gpl3)))

(define-public r-dmcfb
  (package
    (name "r-dmcfb")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DMCFB" version))
       (sha256
        (base32 "08sc5r8viylfxir3sdd2db7wwfz3f6jmzw47rdmssd1lqm4p9phj"))))
    (properties `((upstream-name . "DMCFB")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-summarizedexperiment
                             r-speedglm
                             r-s4vectors
                             r-rtracklayer
                             r-matrixstats
                             r-mass
                             r-iranges
                             r-genomicranges
                             r-fastdummies
                             r-data-table
                             r-biocparallel
                             r-benchmarkme
                             r-arm))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DMCFB")
    (synopsis
     "Differentially Methylated Cytosines via a Bayesian Functional Approach")
    (description
     "DMCFB is a pipeline for identifying differentially methylated cytosines using a
Bayesian functional regression model in bisulfite sequencing data.  By using a
functional regression data model, it tries to capture position-specific,
group-specific and other covariates-specific methylation patterns as well as
spatial correlation patterns and unknown underlying models of methylation data.
It is robust and flexible with respect to the true underlying models and
inclusion of any covariates, and the missing values are imputed using spatial
correlation between positions and samples.  A Bayesian approach is adopted for
estimation and inference in the proposed method.")
    (license license:gpl3)))

(define-public r-dlbcl
  (package
    (name "r-dlbcl")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DLBCL" version
                              'experiment))
       (sha256
        (base32 "11q943qc6ij957n6kkg6v600ym0liqivff1zvp4p9bvm7k7133zy"))))
    (properties `((upstream-name . "DLBCL")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-graph r-biobase))
    (home-page "http://bionet.bioapps.biozentrum.uni-wuerzburg.de/")
    (synopsis "Diffuse large B-cell lymphoma expression data")
    (description
     "This package provides additional expression data on diffuse large B-cell
lymphomas for the @code{BioNet} package.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-dks
  (package
    (name "r-dks")
    (version "1.58.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dks" version))
       (sha256
        (base32 "19fm8m0sa824gz019cw98c0j0ggs41mr5ws9s0l6avrjg0qiv990"))))
    (properties `((upstream-name . "dks")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-cubature))
    (home-page "https://bioconductor.org/packages/dks")
    (synopsis
     "The double Kolmogorov-Smirnov package for evaluating multiple testing procedures")
    (description
     "The dks package consists of a set of diagnostic functions for multiple testing
methods.  The functions can be used to determine if the p-values produced by a
multiple testing procedure are correct.  These functions are designed to be
applied to simulated data.  The functions require the entire set of p-values
from multiple simulated studies, so that the joint distribution can be
evaluated.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-divergence
  (package
    (name "r-divergence")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "divergence" version))
       (sha256
        (base32 "1wh4xml8y1z2h994pspgdd5v899sghf95l85x9k90c746hrvkk16"))))
    (properties `((upstream-name . "divergence")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/divergence")
    (synopsis
     "Divergence: Functionality for assessing omics data by divergence with respect to a baseline")
    (description
     "This package provides functionality for performing divergence analysis as
presented in Dinalankara et al, \"Digitizing omics profiles by divergence from a
baseline\", PANS 2018.  This allows the user to simplify high dimensional omics
data into a binary or ternary format which encapsulates how the data is
divergent from a specified baseline group with the same univariate or
multivariate features.")
    (license license:gpl2)))

(define-public r-distinct
  (package
    (name "r-distinct")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "distinct" version))
       (sha256
        (base32 "0116ry1f7gmw9jpw08xc1i1rda4msggz3q4as3ghjbkwg5khgq9r"))))
    (properties `((upstream-name . "distinct")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-scater
                             r-rcpparmadillo
                             r-rcpp
                             r-matrix
                             r-limma
                             r-ggplot2
                             r-foreach
                             r-dorng
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/SimoneTiberi/distinct")
    (synopsis
     "distinct: a method for differential analyses via hierarchical permutation tests")
    (description
     "distinct is a statistical method to perform differential testing between two or
more groups of distributions; differential testing is performed via hierarchical
non-parametric permutation tests on the cumulative distribution functions (cdfs)
of each sample.  While most methods for differential expression target
differences in the mean abundance between conditions, distinct, by comparing
full cdfs, identifies, both, differential patterns involving changes in the
mean, as well as more subtle variations that do not involve the mean (e.g.,
unimodal vs. bi-modal distributions with the same mean).  distinct is a general
and flexible tool: due to its fully non-parametric nature, which makes no
assumptions on how the data was generated, it can be applied to a variety of
datasets.  It is particularly suitable to perform differential state analyses on
single cell data (i.e., differential analyses within sub-populations of cells),
such as single cell RNA sequencing (@code{scRNA-seq}) and high-dimensional flow
or mass cytometry (HDCyto) data.  To use distinct one needs data from two or
more groups of samples (i.e., experimental conditions), with at least 2 samples
(i.e., biological replicates) per group.")
    (license license:gpl3+)))

(define-public r-discorhythm
  (package
    (name "r-discorhythm")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DiscoRhythm" version))
       (sha256
        (base32 "1havspxifsqk0dw6mam63wx5s2fsxsrqgb6a00vk6z083jb7qk2a"))))
    (properties `((upstream-name . "DiscoRhythm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zip
                             r-viridis
                             r-venndiagram
                             r-upsetr
                             r-summarizedexperiment
                             r-shinyjs
                             r-shinydashboard
                             r-shinycssloaders
                             r-shinybs
                             r-shiny
                             r-s4vectors
                             r-rmarkdown
                             r-reshape2
                             r-plotly
                             r-metacycle
                             r-matrixtests
                             r-matrixstats
                             r-magick
                             r-knitr
                             r-kableextra
                             r-heatmaply
                             r-gridextra
                             r-ggplot2
                             r-ggextra
                             r-dt
                             r-dplyr
                             r-data-table
                             r-broom
                             r-biocstyle
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/matthewcarlucci/DiscoRhythm")
    (synopsis
     "Interactive Workflow for Discovering Rhythmicity in Biological Data")
    (description
     "Set of functions for estimation of cyclical characteristics, such as period,
phase, amplitude, and statistical significance in large temporal datasets.
Supporting functions are available for quality control, dimensionality
reduction, spectral analysis, and analysis of experimental replicates.  Contains
a R Shiny web interface to execute all workflow steps.")
    (license license:gpl3)))

(define-public r-discordant
  (package
    (name "r-discordant")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "discordant" version))
       (sha256
        (base32 "0m9klhzx5yj80h8jj3626si16mi8r6q9i2h1s7di0vbs1nyvkvs8"))))
    (properties `((upstream-name . "discordant")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp
                             r-mass
                             r-gtools
                             r-dplyr
                             r-biwt
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/siskac/discordant")
    (synopsis
     "The Discordant Method: A Novel Approach for Differential Correlation")
    (description
     "Discordant is an R package that identifies pairs of features that correlate
differently between phenotypic groups, with application to -omics data sets.
Discordant uses a mixture model that “bins” molecular feature pairs based on
their type of coexpression or coabbundance.  Algorithm is explained further in
\"Differential Correlation for Sequencing Data\"\" (Siska et al.  2016).")
    (license license:gpl3)))

(define-public r-dinor
  (package
    (name "r-dinor")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dinoR" version))
       (sha256
        (base32 "09wz12bav6jl1kfwp9pm6wdwcq618yadmx41jgnh0j1cdsqd8p5p"))))
    (properties `((upstream-name . "dinoR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-rlang
                             r-matrix
                             r-ggplot2
                             r-genomicranges
                             r-edger
                             r-dplyr
                             r-cowplot
                             r-complexheatmap
                             r-circlize
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/xxxmichixxx/dinoR")
    (synopsis "Differential NOMe-seq analysis")
    (description
     "@code{dinoR} tests for significant differences in NOMe-seq footprints between
two conditions, using genomic regions of interest (ROI) centered around a
landmark, for example a transcription factor (TF) motif.  This package takes
NOMe-seq data (GCH methylation/protection) in the form of a Ranged Summarized
Experiment as input. @code{dinoR} can be used to group sequencing fragments into
3 or 5 categories representing characteristic footprints (TF bound, nculeosome
bound, open chromatin), plot the percentage of fragments in each category in a
heatmap, or averaged across different ROI groups, for example, containing a
common TF motif.  It is designed to compare footprints between two sample
groups, using @code{edgeR's} quasi-likelihood methods on the total fragment
counts per ROI, sample, and footprint category.")
    (license license:expat)))

(define-public r-dino
  (package
    (name "r-dino")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Dino" version))
       (sha256
        (base32 "058qyc268qf9fbs5mlqmh8kn4inkay3gwicpd8q154axi1hsgl8l"))))
    (properties `((upstream-name . "Dino")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-seurat
                             r-scran
                             r-s4vectors
                             r-matrixstats
                             r-matrix
                             r-biocsingular
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/JBrownBiostat/Dino")
    (synopsis "Normalization of Single-Cell mRNA Sequencing Data")
    (description
     "Dino normalizes single-cell, @code{mRNA} sequencing data to correct for
technical variation, particularly sequencing depth, prior to downstream
analysis.  The approach produces a matrix of corrected expression for which the
dependency between sequencing depth and the full distribution of normalized
expression; many existing methods aim to remove only the dependency between
sequencing depth and the mean of the normalized expression.  This is particuarly
useful in the context of highly sparse datasets such as those produced by 10X
genomics and other uninque molecular identifier (UMI) based microfluidics
protocols for which the depth-dependent proportion of zeros in the raw
expression data can otherwise present a challenge.")
    (license license:gpl3)))

(define-public r-diggitdata
  (package
    (name "r-diggitdata")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "diggitdata" version
                              'experiment))
       (sha256
        (base32 "1qkh960ywphhvd8r317vbqgvxrn5k8w5zzgbkaymdacsm7a4a4j6"))))
    (properties `((upstream-name . "diggitdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viper r-biobase))
    (home-page "https://bioconductor.org/packages/diggitdata")
    (synopsis "Example data for the diggit package")
    (description
     "This package provides expression profile and CNV data for glioblastoma from
TCGA, and transcriptional and post-translational regulatory networks assembled
with the ARACNe and MINDy algorithms, respectively.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-diggit
  (package
    (name "r-diggit")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "diggit" version))
       (sha256
        (base32 "0vjrasmf38l88612025wcip26bj2d502qk1hadxqfhg6hxj8nj3q"))))
    (properties `((upstream-name . "diggit")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viper r-ks r-biobase))
    (home-page "https://bioconductor.org/packages/diggit")
    (synopsis "Inference of Genetic Variants Driving Cellular Phenotypes")
    (description
     "Inference of Genetic Variants Driving Cellullar Phenotypes by the DIGGIT
algorithm.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-diffutr
  (package
    (name "r-diffutr")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "diffUTR" version))
       (sha256
        (base32 "1val7vwnky1wr6ghlgibmylll2ac31112i2yzbnp53wxsy1p9msc"))))
    (properties `((upstream-name . "diffUTR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridislite
                             r-summarizedexperiment
                             r-stringi
                             r-s4vectors
                             r-rtracklayer
                             r-rsubread
                             r-matrixstats
                             r-limma
                             r-iranges
                             r-ggrepel
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-ensembldb
                             r-edger
                             r-dplyr
                             r-dexseq
                             r-complexheatmap))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/diffUTR")
    (synopsis "diffUTR: Streamlining differential exon and 3' UTR usage")
    (description
     "The @code{diffUTR} package provides a uniform interface and plotting functions
for limma/@code{edgeR/DEXSeq} -powered differential bin/exon usage.  It includes
in addition an improved version of the limma::@code{diffSplice} method.  Most
importantly, @code{diffUTR} further extends the application of these frameworks
to differential UTR usage analysis using poly-A site databases.")
    (license license:gpl3)))

(define-public r-diffustats
  (package
    (name "r-diffustats")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "diffuStats" version))
       (sha256
        (base32 "0akv553s1127l8bf67g79gp45l0jcfxzjf23jickzn6agh8qcqk0"))))
    (properties `((upstream-name . "diffuStats")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcppparallel
                             r-rcpparmadillo
                             r-rcpp
                             r-precrec
                             r-plyr
                             r-matrix
                             r-mass
                             r-igraph
                             r-expm
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/diffuStats")
    (synopsis "Diffusion scores on biological networks")
    (description
     "Label propagation approaches are a widely used procedure in computational
biology for giving context to molecular entities using network data.  Node
labels, which can derive from gene expression, genome-wide association studies,
protein domains or metabolomics profiling, are propagated to their neighbours in
the network, effectively smoothing the scores through prior annotated knowledge
and prioritising novel candidates.  The R package @code{diffuStats} contains a
collection of diffusion kernels and scoring approaches that facilitates their
computation, characterisation and benchmarking.")
    (license license:gpl3)))

(define-public r-diffloopdata
  (package
    (name "r-diffloopdata")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "diffloopdata" version
                              'experiment))
       (sha256
        (base32 "0phajw0s8i1fac12z6nkv12pyg7b2ihdrvg76frvsvgfkcji84cm"))))
    (properties `((upstream-name . "diffloopdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/diffloopdata")
    (synopsis "Example ChIA-PET Datasets for the diffloop Package")
    (description
     "@code{ChIA-PET} example datasets and additional data for use with the diffloop
package.")
    (license license:expat)))

(define-public r-difflogo
  (package
    (name "r-difflogo")
    (version "2.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DiffLogo" version))
       (sha256
        (base32 "095m920njzh59g8w1ld21hi86dxir8a0lv5g2i5hai4pzx504f47"))))
    (properties `((upstream-name . "DiffLogo")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-cba))
    (home-page "https://github.com/mgledi/DiffLogo/")
    (synopsis "DiffLogo: A comparative visualisation of biooligomer motifs")
    (description
     "@code{DiffLogo} is an easy-to-use tool to visualize motif differences.")
    (license license:gpl2+)))

(define-public r-diffhic
  (package
    (name "r-diffhic")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "diffHic" version))
       (sha256
        (base32 "14awmyvwsd2lcm0k8xxfd5y4kq7ajqd81cv821x1hmhr320cyxm2"))))
    (properties `((upstream-name . "diffHic")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-rhtslib
                             r-rhdf5
                             r-rcpp
                             r-locfit
                             r-limma
                             r-iranges
                             r-interactionset
                             r-genomicranges
                             r-genomeinfodb
                             r-edger
                             r-csaw
                             r-bsgenome
                             r-biostrings
                             r-biocgenerics))
    (home-page "https://bioconductor.org/packages/diffHic")
    (synopsis "Differential Analysis of Hi-C Data")
    (description
     "Detects differential interactions across biological conditions in a Hi-C
experiment.  Methods are provided for read alignment and data pre-processing
into interaction counts.  Statistical analysis is based on @code{edgeR} and
supports normalization and filtering.  Several visualization options are also
available.")
    (license license:gpl3)))

(define-public r-diffgeneanalysis
  (package
    (name "r-diffgeneanalysis")
    (version "1.94.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "diffGeneAnalysis" version))
       (sha256
        (base32 "1i0xjcvysjrkv2634l7rlbqn39bakd8zk1kbdr45ra4j0z8ghnld"))))
    (properties `((upstream-name . "diffGeneAnalysis")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-minpack-lm))
    (home-page "https://bioconductor.org/packages/diffGeneAnalysis")
    (synopsis "Performs differential gene expression Analysis")
    (description "Analyze microarray data.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-differentialregulation
  (package
    (name "r-differentialregulation")
    (version "2.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DifferentialRegulation" version))
       (sha256
        (base32 "0x2kw42hslyknz7kp9z5yhccnm6pd0wpva275ivza5vrnxq4kky6"))))
    (properties `((upstream-name . "DifferentialRegulation")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tximport
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-rcpparmadillo
                             r-rcpp
                             r-matrix
                             r-mass
                             r-gridextra
                             r-ggplot2
                             r-foreach
                             r-dorng
                             r-doparallel
                             r-data-table
                             r-bandits))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/SimoneTiberi/DifferentialRegulation")
    (synopsis "Differentially regulated genes from scRNA-seq data")
    (description
     "@code{DifferentialRegulation} is a method for detecting differentially regulated
genes between two groups of samples (e.g., healthy vs. disease, or treated vs.
untreated samples), by targeting differences in the balance of spliced and
unspliced @code{mRNA} abundances, obtained from single-cell RNA-sequencing
(@code{scRNA-seq}) data.  From a mathematical point of view,
@code{DifferentialRegulation} accounts for the sample-to-sample variability, and
embeds multiple samples in a Bayesian hierarchical model.  Furthermore, our
method also deals with two major sources of mapping uncertainty: i) ambiguous
reads, compatible with both spliced and unspliced versions of a gene, and ii)
reads mapping to multiple genes.  In particular, ambiguous reads are treated
separately from spliced and unsplced reads, while reads that are compatible with
multiple genes are allocated to the gene of origin.  Parameters are inferred via
Markov chain Monte Carlo (MCMC) techniques (Metropolis-within-Gibbs).")
    (license license:gpl3)))

(define-public r-diffcoexp
  (package
    (name "r-diffcoexp")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "diffcoexp" version))
       (sha256
        (base32 "0wljqjl26s0nwgr7770jq3ydldqp0flz820xk8lndsjg411pr3c9"))))
    (properties `((upstream-name . "diffcoexp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wgcna
                             r-summarizedexperiment
                             r-psych
                             r-igraph
                             r-diffcorr
                             r-biocgenerics))
    (home-page "https://github.com/hidelab/diffcoexp")
    (synopsis "Differential Co-expression Analysis")
    (description
     "This package provides a tool for the identification of differentially
coexpressed links (DCLs) and differentially coexpressed genes (DCGs).  DCLs are
gene pairs with significantly different correlation coefficients under two
conditions.  DCGs are genes with significantly more DCLs than by chance.")
    (license (license:fsdg-compatible "GPL (>2)"))))

(define-public r-dfplyr
  (package
    (name "r-dfplyr")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DFplyr" version))
       (sha256
        (base32 "1xadlby3hwwdlz4iyybh18lhmad6xvy5613ix8hj4dx5lg88j77f"))))
    (properties `((upstream-name . "DFplyr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect r-s4vectors r-rlang r-dplyr
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jonocarroll/DFplyr")
    (synopsis "`DataFrame` (`S4Vectors`) backend for `dplyr`")
    (description
     "This package provides `dplyr` verbs (`mutate`, `select`, `filter`, etc...)
supporting `S4Vectors::@code{DataFrame`} objects.  Importantly, this is achieved
without conversion to an intermediate `tibble`.  Adds grouping infrastructure to
`@code{DataFrame`} which is respected by the transformation verbs.")
    (license license:gpl3)))

(define-public r-dfp
  (package
    (name "r-dfp")
    (version "1.70.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DFP" version))
       (sha256
        (base32 "0xdqfg9yxcnxhkznhjszx75rxxymqmyy1wp76qmwa3pchxr8vp7j"))))
    (properties `((upstream-name . "DFP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/DFP")
    (synopsis "Gene Selection")
    (description
     "This package provides a supervised technique able to identify differentially
expressed genes, based on the construction of \\emph{Fuzzy Patterns} (FPs).  The
Fuzzy Patterns are built by means of applying 3 Membership Functions to
discretized gene expression values.")
    (license license:gpl2)))

(define-public r-dexmadata
  (package
    (name "r-dexmadata")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DExMAdata" version
                              'experiment))
       (sha256
        (base32 "0rmh0vmncw4rg08gjyhzj0bb9n28q17n9qsz42znny6pgiyng5zg"))))
    (properties `((upstream-name . "DExMAdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/DExMAdata")
    (synopsis "Data package for DExMA package")
    (description
     "Data objects needed to @code{allSameID()} function of D@code{ExMA} package.
There are also some objects that are necessary to be able to apply the examples
of the D@code{ExMA} package, which illustrate package functionality.")
    (license license:gpl2)))

(define-public r-dexma
  (package
    (name "r-dexma")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DExMA" version))
       (sha256
        (base32 "1w18yzvz0h2qf61jmcc9ggs4vpxfgs62z8rpccsbw24fx841n2rz"))))
    (properties `((upstream-name . "DExMA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-swamp
                             r-sva
                             r-snpstats
                             r-scales
                             r-rcolorbrewer
                             r-plyr
                             r-pheatmap
                             r-limma
                             r-impute
                             r-geoquery
                             r-dexmadata
                             r-bnstruct
                             r-biobase))
    (home-page "https://bioconductor.org/packages/DExMA")
    (synopsis "Differential Expression Meta-Analysis")
    (description
     "performing all the steps of gene expression meta-analysis considering the
possible existence of missing genes.  It provides the necessary functions to be
able to perform the different methods of gene expression meta-analysis.  In
addition, it contains functions to apply quality controls, download GEO datasets
and show graphical representations of the results.")
    (license license:gpl2)))

(define-public r-dewseq
  (package
    (name "r-dewseq")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DEWSeq" version))
       (sha256
        (base32 "1jib6mwyx88v33s5r7kxsbdrcqsvxy3jc38cb0rzzcajdliq63d3"))))
    (properties `((upstream-name . "DEWSeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-seqinfo
                             r-s4vectors
                             r-r-utils
                             r-genomicranges
                             r-deseq2
                             r-data-table
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/EMBL-Hentze-group/DEWSeq/")
    (synopsis
     "Differential Expressed Windows Based on Negative Binomial Distribution")
    (description
     "DEWSeq is a sliding window approach for the analysis of differentially enriched
binding regions @code{eCLIP} or @code{iCLIP} next generation sequencing data.")
    (license license:lgpl3+)))

(define-public r-desubs
  (package
    (name "r-desubs")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DEsubs" version))
       (sha256
        (base32 "0nna21gl6pf5ckmrv42cm54ql7bqmgvw003qq8x1ih062dr2k8f4"))))
    (properties `((upstream-name . "DEsubs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rbgl
                             r-pheatmap
                             r-nbpseq
                             r-matrix
                             r-locfit
                             r-limma
                             r-jsonlite
                             r-igraph
                             r-graph
                             r-ggplot2
                             r-edger
                             r-ebseq
                             r-deseq2
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DEsubs")
    (synopsis
     "DEsubs: an R package for flexible identification of differentially expressed subpathways using RNA-seq expression experiments")
    (description
     "DEsubs is a network-based systems biology package that extracts
disease-perturbed subpathways within a pathway network as recorded by RNA-seq
experiments.  It contains an extensive and customizable framework covering a
broad range of operation modes at all stages of the subpathway analysis,
enabling a case-specific approach.  The operation modes refer to the pathway
network construction and processing, the subpathway extraction, visualization
and enrichment analysis with regard to various biological and pharmacological
features.  Its capabilities render it a tool-guide for both the modeler and
experimentalist for the identification of more robust systems-level biomarkers
for complex diseases.")
    (license license:gpl3)))

(define-public r-despace
  (package
    (name "r-despace")
    (version "2.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DESpace" version))
       (sha256
        (base32 "1xah4hs40339k07gw3kdnbr4615nin5443ax20q68d7ycn66cgjl"))))
    (properties `((upstream-name . "DESpace")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra
                             r-summarizedexperiment
                             r-spatstat-geom
                             r-spatstat-explore
                             r-spatialexperiment
                             r-sf
                             r-scuttle
                             r-scales
                             r-s4vectors
                             r-patchwork
                             r-matrix
                             r-limma
                             r-ggplot2
                             r-ggnewscale
                             r-ggforce
                             r-edger
                             r-dplyr
                             r-data-table
                             r-biocparallel
                             r-biocgenerics
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/peicai/DESpace")
    (synopsis
     "DESpace: a framework to discover spatially variable genes and differential spatial patterns across conditions")
    (description
     "Intuitive framework for identifying spatially variable genes (SVGs) and
differential spatial variable pattern (DSP) between conditions via @code{edgeR},
a popular method for performing differential expression analyses.  Based on
pre-annotated spatial clusters as summarized spatial information, DESpace models
gene expression using a negative binomial (NB), via @code{edgeR}, with spatial
clusters as covariates.  SVGs are then identified by testing the significance of
spatial clusters.  For multi-sample, multi-condition datasets, we again fit a NB
model via @code{edgeR}, incorporating spatial clusters, conditions and their
interactions as covariates.  DSP genes-representing differences in spatial gene
expression patterns across experimental conditions-are identified by testing the
interaction between spatial clusters and conditions.")
    (license license:gpl3)))

(define-public r-desousa2013
  (package
    (name "r-desousa2013")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DeSousa2013" version
                              'experiment))
       (sha256
        (base32 "0jmr4b7md73nirsp2gpxyf6vr6w77h8my4rhxqd1achadh9hm3sd"))))
    (properties `((upstream-name . "DeSousa2013")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sva
                             r-survival
                             r-siggenes
                             r-rocr
                             r-rgl
                             r-pamr
                             r-hgu133plus2frmavecs
                             r-hgu133plus2-db
                             r-gplots
                             r-frmatools
                             r-frma
                             r-consensusclusterplus
                             r-cluster
                             r-biobase
                             r-annotationdbi
                             r-affy))
    (home-page "https://bioconductor.org/packages/DeSousa2013")
    (synopsis
     "Poor prognosis colon cancer is defined by a molecularly distinct subtype and precursor lesion")
    (description
     "This package reproduces the main pipeline to analyze the AMC-AJCCII-90
microarray data set in De Sousa et al.  accepted by Nature Medicine in 2013.")
    (license license:artistic2.0)))

(define-public r-desingle
  (package
    (name "r-desingle")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DEsingle" version))
       (sha256
        (base32 "0s5mhb8ccfy3v429iir3m5jxzsr01mbd4wr44ihj6kr0irxiygsv"))))
    (properties `((upstream-name . "DEsingle")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vgam
                             r-pscl
                             r-maxlik
                             r-matrix
                             r-mass
                             r-gamlss
                             r-biocparallel
                             r-bbmle))
    (native-inputs (list r-knitr))
    (home-page "https://miaozhun.github.io/DEsingle/")
    (synopsis
     "DEsingle for detecting three types of differential expression in single-cell RNA-seq data")
    (description
     "DEsingle is an R package for differential expression (DE) analysis of
single-cell RNA-seq (@code{scRNA-seq}) data.  It defines and detects 3 types of
differentially expressed genes between two groups of single cells, with regard
to different expression status (DEs), differential expression abundance (DEa),
and general differential expression (DEg).  DEsingle employs Zero-Inflated
Negative Binomial model to estimate the proportion of real and dropout zeros and
to define and detect the 3 types of DE genes.  Results showed that DEsingle
outperforms existing methods for @code{scRNA-seq} DE analysis, and can reveal
different types of DE genes that are enriched in different biological functions.")
    (license license:gpl2)))

(define-public r-descan2
  (package
    (name "r-descan2")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DEScan2" version))
       (sha256
        (base32 "00b854yk5sf2c4s79jdgx2a0vs244kw23lljhv41vqckwf8cl72f"))))
    (properties `((upstream-name . "DEScan2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-seqinfo
                             r-s4vectors
                             r-rtracklayer
                             r-rcpparmadillo
                             r-rcpp
                             r-plyr
                             r-iranges
                             r-glue
                             r-genomicranges
                             r-genomicalignments
                             r-genomeinfodb
                             r-delayedarray
                             r-data-table
                             r-chippeakanno
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DEScan2")
    (synopsis "Differential Enrichment Scan 2")
    (description
     "Integrated peak and differential caller, specifically designed for broad
epigenomic signals.")
    (license license:artistic2.0)))

(define-public r-derfinderplot
  (package
    (name "r-derfinderplot")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "derfinderPlot" version))
       (sha256
        (base32 "13h0sg2ndyf5vy21mws9hzzwxf2wb8bhlk5i0fq04r32v5bzk5ql"))))
    (properties `((upstream-name . "derfinderPlot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-seqinfo
                             r-scales
                             r-s4vectors
                             r-reshape2
                             r-rcolorbrewer
                             r-plyr
                             r-limma
                             r-iranges
                             r-ggplot2
                             r-ggbio
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-derfinder))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/leekgroup/derfinderPlot")
    (synopsis "Plotting functions for derfinder")
    (description
     "This package provides plotting functions for results from the derfinder package.
 This helps separate the graphical dependencies required for making these plots
from the core functionality of derfinder.")
    (license license:artistic2.0)))

(define-public r-deqms
  (package
    (name "r-deqms")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DEqMS" version))
       (sha256
        (base32 "001pyjqchcq8gf6wjk2yv6aa3r1k2im28b2s3li1lx7i54l9jjaj"))))
    (properties `((upstream-name . "DEqMS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrixstats r-limma r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DEqMS")
    (synopsis
     "a tool to perform statistical analysis of differential protein expression for quantitative proteomics data")
    (description
     "D@code{EqMS} is developped on top of Limma.  However, Limma assumes same prior
variance for all genes.  In proteomics, the accuracy of protein abundance
estimates varies by the number of peptides/PSMs quantified in both label-free
and labelled data.  Proteins quantification by multiple peptides or PSMs are
more accurate.  D@code{EqMS} package is able to estimate different prior
variances for proteins quantified by different number of PSMs/peptides,
therefore acchieving better accuracy.  The package can be applied to analyze
both label-free and labelled proteomics data.")
    (license license:lgpl2.0+)))

(define-public r-depmap
  (package
    (name "r-depmap")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "depmap" version
                              'experiment))
       (sha256
        (base32 "16f6lhl8z2idh36sx5blfkn1x07awqy5l4ir0haigikkvjgps2x7"))))
    (properties `((upstream-name . "depmap")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-tibble
                             r-httr2
                             r-experimenthub
                             r-dplyr
                             r-curl
                             r-biocfilecache
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/depmap")
    (synopsis "Cancer Dependency Map Data Package")
    (description
     "The depmap package is a data package that accesses datsets from the Broad
Institute @code{DepMap} cancer dependency study using @code{ExperimentHub}.
Datasets from the most current release are available, including RNAI and
CRISPR-Cas9 gene knockout screens quantifying the genetic dependency for select
cancer cell lines.  Additional datasets are also available pertaining to the log
copy number of genes for select cell lines, protein expression of cell lines as
measured by reverse phase protein lysate microarray (RPPA), Transcript Per
Million (TPM) data, as well as supplementary datasets which contain metadata and
mutation calls for the other datasets found in the current release.  The 19Q3
release adds the drug_dependency dataset, that contains cancer cell line
dependency data with respect to drug and drug-candidate compounds.  The 20Q2
release adds the proteomic dataset that contains quantitative profiling of
proteins via mass spectrometry.  This package will be updated on a quarterly
basis to incorporate the latest Broad Institute @code{DepMap} Public cancer
dependency datasets.  All data made available in this package was generated by
the Broad Institute @code{DepMap} for research purposes and not intended for
clinical use.  This data is distributed under the Creative Commons license
(Attribution 4.0 International (CC BY 4.0)).")
    (license license:artistic2.0)))

(define-public r-depinfer
  (package
    (name "r-depinfer")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DepInfeR" version))
       (sha256
        (base32 "1p9375narsx05zdrqvgji3pkq0j7vl7mq6yyl1yyr9ylrzg9bm73"))))
    (properties `((upstream-name . "DepInfeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrixstats r-glmnet r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DepInfeR")
    (synopsis
     "Inferring tumor-specific cancer dependencies through integrating ex-vivo drug response assays and drug-protein profiling")
    (description
     "@code{DepInfeR} integrates two experimentally accessible input data matrices:
the drug sensitivity profiles of cancer cell lines or primary tumors ex-vivo
(X), and the drug affinities of a set of proteins (Y), to infer a matrix of
molecular protein dependencies of the cancers (ß). @code{DepInfeR} deconvolutes
the protein inhibition effect on the viability phenotype by using regularized
multivariate linear regression.  It assigns a “dependence coefficient” to each
protein and each sample, and therefore could be used to gain a causal and
accurate understanding of functional consequences of genomic aberrations in a
heterogeneous disease, as well as to guide the choice of pharmacological
intervention for a specific cancer type, sub-type, or an individual patient.
For more information, please read out preprint on @code{bioRxiv}:
https://doi.org/10.1101/2022.01.11.475864.")
    (license license:gpl3)))

(define-public r-denoist
  (package
    (name "r-denoist")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DenoIST" version))
       (sha256
        (base32 "1p1wl8qqw83hp72p2zkhmmwxhvs9sh5h6wz6kj87cswgjhb0yznm"))))
    (properties `((upstream-name . "DenoIST")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-spatialexperiment
                             r-sparsematrixstats
                             r-pbapply
                             r-matrix
                             r-hexbin
                             r-flexmix
                             r-dbscan))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/aaronkwc/DenoIST")
    (synopsis "DenoIST: Denoising Image-based Spatial Transcriptomics data")
    (description
     "@code{DenoIST} identifies and removes contamination in Image-based Spatial
Transcriptomics data, using a transposed poisson mixture model with local
neighbourhood offsets to infer genes that are likely to be due to neighbourhood
contamination rather than endogenous expression.")
    (license license:expat)))

(define-public r-demuxsnp
  (package
    (name "r-demuxsnp")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "demuxSNP" version))
       (sha256
        (base32 "1d331924ydjivj03x2g5fy7clrb8y1gy61l2m6412acwa8x9vgrs"))))
    (properties `((upstream-name . "demuxSNP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-seqinfo
                             r-matrixgenerics
                             r-matrix
                             r-kernelknn
                             r-iranges
                             r-ensembldb
                             r-dplyr
                             r-demuxmix
                             r-class
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/michaelplynch/demuxSNP")
    (synopsis "scRNAseq demultiplexing using cell hashing and SNPs")
    (description
     "This package assists in demultiplexing @code{scRNAseq} data using both cell
hashing and SNPs data.  The SNP profile of each group os learned using high
confidence assignments from the cell hashing data.  Cells which cannot be
assigned with high confidence from the cell hashing data are assigned to their
most similar group based on their SNPs.  We also provide some helper function to
optimise SNP selection, create training data and merge SNP data into the
@code{SingleCellExperiment} framework.")
    (license license:gpl3)))

(define-public r-demixt
  (package
    (name "r-demixt")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DeMixT" version))
       (sha256
        (base32 "09799x7f40qlv00m31azxgrkvx4i30h83lrv8sr1rjvkg4gmja62"))))
    (properties `((upstream-name . "DeMixT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-truncdist
                             r-sva
                             r-summarizedexperiment
                             r-s4vectors
                             r-rcpp
                             r-psych
                             r-pbapply
                             r-matrixstats
                             r-matrixcalc
                             r-magrittr
                             r-kernsmooth
                             r-ggplot2
                             r-fitdistrplus
                             r-dendextend
                             r-base64enc))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DeMixT")
    (synopsis
     "Cell type-specific deconvolution of heterogeneous tumor samples with two or three components using expression data from RNAseq or microarray platforms")
    (description
     "@code{DeMixT} is a software package that performs deconvolution on transcriptome
data from a mixture of two or three components.")
    (license license:gpl3)))

(define-public r-demand
  (package
    (name "r-demand")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DeMAND" version))
       (sha256
        (base32 "1ga5hywwxsmmckpf2980j9ivk885a4nxklqhpss0l2p6krpqfkdx"))))
    (properties `((upstream-name . "DeMAND")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-kernsmooth))
    (home-page "https://bioconductor.org/packages/DeMAND")
    (synopsis "DeMAND")
    (description
     "DEMAND predicts Drug @code{MoA} by interrogating a cell context specific
regulatory network with a small number (N >= 6) of compound-induced gene
expression signatures, to elucidate specific proteins whose interactions in the
network is dysregulated by the compound.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-deltagseg
  (package
    (name "r-deltagseg")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "deltaGseg" version))
       (sha256
        (base32 "1pl8j33p9qzcvdqpm6d9s0m6lp4rfdg4f9iqchldmpgy1izz40ld"))))
    (properties `((upstream-name . "deltaGseg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wavethresh
                             r-tseries
                             r-scales
                             r-reshape
                             r-pvclust
                             r-ggplot2
                             r-fbasics
                             r-changepoint))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/deltaGseg")
    (synopsis "deltaGseg")
    (description
     "Identifying distinct subpopulations through multiscale time series analysis.")
    (license license:gpl2)))

(define-public r-deltacapturec
  (package
    (name "r-deltacapturec")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "deltaCaptureC" version))
       (sha256
        (base32 "0har5zyaxpya7gc87hz1mjlj6dlyn53f2r1mywax6wa4jdkp6lmz"))))
    (properties `((upstream-name . "deltaCaptureC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tictoc
                             r-summarizedexperiment
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-deseq2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/deltaCaptureC")
    (synopsis
     "This Package Discovers Meso-scale Chromatin Remodeling from 3C Data")
    (description
     "This package discovers meso-scale chromatin remodelling from 3C data.  3C data
is local in nature.  It givens interaction counts between restriction enzyme
digestion fragments and a preferred viewpoint region.  By binning this data and
using permutation testing, this package can test whether there are statistically
significant changes in the interaction counts between the data from two cell
types or two treatments.")
    (license license:expat)))

(define-public r-delocal
  (package
    (name "r-delocal")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DELocal" version))
       (sha256
        (base32 "07113azshb4q89dpgvidqmhlnkq39nixagg3c9h7z27mbagxqw7h"))))
    (properties `((upstream-name . "DELocal")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-reshape2
                             r-matrixstats
                             r-limma
                             r-ggplot2
                             r-dplyr
                             r-deseq2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dasroy/DELocal")
    (synopsis
     "Identifies differentially expressed genes with respect to other local genes")
    (description
     "The goal of DELocal is to identify DE genes compared to their neighboring genes
from the same chromosomal location.  It has been shown that genes of related
functions are generally very far from each other in the chromosome.  DELocal
utilzes this information to identify DE genes comparing with their neighbouring
genes.")
    (license license:expat)))

(define-public r-delayedtensor
  (package
    (name "r-delayedtensor")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DelayedTensor" version))
       (sha256
        (base32 "03zq0508g972vmz1x2fr31yma9bg3hpyysj2rgdvdpzy0lhnd1rn"))))
    (properties `((upstream-name . "DelayedTensor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sparsearray
                             r-s4arrays
                             r-rtensor
                             r-matrix
                             r-irlba
                             r-hdf5array
                             r-einsum
                             r-delayedrandomarray
                             r-delayedarray
                             r-biocsingular))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DelayedTensor")
    (synopsis
     "R package for sparse and out-of-core arithmetic and decomposition of Tensor")
    (description
     "@code{DelayedTensor} operates Tensor arithmetic directly on @code{DelayedArray}
object. @code{DelayedTensor} provides some generic function related to Tensor
arithmetic/decompotision and dispatches it on the @code{DelayedArray} class.
@code{DelayedTensor} also suppors Tensor contraction by einsum function, which
is inspired by numpy einsum.")
    (license license:artistic2.0)))

(define-public r-delayedrandomarray
  (package
    (name "r-delayedrandomarray")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DelayedRandomArray" version))
       (sha256
        (base32 "0wr5l4yxjmq34qycby8avi03j803z3idbw649nivkfcgjrs7shbd"))))
    (properties `((upstream-name . "DelayedRandomArray")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sparsearray r-rcpp r-dqrng r-delayedarray r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/LTLA/DelayedRandomArray")
    (synopsis "Delayed Arrays of Random Values")
    (description
     "This package implements a @code{DelayedArray} of random values where the
realization of the sampled values is delayed until they are needed.
Reproducible sampling within any subarray is achieved by chunking where each
chunk is initialized with a different random seed and stream.  The usual
distributions in the stats package are supported, along with scalar, vector and
arrays for the parameters.")
    (license license:gpl3)))

(define-public r-delayeddataframe
  (package
    (name "r-delayeddataframe")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DelayedDataFrame" version))
       (sha256
        (base32 "0l4s7149dmbyakvckwp3k1aa6yclrp6qg2bn438hq04ybds7pz3j"))))
    (properties `((upstream-name . "DelayedDataFrame")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors r-delayedarray r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Bioconductor/DelayedDataFrame")
    (synopsis
     "Delayed operation on DataFrame using standard DataFrame metaphor")
    (description
     "Based on the standard @code{DataFrame} metaphor, we are trying to implement the
feature of delayed operation on the @code{DelayedDataFrame}, with a slot of
@code{lazyIndex}, which saves the mapping indexes for each column of
@code{DelayedDataFrame}.  Methods like show, validity check, [/[[ subsetting,
rbind/cbind are implemented for @code{DelayedDataFrame} to be operated around
@code{lazyIndex}.  The @code{listData} slot stays untouched until a realization
call e.g., @code{DataFrame} constructor OR @code{as.list()} is invoked.")
    (license license:gpl3)))

(define-public r-degseq
  (package
    (name "r-degseq")
    (version "1.66.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DEGseq" version))
       (sha256
        (base32 "06wfwzd55gmsmlpc1q4v3bys6n7cicjzss0d5h7pfqdf1zjw1ypm"))))
    (properties `((upstream-name . "DEGseq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-qvalue))
    (home-page "https://bioconductor.org/packages/DEGseq")
    (synopsis "Identify Differentially Expressed Genes from RNA-seq data")
    (description
     "DEGseq is an R package to identify differentially expressed genes from RNA-Seq
data.")
    (license (license:fsdg-compatible "LGPL (>=2)"))))

(define-public r-degraph
  (package
    (name "r-degraph")
    (version "1.64.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DEGraph" version))
       (sha256
        (base32 "13c6lrmphw3i8miwr9crqxygr5liq1z0ga86y34dlvwwdd8zkvi4"))))
    (properties `((upstream-name . "DEGraph")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rrcov
                             r-rgraphviz
                             r-rbgl
                             r-r-utils
                             r-r-methodss3
                             r-ncigraph
                             r-mvtnorm
                             r-lattice
                             r-kegggraph
                             r-graph))
    (home-page "https://bioconductor.org/packages/DEGraph")
    (synopsis "Two-sample tests on a graph")
    (description
     "DEGraph implements recent hypothesis testing methods which directly assess
whether a particular gene network is differentially expressed between two
conditions.  This is to be contrasted with the more classical two-step
approaches which first test individual genes, then test gene sets for enrichment
in differentially expressed genes.  These recent methods take into account the
topology of the network to yield more powerful detection procedures.  DEGraph
provides methods to easily test all KEGG pathways for differential expression on
any gene expression data set and tools to visualize the results.")
    (license license:gpl3)))

(define-public r-degnorm
  (package
    (name "r-degnorm")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DegNorm" version))
       (sha256
        (base32 "1rrmxrrmcylz4l4vy5zp97qbdwf0ns69vy0jmn62w5lwv523xdrc"))))
    (properties `((upstream-name . "DegNorm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-txdbmaker
                             r-s4vectors
                             r-rsamtools
                             r-rcpparmadillo
                             r-rcpp
                             r-plyr
                             r-plotly
                             r-iranges
                             r-heatmaply
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-foreach
                             r-doparallel
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DegNorm")
    (synopsis "DegNorm: degradation normalization for RNA-seq data")
    (description
     "This package performs degradation normalization in bulk RNA-seq data to improve
differential expression analysis accuracy.  It provides estimates for each gene
within each sample.")
    (license license:lgpl3+)))

(define-public r-degcre
  (package
    (name "r-degcre")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DegCre" version))
       (sha256
        (base32 "095a8dqr518hq7ni23j7czpmkn58q8qjrhac1941ij3qnkysrf6z"))))
    (properties `((upstream-name . "DegCre")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdb-hsapiens-ucsc-hg38-knowngene
                             r-seqinfo
                             r-s4vectors
                             r-qvalue
                             r-plotgardener
                             r-org-hs-eg-db
                             r-iranges
                             r-interactionset
                             r-genomicranges
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/brianSroberts/DegCre")
    (synopsis
     "Probabilistic association of DEGs to CREs from differential data")
    (description
     "@code{DegCre} generates associations between differentially expressed genes
(DEGs) and cis-regulatory elements (CREs) based on non-parametric concordance
between differential data.  The user provides GRanges of DEG TSS and CRE regions
with differential p-value and optionally log-fold changes and @code{DegCre}
returns an annotated Hits object with associations and their calculated
probabilities.  Additionally, the package provides functionality for
visualization and conversion to other formats.")
    (license license:expat)))

(define-public r-deformats
  (package
    (name "r-deformats")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DEFormats" version))
       (sha256
        (base32 "0vyal2ygz262zf3njzli0128dy5jmqk0h43lvpjl72v38s7l0jf4"))))
    (properties `((upstream-name . "DEFormats")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-genomicranges
                             r-edger
                             r-deseq2
                             r-data-table
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/aoles/DEFormats")
    (synopsis "Differential gene expression data formats converter")
    (description
     "Convert between different data formats used by differential gene expression
analysis tools.")
    (license license:gpl3)))

(define-public r-deeptarget
  (package
    (name "r-deeptarget")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DeepTarget" version))
       (sha256
        (base32 "08grv5fsw4wiywqqjxi1nll1q5hdwijaa95iv3743hwzxcs312c5"))))
    (properties `((upstream-name . "DeepTarget")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-readr
                             r-proc
                             r-ggpubr
                             r-ggplot2
                             r-fgsea
                             r-dplyr
                             r-depmap
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DeepTarget")
    (synopsis "Deep characterization of cancer drugs")
    (description
     "This package predicts a drug’s primary target(s) or secondary target(s) by
integrating large-scale genetic and drug screens from the Cancer Dependency Map
project run by the Broad Institute.  It further investigates whether the drug
specifically targets the wild-type or mutated target forms.  To show how to use
this package in practice, we provided sample data along with step-by-step
example.")
    (license license:gpl2)))

(define-public r-deeppincs
  (package
    (name "r-deeppincs")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DeepPINCS" version))
       (sha256
        (base32 "0nql0sfk84sdmqkcmyq1cwvvmyn9dy4j9clxm6mzjyrrqgjafk1d"))))
    (properties `((upstream-name . "DeepPINCS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-webchem
                             r-ttgsea
                             r-tokenizers
                             r-tensorflow
                             r-stringdist
                             r-reticulate
                             r-rcdk
                             r-purrr
                             r-prroc
                             r-matlab
                             r-keras
                             r-catencoders))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DeepPINCS")
    (synopsis
     "Protein Interactions and Networks with Compounds based on Sequences using Deep Learning")
    (description
     "The identification of novel compound-protein interaction (CPI) is important in
drug discovery.  Revealing unknown compound-protein interactions is useful to
design a new drug for a target protein by screening candidate compounds.  The
accurate CPI prediction assists in effective drug discovery process.  To
identify potential CPI effectively, prediction methods based on machine learning
and deep learning have been developed.  Data for sequences are provided as
discrete symbolic data.  In the data, compounds are represented as SMILES
(simplified molecular-input line-entry system) strings and proteins are
sequences in which the characters are amino acids.  The outcome is defined as a
variable that indicates how strong two molecules interact with each other or
whether there is an interaction between them.  In this package, a deep-learning
based model that takes only sequence information of both compounds and proteins
as input and the outcome as output is used to predict CPI. The model is
implemented by using compound and protein encoders with useful features.  The
CPI model also supports other modeling tasks, including protein-protein
interaction (PPI), chemical-chemical interaction (CCI), or single compounds and
proteins.  Although the model is designed for proteins, DNA and RNA can be used
if they are represented as sequences.")
    (license license:artistic2.0)))

(define-public r-deedeeexperiment
  (package
    (name "r-deedeeexperiment")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DeeDeeExperiment" version))
       (sha256
        (base32 "111cr7hspybw60jqhx3nv0fg090dxdfdmwf1zpzvgk9377kzfllf"))))
    (properties `((upstream-name . "DeeDeeExperiment")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-writexl
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-limma
                             r-edger
                             r-deseq2
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/imbeimainz/DeeDeeExperiment")
    (synopsis
     "DeeDeeExperiment: An S4 Class for managing and exploring omics analysis results")
    (description
     "@code{DeeDeeExperiment} is an S4 class extending the @code{SingleCellExperiment}
class, designed to integrate and manage omics analysis results.  It introduces
two dedicated slots to store Differential Expression Analysis (DEA) results and
Functional Enrichment Analysis (FEA) results, providing a structured approach
for downstream analysis.")
    (license license:expat)))

(define-public r-deconvobuddies
  (package
    (name "r-deconvobuddies")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DeconvoBuddies" version))
       (sha256
        (base32 "0s7mvrrxp885fjj85wfm17ix9wp068f2h963g1h4g1v4zrzlviay"))))
    (properties `((upstream-name . "DeconvoBuddies")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-spatiallibd
                             r-singlecellexperiment
                             r-scran
                             r-s4vectors
                             r-reshape2
                             r-rafalib
                             r-purrr
                             r-matrixgenerics
                             r-ggrepel
                             r-ggplot2
                             r-experimenthub
                             r-dplyr
                             r-delayedmatrixstats
                             r-biocparallel
                             r-biocfilecache
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/LieberInstitute/DeconvoBuddies")
    (synopsis "Helper Functions for LIBD Deconvolution")
    (description
     "This package provides functions helpful for LIBD deconvolution project.
Includes tools for marker finding with mean ratio, expression plotting, and
plotting deconvolution results.  Working to include DLPFC datasets.")
    (license license:artistic2.0)))

(define-public r-decontx
  (package
    (name "r-decontx")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "decontX" version))
       (sha256
        (base32 "0xp7ivfp001dk1ld64ziqxf698hx7z7z55v52gmkqwssv02jhssq"))))
    (properties `((upstream-name . "decontX")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr
                             r-summarizedexperiment
                             r-stanheaders
                             r-singlecellexperiment
                             r-seurat
                             r-scater
                             r-s4vectors
                             r-rstantools
                             r-rstan
                             r-reshape2
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-plyr
                             r-patchwork
                             r-mcmcprecision
                             r-matrix
                             r-ggplot2
                             r-delayedarray
                             r-dbscan
                             r-celda
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/decontX")
    (synopsis "Decontamination of single cell genomics data")
    (description
     "This package contains implementation of @code{DecontX} (Yang et al.  2020), a
decontamination algorithm for single-cell RNA-seq, and @code{DecontPro} (Yin et
al.  2023), a decontamination algorithm for single cell protein expression data.
@code{DecontX} is a novel Bayesian method to computationally estimate and remove
RNA contamination in individual cells without empty droplet information.
@code{DecontPro} is a Bayesian method that estimates the level of contamination
from ambient and background sources in CITE-seq ADT dataset and decontaminate
the dataset.")
    (license license:expat)))

(define-public r-decemedip
  (package
    (name "r-decemedip")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "decemedip" version))
       (sha256
        (base32 "1vz707wz29qh4bk0m8dbq5f40wxbzyxgy1xqvgd2b96ijxf2a3hy"))))
    (properties `((upstream-name . "decemedip")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-stanheaders
                             r-s4vectors
                             r-rstantools
                             r-rstan
                             r-rlang
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-r-utils
                             r-purrr
                             r-medips
                             r-matrixstats
                             r-matrix
                             r-magrittr
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-dplyr
                             r-cowplot
                             r-bh
                             r-bayesplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nshen7/decemedip")
    (synopsis
     "hierarchical Bayesian modeling for cell type deconvolution of immunoprecipitation-based DNA methylome")
    (description
     "The R package decemedip is a novel computational paradigm developed for
inferring the relative abundances of cell types and tissues measure by
methylated DNA immunoprecipitation sequencing (@code{MeDIP-Seq}).  This paradigm
allows using reference data from other technologies such as microarray or WGBS.")
    (license license:expat)))

(define-public r-debrowser
  (package
    (name "r-debrowser")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "debrowser" version))
       (sha256
        (base32 "0l9zk3ajaywwfa2ncmzdpp6a28g9y49digpgj2bx8v5009df3r8b"))))
    (properties `((upstream-name . "debrowser")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sva
                             r-summarizedexperiment
                             r-stringi
                             r-shinyjs
                             r-shinydashboard
                             r-shinybs
                             r-shiny
                             r-s4vectors
                             r-reshape2
                             r-rcurl
                             r-rcolorbrewer
                             r-plotly
                             r-pathview
                             r-org-mm-eg-db
                             r-org-hs-eg-db
                             r-limma
                             r-jsonlite
                             r-iranges
                             r-igraph
                             r-heatmaply
                             r-harman
                             r-gplots
                             r-ggplot2
                             r-genomicranges
                             r-enrichplot
                             r-edger
                             r-dt
                             r-dose
                             r-deseq2
                             r-colourpicker
                             r-clusterprofiler
                             r-ashr
                             r-apeglm
                             r-annotationdbi
                             r-annotate))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://github.com/UMMS-Biocore/debrowser")
    (synopsis "Interactive Differential Expresion Analysis Browser")
    (description
     "Bioinformatics platform containing interactive plots and tables for differential
gene and region expression studies.  Allows visualizing expression data much
more deeply in an interactive and faster way.  By changing the parameters, users
can easily discover different parts of the data that like never have been done
before.  Manually creating and looking these plots takes time.  With DEBrowser
users can prepare plots without writing any code.  Differential expression, PCA
and clustering analysis are made on site and the results are shown in various
plots such as scatter, bar, box, volcano, ma plots and Heatmaps.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-ddpcrclust
  (package
    (name "r-ddpcrclust")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ddPCRclust" version))
       (sha256
        (base32 "01lrnh2mjzj1z6izckxxa9v7x97ry4m4dsdam0r8m407jjkkrn41"))))
    (properties `((upstream-name . "ddPCRclust")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-samspectral
                             r-r-utils
                             r-plotrix
                             r-openxlsx
                             r-ggplot2
                             r-flowpeaks
                             r-flowdensity
                             r-flowcore
                             r-clue))
    (home-page "https://github.com/bgbrink/ddPCRclust")
    (synopsis "Clustering algorithm for ddPCR data")
    (description
     "The @code{ddPCRclust} algorithm can automatically quantify the CPDs of
non-orthogonal @code{ddPCR} reactions with up to four targets.  In order to
determine the correct droplet count for each target, it is crucial to both
identify all clusters and label them correctly based on their position.  For
more information on what data can be analyzed and how a template needs to be
formatted, please check the vignette.")
    (license license:artistic2.0)))

(define-public r-ddct
  (package
    (name "r-ddct")
    (version "1.68.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ddCt" version))
       (sha256
        (base32 "1ipwmrsfv706lg8dhhgb56xj8zldvmj0svcvmwvysd2syzs5nn8r"))))
    (properties `((upstream-name . "ddCt")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xtable r-rcolorbrewer r-lattice r-biocgenerics
                             r-biobase))
    (home-page "https://bioconductor.org/packages/ddCt")
    (synopsis
     "The ddCt Algorithm for the Analysis of Quantitative Real-Time PCR (qRT-PCR)")
    (description
     "The Delta-Delta-Ct (@code{ddCt}) Algorithm is an approximation method to
determine relative gene expression with quantitative real-time PCR
(@code{qRT-PCR}) experiments.  Compared to other approaches, it requires no
standard curve for each primer-target pair, therefore reducing the working load
and yet returning accurate enough results as long as the assumptions of the
amplification efficiency hold.  The @code{ddCt} package implements a pipeline to
collect, analyse and visualize @code{qRT-PCR} results, for example those from
@code{TaqMan} SDM software, mainly using the @code{ddCt} method.  The pipeline
can be either invoked by a script in command-line or through the API consisting
of S4-Classes, methods and functions.")
    (license license:lgpl3)))

(define-public r-dcgsa
  (package
    (name "r-dcgsa")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dcGSA" version))
       (sha256
        (base32 "1d1j2v3ymrjwyjjldmm3ak31yx9lhi21bpwjpqz61kslpd4i5m8v"))))
    (properties `((upstream-name . "dcGSA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrix r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/dcGSA")
    (synopsis
     "Distance-correlation based Gene Set Analysis for longitudinal gene expression profiles")
    (description
     "Distance-correlation based Gene Set Analysis for longitudinal gene expression
profiles.  In longitudinal studies, the gene expression profiles were collected
at each visit from each subject and hence there are multiple measurements of the
gene expression profiles for each subject.  The @code{dcGSA} package could be
used to assess the associations between gene sets and clinical outcomes of
interest by fully taking advantage of the longitudinal nature of both the gene
expression profiles and clinical outcomes.")
    (license license:gpl2)))

(define-public r-dcats
  (package
    (name "r-dcats")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DCATS" version))
       (sha256
        (base32 "1iypjvqfznf58k08ayj3r3b59y2lspd9xm2zs934pyx0l0n092sl"))))
    (properties `((upstream-name . "DCATS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-robustbase r-mcmcpack r-matrixstats r-e1071
                             r-aod))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DCATS")
    (synopsis
     "Differential Composition Analysis Transformed by a Similarity matrix")
    (description
     "This package provides methods to detect the differential composition abundances
between conditions in singel-cell RNA-seq experiments, with or without
replicates.  It aims to correct bias introduced by missclaisification and enable
controlling of confounding covariates.  To avoid the influence of proportion
change from big cell types, DCATS can use either total cell number or specific
reference group as normalization term.")
    (license license:expat)))

(define-public r-dcanr
  (package
    (name "r-dcanr")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dcanr" version))
       (sha256
        (base32 "1cxnaiafk0nwnhlgzq69n8dzyzjfynr6avxq3flxn5qz2fxaacf4"))))
    (properties `((upstream-name . "dcanr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-reshape2
                             r-rcolorbrewer
                             r-plyr
                             r-matrix
                             r-igraph
                             r-foreach
                             r-dorng
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://davislaboratory.github.io/dcanr/")
    (synopsis "Differential co-expression/association network analysis")
    (description
     "This package implements methods and an evaluation framework to infer
differential co-expression/association networks.  Various methods are
implemented and can be evaluated using simulated datasets.  Inference of
differential co-expression networks can allow identification of networks that
are altered between two conditions (e.g., health and disease).")
    (license license:gpl3)))

(define-public r-davidtiling
  (package
    (name "r-davidtiling")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "davidTiling" version
                              'experiment))
       (sha256
        (base32 "0ww06290zpsi9xmbkky8xm630w7p4yclpcf2drlkysxib6z2rhnb"))))
    (properties `((upstream-name . "davidTiling")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:substitutable? #f))
    (propagated-inputs (list r-tilingarray r-go-db r-biobase))
    (home-page "http://www.ebi.ac.uk/huber")
    (synopsis
     "Data and analysis scripts for David, Huber et al. yeast tiling array paper")
    (description
     "This package contains the data for the paper by L. David et al.  in PNAS 2006
(PMID 16569694): 8 CEL files of Affymetrix genechips, an @code{ExpressionSet}
object with the raw feature data, a probe annotation data structure for the chip
and the yeast genome annotation (GFF file) that was used.  In addition, some
custom-written analysis functions are provided, as well as R scripts in the
scripts directory.")
    (license license:lgpl2.0+)))

(define-public r-dart
  (package
    (name "r-dart")
    (version "1.60.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DART" version))
       (sha256
        (base32 "0adx550n4x7q4sfryfgnrgwpg1n5wz0p53g3ilqhimz6369p1sih"))))
    (properties `((upstream-name . "DART")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-igraph))
    (home-page "https://bioconductor.org/packages/DART")
    (synopsis "Denoising Algorithm based on Relevance network Topology")
    (description
     "Denoising Algorithm based on Relevance network Topology (DART) is an algorithm
designed to evaluate the consistency of prior information molecular signatures
(e.g in-vitro perturbation expression signatures) in independent molecular data
(e.g gene expression data sets).  If consistent, a pruning network strategy is
then used to infer the activation status of the molecular signature in
individual samples.")
    (license license:gpl2)))

(define-public r-dar
  (package
    (name "r-dar")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dar" version))
       (sha256
        (base32 "0p72dah8wccl8n9iiag7av0jg0ps2i4d68h35asayc25j7b2m1sj"))))
    (properties `((upstream-name . "dar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-upsetr
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-scales
                             r-rlang
                             r-readr
                             r-purrr
                             r-phyloseq
                             r-mia
                             r-magrittr
                             r-heatmaply
                             r-gplots
                             r-glue
                             r-ggplot2
                             r-generics
                             r-dplyr
                             r-crayon
                             r-complexheatmap
                             r-cli
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/MicrobialGenomics-IrsicaixaOrg/dar")
    (synopsis "Differential Abundance Analysis by Consensus")
    (description
     "Differential abundance testing in microbiome data challenges both parametric and
non-parametric statistical methods, due to its sparsity, high variability and
compositional nature.  Microbiome-specific statistical methods often assume
classical distribution models or take into account compositional specifics.
These produce results that range within the specificity vs sensitivity space in
such a way that type I and type II error that are difficult to ascertain in real
microbiome data when a single method is used.  Recently, a consensus approach
based on multiple differential abundance (DA) methods was recently suggested in
order to increase robustness.  With dar, you can use dplyr-like pipeable
sequences of DA methods and then apply different consensus strategies.  In this
way we can obtain more reliable results in a fast, consistent and reproducible
way.")
    (license license:expat)))

(define-public r-dapardata
  (package
    (name "r-dapardata")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DAPARdata" version
                              'experiment))
       (sha256
        (base32 "1rxi6dp93v8xkr57gv8amp4i12pfmxknpy7xrm6q5jn56v6kv1pf"))))
    (properties `((upstream-name . "DAPARdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-msnbase))
    (native-inputs (list r-knitr))
    (home-page "http://www.prostar-proteomics.org/")
    (synopsis "Data accompanying the DAPAR and Prostar packages")
    (description
     "Mass-spectrometry based UPS proteomics data sets from Ramus C, Hovasse A,
Marcellin M, Hesse AM, Mouton-Barbosa E, Bouyssie D, Vaca S, Carapito C, Chaoui
K, Bruley C, Garin J, Cianferani S, Ferro M, Dorssaeler AV, Burlet-Schiltz O,
Schaeffer C, Coute Y, Gonzalez de Peredo A. Spiked proteomic standard dataset
for testing label-free quantitative software and statistical methods.  Data
Brief.  2015 Dec 17;6:286-94 and Giai Gianetto, Q., Combes, F., Ramus, C.,
Bruley, C., Coute, Y., Burger, T. (2016).  Calibration plot for proteomics: A
graphical tool to visually check the assumptions underlying FDR control in
quantitative experiments.  Proteomics, 16(1), 29-32.")
    (license license:gpl2)))

(define-public r-dapar
  (package
    (name "r-dapar")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DAPAR" version))
       (sha256
        (base32 "120qnbwvak39dgxrkcgrnd266hwjhwfc4wan8h526xdr43labhry"))))
    (properties `((upstream-name . "DAPAR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plotly r-msnbase r-foreach r-dapardata
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "http://www.prostar-proteomics.org/")
    (synopsis
     "Tools for the Differential Analysis of Proteins Abundance with R")
    (description
     "The package DAPAR is a Bioconductor distributed R package which provides all the
necessary functions to analyze quantitative data from label-free proteomics
experiments.  Contrarily to most other similar R packages, it is endowed with
rich and user-friendly graphical interfaces, so that no programming skill is
required (see `Prostar` package).")
    (license license:artistic2.0)))

(define-public r-dandelionr
  (package
    (name "r-dandelionr")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dandelionR" version))
       (sha256
        (base32 "1szzhxs504jyqhzdw27ccsymkvxb0gzrhz3aajmvckq08flxbajz"))))
    (properties `((upstream-name . "dandelionR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-uwot
                             r-summarizedexperiment
                             r-spam
                             r-singlecellexperiment
                             r-s4vectors
                             r-rlang
                             r-rann
                             r-purrr
                             r-milor
                             r-matrix
                             r-mass
                             r-igraph
                             r-destiny
                             r-bluster
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://www.github.com/tuonglab/dandelionR/")
    (synopsis "Single-cell Immune Repertoire Trajectory Analysis in R")
    (description
     "@code{dandelionR} is an R package for performing single-cell immune repertoire
trajectory analysis, based on the original python implementation.  It provides
the necessary functions to interface with @code{scRepertoire} and a custom
implementation of an absorbing Markov chain for pseudotime inference, inspired
by the Palantir Python package.")
    (license license:expat)))

(define-public r-damsel
  (package
    (name "r-damsel")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Damsel" version))
       (sha256
        (base32 "1kzr4iy4hpj13984krgix8wdjak07qzg87p1c84v0f8557s2skiv"))))
    (properties `((upstream-name . "Damsel")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rsubread
                             r-rsamtools
                             r-rlang
                             r-reshape2
                             r-plyranges
                             r-patchwork
                             r-magrittr
                             r-goseq
                             r-ggplot2
                             r-ggbio
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-edger
                             r-dplyr
                             r-complexheatmap
                             r-biostrings
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Oshlack/Damsel")
    (synopsis "Damsel: an end to end analysis of DamID")
    (description
     "Damsel provides an end to end analysis of @code{DamID} data.  Damsel takes bam
files from Dam-only control and fusion samples and counts the reads matching to
each GATC region. @code{edgeR} is utilised to identify regions of enrichment in
the fusion relative to the control.  Enriched regions are combined into peaks,
and are associated with nearby genes.  Damsel allows for IGV style plots to be
built as the results build, inspired by ggcoverage, and using the functionality
and layering ability of ggplot2.  Damsel also conducts gene ontology testing
with bias correction through goseq, and future versions of Damsel will also
incorporate motif enrichment analysis.  Overall, Damsel is the first package
allowing for an end to end analysis with visual capabilities.  The goal of
Damsel was to bring all the analysis into one place, and allow for exploratory
analysis within R.")
    (license license:expat)))

(define-public r-damirseq
  (package
    (name "r-damirseq")
    (version "2.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DaMiRseq" version))
       (sha256
        (base32 "1qcksqv03cjy632zb3qvmydcx67mmm9mb6czzbj2mz59cclfi745"))))
    (properties `((upstream-name . "DaMiRseq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sva
                             r-summarizedexperiment
                             r-seqinfo
                             r-rsnns
                             r-reshape2
                             r-rcolorbrewer
                             r-randomforest
                             r-plyr
                             r-plsvarsel
                             r-pls
                             r-pheatmap
                             r-mass
                             r-lubridate
                             r-limma
                             r-kknn
                             r-ineq
                             r-hmisc
                             r-ggplot2
                             r-fselector
                             r-factominer
                             r-edger
                             r-edaseq
                             r-e1071
                             r-deseq2
                             r-corrplot
                             r-caret
                             r-arm))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DaMiRseq")
    (synopsis
     "Data Mining for RNA-seq data: normalization, feature selection and classification")
    (description
     "The @code{DaMiRseq} package offers a tidy pipeline of data mining procedures to
identify transcriptional biomarkers and exploit them for both binary and
multi-class classification purposes.  The package accepts any kind of data
presented as a table of raw counts and allows including both continous and
factorial variables that occur with the experimental setting.  A series of
functions enable the user to clean up the data by filtering genomic features and
samples, to adjust data by identifying and removing the unwanted source of
variation (i.e.  batches and confounding factors) and to select the best
predictors for modeling.  Finally, a \"stacking\" ensemble learning technique is
applied to build a robust classification model.  Every step includes a
checkpoint that the user may exploit to assess the effects of data management by
looking at diagnostic plots, such as clustering and heatmaps, RLE boxplots, MDS
or correlation plot.")
    (license license:gpl2+)))

(define-public r-damidbind
  (package
    (name "r-damidbind")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "damidBind" version))
       (sha256
        (base32 "18lj470hbrgl50nxq9i84hap7yp9w5idva7hf54wg5kwdxmzncgb"))))
    (properties `((upstream-name . "damidBind")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-shiny
                             r-scales
                             r-s4vectors
                             r-rtracklayer
                             r-rlang
                             r-patchwork
                             r-noiseq
                             r-limma
                             r-iranges
                             r-igvshiny
                             r-ggrepel
                             r-ggplot2
                             r-ggnewscale
                             r-genomicranges
                             r-genomeinfodb
                             r-fs
                             r-forcats
                             r-ensembldb
                             r-enrichplot
                             r-dt
                             r-dplyr
                             r-dbscan
                             r-dbi
                             r-complexheatmap
                             r-colorspace
                             r-clusterprofiler
                             r-circlize
                             r-biovenn
                             r-biocparallel
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://marshall-lab.org/damidBind")
    (synopsis
     "Differential Binding and Expression Analysis for DamID-seq Data")
    (description
     "The @code{damidBind} package provides a straightforward formal analysis pipeline
to analyse and explore differential @code{DamID} binding, gene transcription or
chromatin accessibility between two conditions.  The package imports processed
data from @code{DamID-seq} experiments, either as external raw files in the form
of binding @code{bedGraphs} and GFF/BED peak calls, or as internal lists of
GRanges objects.  After optionally normalising data, combining peaks across
replicates and determining per-replicate peak occupancy, the package links bound
loci to nearby genes.  For RNA Polymerase @code{DamID} data, the package
calculates occupancy over genes, and optionally calcualates the FDR of
significantly-enriched gene occupancy. @code{damidBind} then uses either limma
(for conventional log2 ratio @code{DamID} binding data) or NOIseq (for
counts-based CA@code{TaDa} chromatin accessibility data) to identify
differentially-enriched regions, or differentially epxressed genes, between two
conditions.  The package provides a number of visualisation tools (volcano
plots, Gene Ontology enrichment plots via @code{ClusterProfiler} and
proportional Venn diagrams via @code{BioVenn} for downstream data exploration
and analysis.  An powerful, interactive IGV genome browser interface (powered by
Shiny and @code{igvShiny}) allows users to rapidly and intuitively assess
significant differentially-bound regions in their genomic context.")
    (license license:gpl3)))

(define-public r-daglogo
  (package
    (name "r-daglogo")
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dagLogo" version))
       (sha256
        (base32 "1qfz2mbyvlh5rzxqysv6jzaparik5rpzk5z25f380089fsfblwa4"))))
    (properties `((upstream-name . "dagLogo")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-uniprot-ws
                             r-pheatmap
                             r-motifstack
                             r-httr
                             r-biostrings
                             r-biomart
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/dagLogo")
    (synopsis
     "dagLogo: a Bioconductor package for visualizing conserved amino acid sequence pattern in groups based on probability theory")
    (description
     "Visualize significant conserved amino acid sequence pattern in groups based on
probability theory.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

