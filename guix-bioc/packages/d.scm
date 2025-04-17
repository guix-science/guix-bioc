(define-module (guix-bioc packages d)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages statistics)
  #:use-module (guix-cran packages m)
  #:use-module (guix-cran packages c)
  #:use-module (guix-cran packages n)
  #:use-module (guix-cran packages b)
  #:use-module (gnu packages web)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages s)
  #:use-module (gnu packages bioinformatics)
  #:use-module (guix-cran packages k)
  #:use-module (guix-cran packages w)
  #:use-module (guix-cran packages e)
  #:use-module (guix-cran packages r)
  #:use-module (guix-cran packages g)
  #:use-module (guix-cran packages h)
  #:use-module (guix-cran packages p)
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dyebiasexamples" version
                              'experiment))
       (sha256
        (base32 "10vqaqdzs0c24slx2qnjbzah0rf69x76i7qssarcpgqpv35qm6vl"))))
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
    (version "1.66.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dyebias" version))
       (sha256
        (base32 "0fgm33jshsxidrba1kqsnkkhzsfl8a2jwrwf69nljj36f6nn264l"))))
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
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DvDdata" version
                              'experiment))
       (sha256
        (base32 "034dj6z8drk45w3v2izivrn6q5gwbyy3dc515ayj4irf756r5555"))))
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
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dupRadar" version))
       (sha256
        (base32 "0pwp43w4w2xsbc8kq1x8svz35s3p116jwr3a4z895d0fizlyhahn"))))
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
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DuplexDiscovereR" version))
       (sha256
        (base32 "0x44mf83n23gqpknhyv5lqhibaasx0h81mci4g02klisp81a2gab"))))
    (properties `((upstream-name . "DuplexDiscovereR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DuoClustering2018" version
                              'experiment))
       (sha256
        (base32 "1cf08ydsg8hj4klbl9wga0dmjabqq77rg22jms1dimpmf15a1vjk"))))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Dune" version))
       (sha256
        (base32 "0clqfw8qc56y92q8xmpgknvc2gp2g4pailzfd9s428nihxn1448l"))))
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
    (version "2.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DTA" version))
       (sha256
        (base32 "04piid5sp39r9xfgxz6kiicf47608yisxdmb1rfjkx4sjkwxwwfl"))))
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dStruct" version))
       (sha256
        (base32 "0xa4lx5fj8w8biqnnfj2ks744bf7vprv8swa3lkds1nr8ydg1xzx"))))
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

(define-public r-drugvsdiseasedata
  (package
    (name "r-drugvsdiseasedata")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DrugVsDiseasedata" version
                              'experiment))
       (sha256
        (base32 "18qgs1r86v35jm4d3m8cb81cz92m3rghx7wwvlshflfw581r5anb"))))
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
    (version "2.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DrugVsDisease" version))
       (sha256
        (base32 "165n6dcsayqs2s4s2xpmxrwyfb6fpakdyb1dsbndycpar48dh0vi"))))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "drugTargetInteractions" version))
       (sha256
        (base32 "0vlxc360k0qz1sljw9nxx5bw0y9kzyxpr28fj13a2psdr6zmgmjp"))))
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DropletTestFiles" version
                              'experiment))
       (sha256
        (base32 "18js640mf07yx0hxswbyqpdq2iaf7rzpmz1alazx9yayzwlk7fhm"))))
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DriverNet" version))
       (sha256
        (base32 "17rl5drdsj8c7dr1cpsj9q654pi5jrk3n6y4rlhaw2yi10gjprmv"))))
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
    (version "0.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dressCheck" version
                              'experiment))
       (sha256
        (base32 "0k9lyibpnf87rcna233fjmr0gmw4dbrsa8ddbv37a2xy8clsli3j"))))
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
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dreamlet" version))
       (sha256
        (base32 "0vbmqlv9ab5zqcwliszr6rxqac3fafdd0jdm9ggp6hl334rwc3m8"))))
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
                             r-rdpack
                             r-rcpp
                             r-purrr
                             r-metafor
                             r-matrixgenerics
                             r-matrix
                             r-mass
                             r-mashr
                             r-lme4
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "drawProteins" version))
       (sha256
        (base32 "1kzjni6nyacjyjvrwqrr3pnh93cjhxzylrwm38wfpnmp1ng94mgl"))))
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
    (version "1.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "doubletrouble" version))
       (sha256
        (base32 "0lz5kxzfc4lszamx3991310xxv2xcik3xiwc3ns4x5ayqmzsjdys"))))
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

(define-public r-doser
  (package
    (name "r-doser")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "doseR" version))
       (sha256
        (base32 "1knc4gzblakcngg77gbwickr5rj665wqayqwc1wvc5yhgdp7k04q"))))
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Doscheda" version))
       (sha256
        (base32 "0xix7bh9cvyjr24lciwrah4ag4b9hsydkqivh7fv7kvdi63ayy00"))))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dorothea" version
                              'experiment))
       (sha256
        (base32 "1s2kj3x1206cq61ncivizq8shscsdjwmc2g2493d6cqip0am47rw"))))
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

(define-public r-doppelgangr
  (package
    (name "r-doppelgangr")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "doppelgangR" version))
       (sha256
        (base32 "1hhb6cbpx1w4g8m5f6gxghvnlizsmc91hz75jb75h3rgqrr6j1ns"))))
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
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DonaPLLP2013" version
                              'experiment))
       (sha256
        (base32 "0swc6a2pfk4rmd4am3y34xifmrcys4wyz8x6rmdncbzq6v78vjcm"))))
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
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dominoSignal" version))
       (sha256
        (base32 "0lkd7w5j68ilzfzlgm275ic6ispiqbjmk6zjrjgggpb0nq7i67lm"))))
    (properties `((upstream-name . "dominoSignal")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plyr
                             r-matrix
                             r-igraph
                             r-ggpubr
                             r-complexheatmap
                             r-circlize
                             r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://fertiglab.github.io/dominoSignal/")
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DominoEffect" version))
       (sha256
        (base32 "0b7b2kgx0vr3nwiwmd9044a6sf36aplvh2gr8x4v656rgvws6adh"))))
    (properties `((upstream-name . "DominoEffect")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-summarizedexperiment
                             r-pwalign
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
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

(define-public r-dnazoodata
  (package
    (name "r-dnazoodata")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DNAZooData" version
                              'experiment))
       (sha256
        (base32 "042wk00vhc98p847fsja3hc8bp0076yn8b3nfi6khrgjr2cfrfns"))))
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
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DNAshapeR" version))
       (sha256
        (base32 "1dshmby6jxs2qizz87k7ad5i2cbzidliarkcm3s6r7s6dfak3r2n"))))
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
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DNAfusion" version))
       (sha256
        (base32 "0c9m0952ypgr19fzkydcy5sckdi2snvanrlgm59hnjyj6q524xbf"))))
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
                             r-biocbaseutils
                             r-bamsignals))
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

(define-public r-dnabarcodecompatibility
  (package
    (name "r-dnabarcodecompatibility")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DNABarcodeCompatibility" version))
       (sha256
        (base32 "1rhll5bmy85kk89g1v5yk0j3zm22pkf6rbq1agxb07lll4nlim01"))))
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

(define-public r-dmrscan
  (package
    (name "r-dmrscan")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DMRScan" version))
       (sha256
        (base32 "1nkw0njm6ghmagj3k87yxhx7w0zf5plpajcgv137hawmwyzllqp4"))))
    (properties `((upstream-name . "DMRScan")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpproll
                             r-mvtnorm
                             r-matrix
                             r-mass
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb))
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
    (version "2.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DMRcatedata" version
                              'experiment))
       (sha256
        (base32 "0w6mv0zclrnr897xjrsgbm3bki3mmvbafzdhj9bl55v07438wh7i"))))
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
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DMRcaller" version))
       (sha256
        (base32 "0zhviryy86ml9gk8mmr2dixmdyrhgajjydc4d0xmskhslyd3q9r5"))))
    (properties `((upstream-name . "DMRcaller")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rcpproll
                             r-rcpp
                             r-iranges
                             r-genomicranges
                             r-betareg))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DMRcaller")
    (synopsis "Differentially Methylated Regions caller")
    (description
     "Uses Bisulfite sequencing data in two conditions and identifies differentially
methylated regions between the conditions in CG and non-CG context.  The input
is the CX report files produced by Bismark and the output is a list of DMRs
stored as GRanges objects.")
    (license license:gpl3)))

(define-public r-dmelsgi
  (package
    (name "r-dmelsgi")
    (version "1.37.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DmelSGI" version
                              'experiment))
       (sha256
        (base32 "023ynaky11cc33ksmq8s77m17rlr45mp33bzrzaqija64z01rgih"))))
    (properties `((upstream-name . "DmelSGI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tsp
                             r-rhdf5
                             r-limma
                             r-knitr
                             r-igraph
                             r-gplots
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DmelSGI")
    (synopsis
     "Experimental data and documented source code for the paper \"A Map of Directional Genetic Interactions in a Metazoan Cell\"")
    (description
     "The package contains the experimental data and documented source code of the
manuscript \"Fischer et al., A Map of Directional Genetic Interactions in a
Metazoan Cell, @code{eLife}, 2015, in Press.\".  The vignette code generates all
figures in the paper.")
    (license license:artistic2.0)))

(define-public r-dmchmm
  (package
    (name "r-dmchmm")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DMCHMM" version))
       (sha256
        (base32 "1hb55m1z4da92bmlqzm0yvp5bsflf9c4kvl0jf0wpawz0xdz71fi"))))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DMCFB" version))
       (sha256
        (base32 "1sm2gixy4jf4aiycd5nbfmfdr9qzm6qasaak9cc7q2jd86q3ciaz"))))
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DLBCL" version
                              'experiment))
       (sha256
        (base32 "0lw6554la5ihfp93idxy4pcp3iack03ng7f6pik109mijwnd68rq"))))
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
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dks" version))
       (sha256
        (base32 "04m3klghrwjc3pbpv4i5d0sfq8i3ypj3jb42w8pwlx5am7jacmjy"))))
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "divergence" version))
       (sha256
        (base32 "0qfs95j5541bfqb88lkvyk5nd96m68jiz3y54ifrdrfbp15hcrrs"))))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "distinct" version))
       (sha256
        (base32 "13f711z8yqv23565qi7qh5p5b5dpaicrkqg4xdd1iw7aly5wshyv"))))
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DiscoRhythm" version))
       (sha256
        (base32 "1325b75svg47mknfq31z0v14bc58zm21gl2nqpwb1g49nlscgl8j"))))
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "discordant" version))
       (sha256
        (base32 "1404g5g1gvqym6xqpq03j5v9wfhkb822mdjk6mf4kxyh4ii1xr5d"))))
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

(define-public r-director
  (package
    (name "r-director")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Director" version))
       (sha256
        (base32 "1acfr9m1hbl4ji5i5dv7i9byg9abgfncqqnam5c6lksmh5wh0cyv"))))
    (properties `((upstream-name . "Director")))
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
    (propagated-inputs (list r-htmltools))
    (native-inputs (list esbuild))
    (home-page "https://github.com/kzouchka/Director")
    (synopsis "dynamic visualization tool of multi-level data")
    (description
     "Director is an R package designed to streamline the visualization of molecular
effects in regulatory cascades.  It utilizes the R package htmltools and a
modified Sankey plugin of the @code{JavaScript} library D3 to provide a fast and
easy, browser-enabled solution to discovering potentially interesting downstream
effects of regulatory and/or co-expressed molecules.  The diagrams are robust,
interactive, and packaged as highly-portable HTML files that eliminate the need
for third-party software to view.  This enables a straightforward approach for
scientists to interpret the data produced, and bioinformatics developers an
alternative means to present relevant data.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-dinor
  (package
    (name "r-dinor")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dinoR" version))
       (sha256
        (base32 "19q0223jqj7ag04r6gz6may5y66j01r6lv15dppqhv49icqnnd4a"))))
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Dino" version))
       (sha256
        (base32 "19hykazb6ysax10n1zpfsxabjhv9nnkm14awyxh5iskd0n4s6fxp"))))
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
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "diggitdata" version
                              'experiment))
       (sha256
        (base32 "0ar99whdbnq13cqxcsmvj64iqr1p8d9vrb3gbm4f26w1chm2crl0"))))
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
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "diggit" version))
       (sha256
        (base32 "1x5pk95nwcz17gjrjj7vxyn2ci75qmjq054sj6p23ax2lplsvnir"))))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "diffUTR" version))
       (sha256
        (base32 "1grga6078841abgchq6baks0i0rc108b12jn8j9f7k0v8a4kmcvx"))))
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "diffuStats" version))
       (sha256
        (base32 "1kl5nirs0n8x51p2x3yggn483hxwrgm2a301lky418fm1jvd0kv3"))))
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
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "diffloopdata" version
                              'experiment))
       (sha256
        (base32 "000zmrcic50mbx3byxpjn66ancpd3mp4dp7zn2dqd1g5d17j7xxg"))))
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
    (version "2.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DiffLogo" version))
       (sha256
        (base32 "0qqs31xdl5nvir60vsbz286fh3qfpng4j82vk9fs1l77isz43251"))))
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
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "diffHic" version))
       (sha256
        (base32 "095fpc8llijrbv51qp7gq5pniwwm5ggypipzgr9lnzbrlpi17qp8"))))
    (properties `((upstream-name . "diffHic")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zlibbioc
                             r-summarizedexperiment
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
    (version "1.88.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "diffGeneAnalysis" version))
       (sha256
        (base32 "13rgdp2pycin7f1818yzc6a2ns9i5cj41g0dp0kg72qz9fjq685g"))))
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
    (version "2.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DifferentialRegulation" version))
       (sha256
        (base32 "1vdch5dlrh0izq6ng9hkmnv9yn87vqq88iyj87bd90lv5ig9rz71"))))
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "diffcoexp" version))
       (sha256
        (base32 "1wwpjw7vxz3572h2yy26cfinc314x10zcsjx7am0cynkzb16cidx"))))
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
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DFplyr" version))
       (sha256
        (base32 "1vmk7zvcb11397r1x92vgc827azrm4dz1qcl255nvmpc4cxdl8xw"))))
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
    (version "1.64.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DFP" version))
       (sha256
        (base32 "0vq2pswzd3b47ld8scgbbi53yj06928d79pqk2lyscz8lz4mxqhq"))))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DExMAdata" version
                              'experiment))
       (sha256
        (base32 "0i7d5cswh0gpyl0dj0ww34xy1m0gjzzssll5xjch9n4i4gq0kzs9"))))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DExMA" version))
       (sha256
        (base32 "0kyjwwh6f4bpa9vpl4jbm629570q7mlfvyw8cv8c0jmbnx54rksz"))))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DEWSeq" version))
       (sha256
        (base32 "1rsw08v510mx17lsw9913arwznifphdxa5vcq51v8z0pp7lvvdvw"))))
    (properties `((upstream-name . "DEWSeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-r-utils
                             r-genomicranges
                             r-genomeinfodb
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DEsubs" version))
       (sha256
        (base32 "106304xck9qs463lay2j9ncv7x7w4bg79phmbqcy0y888apia9nd"))))
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
    (version "1.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DESpace" version))
       (sha256
        (base32 "0z1fhd6axin10avkbf6547ilb2dmq2r3w42dss122gp0v53chf8p"))))
    (properties `((upstream-name . "DESpace")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-spatialexperiment
                             r-scales
                             r-s4vectors
                             r-patchwork
                             r-matrix
                             r-limma
                             r-ggpubr
                             r-ggplot2
                             r-ggnewscale
                             r-ggforce
                             r-edger
                             r-dplyr
                             r-data-table
                             r-cowplot
                             r-biocparallel
                             r-biocgenerics
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/peicai/DESpace")
    (synopsis "DESpace: a framework to discover spatially variable genes")
    (description
     "Intuitive framework for identifying spatially variable genes (SVGs) via
@code{edgeR}, a popular method for performing differential expression analyses.
Based on pre-annotated spatial clusters as summarized spatial information,
DESpace models gene expression using a negative binomial (NB), via @code{edgeR},
with spatial clusters as covariates.  SVGs are then identified by testing the
significance of spatial clusters.  The method is flexible and robust, and is
faster than the most SV methods.  Furthermore, to the best of our knowledge, it
is the only SV approach that allows: - performing a SV test on each individual
spatial cluster, hence identifying the key regions of the tissue affected by
spatial variability; - jointly fitting multiple samples, targeting genes with
consistent spatial patterns across replicates.")
    (license license:gpl3)))

(define-public r-desousa2013
  (package
    (name "r-desousa2013")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DeSousa2013" version
                              'experiment))
       (sha256
        (base32 "0kyaycn5i1dxllzakc8m837apd4fj57d2ddsx01wb4zqk7dpsk2k"))))
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DEsingle" version))
       (sha256
        (base32 "1kb3sm43l7jhf253r1091pypksnhzp3jgi4ddapjhmkgh6p32xy5"))))
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DEScan2" version))
       (sha256
        (base32 "1j6rizkwwynkl06fvrff0dbba5wpyhkg3pnh13f9ldqgd2nycy8n"))))
    (properties `((upstream-name . "DEScan2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
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
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "derfinderPlot" version))
       (sha256
        (base32 "08bzrciqs32gjz1js2505lp11bhvbclaj96js1v5h9454ab7zkw4"))))
    (properties `((upstream-name . "derfinderPlot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DEqMS" version))
       (sha256
        (base32 "1y0vjm7a64iwwsgd4pgvrlgrqwbd03p4sss4ggg4k29bgyjv36xi"))))
    (properties `((upstream-name . "DEqMS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrixstats r-limma r-ggplot2))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "depmap" version
                              'experiment))
       (sha256
        (base32 "1mjx8jx4n36hjgw4nf6cc84bm868qfxgrb9knpxvvildzq1a04g1"))))
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
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DepInfeR" version))
       (sha256
        (base32 "14qwapq867bz5df0f74076fbx4igqq74cf1x9n8sx8vasinf238m"))))
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

(define-public r-dep
  (package
    (name "r-dep")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DEP" version))
       (sha256
        (base32 "001k86lqc810lscpnfnmvkmxylgh4wzckhj1slm671ikwxkf0w68"))))
    (properties `((upstream-name . "DEP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vsn
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-shinydashboard
                             r-shiny
                             r-rmarkdown
                             r-readr
                             r-rcolorbrewer
                             r-purrr
                             r-msnbase
                             r-limma
                             r-imputelcmd
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-fdrtool
                             r-dt
                             r-dplyr
                             r-complexheatmap
                             r-cluster
                             r-circlize
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/DEP")
    (synopsis "Differential Enrichment analysis of Proteomics data")
    (description
     "This package provides an integrated analysis workflow for robust and
reproducible analysis of mass spectrometry proteomics data for differential
protein expression or differential enrichment.  It requires tabular input (e.g.
txt files) as generated by quantitative analysis softwares of raw mass
spectrometry data, such as @code{MaxQuant} or @code{IsobarQuant}.  Functions are
provided for data preparation, filtering, variance normalization and imputation
of missing values, as well as statistical testing of differentially enriched /
expressed proteins.  It also includes tools to check intermediate steps in the
workflow, such as normalization and missing values imputation.  Finally,
visualization tools are provided to explore the results, including heatmap,
volcano plot and barplot representations.  For scientists with limited
experience in R, the package also contains wrapper functions that entail the
complete analysis workflow and generate a report.  Even easier to use are the
interactive Shiny apps that are provided by the package.")
    (license license:artistic2.0)))

(define-public r-demuxsnp
  (package
    (name "r-demuxsnp")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "demuxSNP" version))
       (sha256
        (base32 "0m8cry13chq7m80jhzxkv5gp1j48zc79ya1npdssr33iswj5jscs"))))
    (properties `((upstream-name . "demuxSNP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-matrixgenerics
                             r-matrix
                             r-kernelknn
                             r-iranges
                             r-genomeinfodb
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DeMixT" version))
       (sha256
        (base32 "0l6nj59wa9iw7y2r5l4wrmzkgxlhlczax2lpzqz0m7mlsfrjw47n"))))
    (properties `((upstream-name . "DeMixT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-truncdist
                             r-sva
                             r-summarizedexperiment
                             r-rmarkdown
                             r-rcpp
                             r-psych
                             r-matrixstats
                             r-matrixcalc
                             r-knitr
                             r-kernsmooth
                             r-ggplot2
                             r-dss
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
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DeMAND" version))
       (sha256
        (base32 "1sf09sq05hv0h3a8396kqdfk8r6fh7d8kkgz3nz5nzmdvphmv970"))))
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "deltaGseg" version))
       (sha256
        (base32 "0lnz9vd7ji2b1lnrmanhj3nkra8hbbrs4w5pnkqhzx7p7al376mx"))))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "deltaCaptureC" version))
       (sha256
        (base32 "1dqn95480qb8imr85110z0x4chnx8kj0h78971dnvfckvldq1xqc"))))
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
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DELocal" version))
       (sha256
        (base32 "1kgw6vlkrilchxv98gir977cx2m6b9jihqlz814m65y6hgn9hqp7"))))
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DelayedTensor" version))
       (sha256
        (base32 "0bp4r2jwphrykp09a7xv3q1zacgmvnj2hz8jwbck2v4pm6vfp1zr"))))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DelayedRandomArray" version))
       (sha256
        (base32 "1132mkigdj6ipjdr0vhi6av46b49vxnbb6281ba57bvd5zig88rq"))))
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DelayedDataFrame" version))
       (sha256
        (base32 "1dw3y3z8zf38d606372r4vywgfh9j111hhz2g3i60qwz7hq2ix1k"))))
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
    (version "1.60.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DEGseq" version))
       (sha256
        (base32 "0gkpz4xij7as8l9kylzl60ic1pwnc6fl4k3a3q1yyvw6zpidbwwh"))))
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
    (version "1.58.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DEGraph" version))
       (sha256
        (base32 "0dgfad4rjx3q47012533ilcpi5b5f7968l418jaxh318rnnpssm0"))))
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DegNorm" version))
       (sha256
        (base32 "144ap65xcih6x38d3f8g1vshx82ahj35bl9hkkgqs3b1f807np4s"))))
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
differential expression analysis accuracy.")
    (license license:lgpl3+)))

(define-public r-degcre
  (package
    (name "r-degcre")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DegCre" version))
       (sha256
        (base32 "1q2x3nwsgbw7dwlw8h9ml458rjbrjdf5nxynfibfhds5rska70y9"))))
    (properties `((upstream-name . "DegCre")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdb-hsapiens-ucsc-hg38-knowngene
                             r-s4vectors
                             r-qvalue
                             r-plotgardener
                             r-org-hs-eg-db
                             r-iranges
                             r-interactionset
                             r-genomicranges
                             r-genomeinfodb
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
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DEFormats" version))
       (sha256
        (base32 "13zybgyr91c4007nyqjqli6hhvzzfjmzaqacbnx16dxcq7kp2307"))))
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
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DeepTarget" version))
       (sha256
        (base32 "0cs5287jis2jby18knkxi7x9vxmwzbk4p1cy3j75wvmzhhbv6hnx"))))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DeepPINCS" version))
       (sha256
        (base32 "0vl2wjx59wlpf1nbk1pp8cb8vbf9gkq3zhgary0k56y9ck982df7"))))
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

(define-public r-decontx
  (package
    (name "r-decontx")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "decontX" version))
       (sha256
        (base32 "0rg5avvhxrnsnzkfbgry0s8s6wcahh5jy5g8jjvh3icfigk87krq"))))
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

(define-public r-debrowser
  (package
    (name "r-debrowser")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "debrowser" version))
       (sha256
        (base32 "13hw6w6ac4wk2vcj7yscdfjf9aqxi667911adq28gsgrdl0jjfkm"))))
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ddPCRclust" version))
       (sha256
        (base32 "0zybz0lllg21w2h9a9yi8cinfcfgjamdgax2nciq17fhh3ngbfrd"))))
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
    (version "1.62.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ddCt" version))
       (sha256
        (base32 "0j0p3c977ih7ha6wdb0p6xxv1q10invqzjf4yqc3bc29m9zxivbc"))))
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
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dcGSA" version))
       (sha256
        (base32 "1bdw0g3ccx6rcqmjadrqi8j83hnyx9x2pk2w65mfnk7s9fhj23wp"))))
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

(define-public r-dce
  (package
    (name "r-dce")
    (version "1.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dce" version))
       (sha256
        (base32 "02gnlskfgn38fcf5mchp6ippcd2rj4cl4w7r08igaqyl02zy2x80"))))
    (properties `((upstream-name . "dce")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyverse
                             r-tidygraph
                             r-shadowtext
                             r-rlang
                             r-rgraphviz
                             r-reshape2
                             r-purrr
                             r-ppcor
                             r-pcalg
                             r-org-hs-eg-db
                             r-naturalsort
                             r-mnem
                             r-metap
                             r-matrix
                             r-mass
                             r-magrittr
                             r-logger
                             r-igraph
                             r-harmonicmeanp
                             r-graphite
                             r-graph
                             r-glue
                             r-glm2
                             r-ggraph
                             r-ggplot2
                             r-expm
                             r-epinem
                             r-edger
                             r-dplyr
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cbg-ethz/dce")
    (synopsis "Pathway Enrichment Based on Differential Causal Effects")
    (description
     "Compute differential causal effects (dce) on (biological) networks.  Given
observational samples from a control experiment and non-control (e.g., cancer)
for two genes A and B, we can compute differential causal effects with a
(generalized) linear regression.  If the causal effect of gene A on gene B in
the control samples is different from the causal effect in the non-control
samples the dce will differ from zero.  We regularize the dce computation by the
inclusion of prior network information from pathway databases such as KEGG.")
    (license license:gpl3)))

(define-public r-dcats
  (package
    (name "r-dcats")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DCATS" version))
       (sha256
        (base32 "0hg76kcr9sdqmqs7mbr9cbbay8p15jvd0k9h03yay5zwsn98nnb5"))))
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dcanr" version))
       (sha256
        (base32 "1ddxvxsikfpq95bj5lrbf5a3gchal0idhksjj8mvxqjmxp7zclsr"))))
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "davidTiling" version
                              'experiment))
       (sha256
        (base32 "0hw0j96a9zkd413114z69j17hdrpshnm47qijzcplna05js2djx9"))))
    (properties `((upstream-name . "davidTiling")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DART" version))
       (sha256
        (base32 "01vk7bs9cj9g2wimhwn0mn1d4c73pzck1x86zb4dd4jgx32hyc8n"))))
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
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dar" version))
       (sha256
        (base32 "0j8ss3qc1m1klm83i8fpdsc1j66sb6wlw6b8fgcdgyvgd1ixj1yy"))))
    (properties `((upstream-name . "dar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-waldo
                             r-upsetr
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
                             r-cli))
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
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DAPARdata" version
                              'experiment))
       (sha256
        (base32 "0q7ql1971nls7wpvzgc2nk1h890zl2y6p1zdniwf42azahpvhcka"))))
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
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DAPAR" version))
       (sha256
        (base32 "0328lvwvwjlws2bh2aafbvgn605z4nql1khjf6xv2jdgnl1v8c1i"))))
    (properties `((upstream-name . "DAPAR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-msnbase r-highcharter r-foreach r-dapardata
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

(define-public r-damsel
  (package
    (name "r-damsel")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Damsel" version))
       (sha256
        (base32 "05szhq61vbrhbp4zyh45c3s575jisq62j7ldf3malljk5576dn6m"))))
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
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "DaMiRseq" version))
       (sha256
        (base32 "0c6q6cf4v77hrjphnndk78gsmcsv4d7ivmsihnjhnh0z9z6hiy36"))))
    (properties `((upstream-name . "DaMiRseq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sva
                             r-summarizedexperiment
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

(define-public r-daglogo
  (package
    (name "r-daglogo")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "dagLogo" version))
       (sha256
        (base32 "00x7abg5hrfd72lw70vqdvfbfdy49h3b7wzmd7c42nl26ryx1rm0"))))
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

