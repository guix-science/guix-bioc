(define-module (guix-bioc packages g)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages bioconductor)
  #:use-module (guix-cran packages m)
  #:use-module (guix-cran packages n)
  #:use-module (guix-cran packages g)
  #:use-module (guix-cran packages r)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages e)
  #:use-module (guix-cran packages c)
  #:use-module (guix-cran packages f)
  #:use-module (guix-cran packages s)
  #:use-module (guix-cran packages b)
  #:use-module (gnu packages compression)
  #:use-module (guix-cran packages h)
  #:use-module (guix-cran packages t)
  #:use-module (guix-cran packages l)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages web)
  #:use-module (guix-cran packages i)
  #:use-module (guix-cran packages j)
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
  #:use-module (guix-bioc packages f)
  #:use-module (guix-bioc packages e)
  #:use-module (guix-bioc packages d)
  #:use-module (guix-bioc packages c)
  #:use-module (guix-bioc packages b)
  #:use-module (guix-bioc packages a))

(define-public r-gwena
  (package
    (name "r-gwena")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GWENA" version))
       (sha256
        (base32 "0mjlqkdsy9d82mg655ydw0cb2vb70jf2xsnbjgjfqjpb1j7qn5hd"))))
    (properties `((upstream-name . "GWENA")))
    (build-system r-build-system)
    (propagated-inputs (list r-wgcna
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-rlist
                             r-rcolorbrewer
                             r-purrr
                             r-netrep
                             r-matrixstats
                             r-magrittr
                             r-igraph
                             r-gprofiler2
                             r-ggplot2
                             r-dynamictreecut
                             r-dplyr
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GWENA")
    (synopsis "Pipeline for augmented co-expression analysis")
    (description
     "The development of high-throughput sequencing led to increased use of
co-expression analysis to go beyong single feature (i.e.  gene) focus.  We
propose GWENA (Gene Whole co-Expression Network Analysis) , a tool designed to
perform gene co-expression network analysis and explore the results in a single
pipeline.  It includes functional enrichment of modules of co-expressed genes,
phenotypcal association, topological analysis and comparison of networks
configuration between conditions.")
    (license license:gpl3)))

(define-public r-gwasurvivr
  (package
    (name "r-gwasurvivr")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gwasurvivr" version))
       (sha256
        (base32 "0wdp5zvf0iawfc2y16hh5p9cag86m8g1sd6q0l0wha5i1w84yzcd"))))
    (properties `((upstream-name . "gwasurvivr")))
    (build-system r-build-system)
    (propagated-inputs (list r-variantannotation
                             r-survival
                             r-summarizedexperiment
                             r-snprelate
                             r-matrixstats
                             r-gwastools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/suchestoncampbelllab/gwasurvivr")
    (synopsis "gwasurvivr: an R package for genome wide survival analysis")
    (description
     "gwasurvivr is a package to perform survival analysis using Cox proportional
hazard models on imputed genetic data.")
    (license license:artistic2.0)))

(define-public r-gwasdata
  (package
    (name "r-gwasdata")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GWASdata" version
                              'experiment))
       (sha256
        (base32 "0lprcr2r0qzi7pa9pl6cp21z7vkjpn0d6ynnbbzji9ga82hd2njq"))))
    (properties `((upstream-name . "GWASdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-gwastools))
    (home-page "https://bioconductor.org/packages/GWASdata")
    (synopsis
     "Data used in the examples and vignettes of the GWASTools package")
    (description
     "Selected Affymetrix and Illlumina SNP data for @code{HapMap} subjects.  Data
provided by the Center for Inherited Disease Research at Johns Hopkins
University and the Broad Institute of MIT and Harvard University.")
    (license license:artistic2.0)))

(define-public r-gwascatdata
  (package
    (name "r-gwascatdata")
    (version "0.99.6")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gwascatData" version
                              'annotation))
       (sha256
        (base32 "1xhmzl06vivq8x01h60q3c4vql67wjgjfs35j4ifmixp1qhicgga"))))
    (properties `((upstream-name . "gwascatData")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/gwascatData")
    (synopsis
     "text file in cloud with March 30 2021 snapshot of EBI/EMBL GWAS catalog")
    (description
     "This package manages a text file in cloud with March 30 2021 snapshot of
EBI/EMBL GWAS catalog.This simplifies access to a snapshot of EBI GWASCAT. More
current images can be obtained using the gwascat package.")
    (license license:artistic2.0)))

(define-public r-gwas-bayes
  (package
    (name "r-gwas-bayes")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GWAS.BAYES" version))
       (sha256
        (base32 "1v3zp4n7p27mdylagz6i0n36pvqd2sy869l1mjldp9j1ypcqnysb"))))
    (properties `((upstream-name . "GWAS.BAYES")))
    (build-system r-build-system)
    (propagated-inputs (list r-memoise
                             r-matrix
                             r-mass
                             r-limma
                             r-ga
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GWAS.BAYES")
    (synopsis "Bayesian analysis of Gaussian GWAS data")
    (description
     "This package is built to perform GWAS analysis using Bayesian techniques.
Currently, GWAS.BAYES has functionality for the implementation of BICOSS for
Gaussian phenotypes (Williams, J., Ferreira, M. A., and Ji, T. (2022).  BICOSS:
Bayesian iterative conditional stochastic search for GWAS. BMC Bioinformatics
23, 475).  The research related to this package was supported in part by
National Science Foundation awards DMS 1853549, DMS 1853556, and DMS 2054173.")
    (license license:gpl3)))

(define-public r-guideseq
  (package
    (name "r-guideseq")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GUIDEseq" version))
       (sha256
        (base32 "123r4wcc9nxzjdp5jfil5y2l3c3gc470xyq14mh8lv5g7drixc6m"))))
    (properties `((upstream-name . "GUIDEseq")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-s4vectors
                             r-rsamtools
                             r-rlang
                             r-rio
                             r-purrr
                             r-patchwork
                             r-openxlsx
                             r-multtest
                             r-matrixstats
                             r-limma
                             r-iranges
                             r-hash
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-dplyr
                             r-data-table
                             r-crisprseek
                             r-chippeakanno
                             r-bsgenome
                             r-biostrings
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GUIDEseq")
    (synopsis "GUIDE-seq and PEtag-seq analysis pipeline")
    (description
     "The package implements GUIDE-seq and PEtag-seq analysis workflow including
functions for filtering UMI and reads with low coverage, obtaining unique
insertion sites (proxy of cleavage sites), estimating the locations of the
insertion sites, aka, peaks, merging estimated insertion sites from plus and
minus strand, and performing off target search of the extended regions around
insertion sites with mismatches and indels.")
    (license license:gpl2+)))

(define-public r-gsvadata
  (package
    (name "r-gsvadata")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GSVAdata" version
                              'experiment))
       (sha256
        (base32 "1a9kspbmsnsrisy5xp5r3s1l7fz34v7riyiqn22hlc87zmnj7y5q"))))
    (properties `((upstream-name . "GSVAdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-hgu95a-db r-gseabase r-biobase))
    (home-page "https://bioconductor.org/packages/GSVAdata")
    (synopsis "Data employed in the vignette of the GSVA package")
    (description
     "This package stores the data employed in the vignette of the GSVA package.
These data belong to the following publications: Armstrong et al.  Nat Genet
30:41-47, 2002; Cahoy et al.  J Neurosci 28:264-278, 2008; Carrel and Willard,
Nature, 434:400-404, 2005; Huang et al.  PNAS, 104:9758-9763, 2007; Pickrell et
al.  Nature, 464:768-722, 2010; Skaletsky et al.  Nature, 423:825-837; Verhaak
et al.  Cancer Cell 17:98-110, 2010")
    (license license:artistic2.0)))

(define-public r-gsri
  (package
    (name "r-gsri")
    (version "2.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GSRI" version))
       (sha256
        (base32 "0y9cmxwv3x766m5aa0spqljnm1sh8zis1wlaa2585crdciqki39l"))))
    (properties `((upstream-name . "GSRI")))
    (build-system r-build-system)
    (propagated-inputs (list r-les r-gseabase r-genefilter r-fdrtool r-biobase))
    (home-page "https://bioconductor.org/packages/GSRI")
    (synopsis "Gene Set Regulation Index")
    (description
     "The GSRI package estimates the number of differentially expressed genes in gene
sets, utilizing the concept of the Gene Set Regulation Index (GSRI).")
    (license license:gpl3)))

(define-public r-gsreg
  (package
    (name "r-gsreg")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GSReg" version))
       (sha256
        (base32 "0hclk184ckblf464w2fgvjga5h4831j4srz9813ggm0q8raa7a4v"))))
    (properties `((upstream-name . "GSReg")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-homo-sapiens r-genomicfeatures
                             r-annotationdbi))
    (home-page "https://bioconductor.org/packages/GSReg")
    (synopsis "Gene Set Regulation (GS-Reg)")
    (description
     "This package provides a package for gene set analysis based on the variability
of expressions as well as a method to detect Alternative Splicing Events .  It
implements DIfferential RAnk Conservation (DIRAC) and gene set Expression
Variation Analysis (EVA) methods.  For detecting Differentially Spliced genes,
it provides an implementation of the Spliced-EVA (SEVA).")
    (license license:gpl2)))

(define-public r-gsgalgor
  (package
    (name "r-gsgalgor")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GSgalgoR" version))
       (sha256
        (base32 "1yzx8dk26cmyr3xcnvm0s13avbc0r2yd1ccrk87frv8xnd0hrl0i"))))
    (properties `((upstream-name . "GSgalgoR")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-proxy
                             r-nsga2r
                             r-matchingr
                             r-foreach
                             r-doparallel
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/harpomaxx/GSgalgoR")
    (synopsis
     "An Evolutionary Framework for the Identification and Study of Prognostic Gene Expression Signatures in Cancer")
    (description
     "This package provides a multi-objective optimization algorithm for disease
sub-type discovery based on a non-dominated sorting genetic algorithm.  The
Galgo framework combines the advantages of clustering algorithms for grouping
heterogeneous omics data and the searching properties of genetic algorithms for
feature selection.  The algorithm search for the optimal number of clusters
determination considering the features that maximize the survival difference
between sub-types while keeping cluster consistency high.")
    (license license:expat)))

(define-public r-gsean
  (package
    (name "r-gsean")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gsean" version))
       (sha256
        (base32 "15rargfrhgrxaad4sza6w80mlgmrwq18yzhi99282rzm1s7rxd5r"))))
    (properties `((upstream-name . "gsean")))
    (build-system r-build-system)
    (propagated-inputs (list r-ppinfer r-fgsea))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/gsean")
    (synopsis "Gene Set Enrichment Analysis with Networks")
    (description
     "Biological molecules in a living organism seldom work individually.  They
usually interact each other in a cooperative way.  Biological process is too
complicated to understand without considering such interactions.  Thus,
network-based procedures can be seen as powerful methods for studying complex
process.  However, many methods are devised for analyzing individual genes.  It
is said that techniques based on biological networks such as gene co-expression
are more precise ways to represent information than those using lists of genes
only.  This package is aimed to integrate the gene expression and biological
network.  A biological network is constructed from gene expression data and it
is used for Gene Set Enrichment Analysis.")
    (license license:artistic2.0)))

(define-public r-gseamining
  (package
    (name "r-gseamining")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GSEAmining" version))
       (sha256
        (base32 "1n2szlv5jsr4h6dnf6d326lym3nbkaslr56dmggm699j7bb661wn"))))
    (properties `((upstream-name . "GSEAmining")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidytext
                             r-tibble
                             r-stringr
                             r-rlang
                             r-gridextra
                             r-ggwordcloud
                             r-ggplot2
                             r-dplyr
                             r-dendextend))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GSEAmining")
    (synopsis "Make Biological Sense of Gene Set Enrichment Analysis Outputs")
    (description
     "Gene Set Enrichment Analysis is a very powerful and interesting computational
method that allows an easy correlation between differential expressed genes and
biological processes.  Unfortunately, although it was designed to help
researchers to interpret gene expression data it can generate huge amounts of
results whose biological meaning can be difficult to interpret.  Many available
tools rely on the hierarchically structured Gene Ontology (GO) classification to
reduce reundandcy in the results.  However, due to the popularity of GSEA many
more gene set collections, such as those in the Molecular Signatures Database
are emerging.  Since these collections are not organized as those in GO, their
usage for GSEA do not always give a straightforward answer or, in other words,
getting all the meaninful information can be challenging with the currently
available tools.  For these reasons, GSEAmining was born to be an easy tool to
create reproducible reports to help researchers make biological sense of GSEA
outputs.  Given the results of GSEA, GSEAmining clusters the different gene sets
collections based on the presence of the same genes in the leadind edge (core)
subset.  Leading edge subsets are those genes that contribute most to the
enrichment score of each collection of genes or gene sets.  For this reason,
gene sets that participate in similar biological processes should share genes in
common and in turn cluster together.  After that, GSEAmining is able to identify
and represent for each cluster: - The most enriched terms in the names of gene
sets (as wordclouds) - The most enriched genes in the leading edge subsets (as
bar plots).  In each case, positive and negative enrichments are shown in
different colors so it is easy to distinguish biological processes or genes that
may be of interest in that particular study.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-gsealm
  (package
    (name "r-gsealm")
    (version "1.62.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GSEAlm" version))
       (sha256
        (base32 "0imaj5g7x2qnzqzdf4kgf7jgq6myyylphgnflgnprc0fys2l5qq8"))))
    (properties `((upstream-name . "GSEAlm")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/GSEAlm")
    (synopsis "Linear Model Toolset for Gene Set Enrichment Analysis")
    (description
     "Models and methods for fitting linear models to gene expression data, together
with tools for computing and using various regression diagnostics.")
    (license license:artistic2.0)))

(define-public r-gseabenchmarker
  (package
    (name "r-gseabenchmarker")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GSEABenchmarkeR" version))
       (sha256
        (base32 "14g147qamfcg91fmg4dsmzbcw7j0a826i40k57za3zkr0qxjpf0g"))))
    (properties `((upstream-name . "GSEABenchmarkeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-keggdzpathwaysgeo
                             r-keggandmetacoredzpathwaysgeo
                             r-experimenthub
                             r-enrichmentbrowser
                             r-edger
                             r-biocparallel
                             r-biocfilecache
                             r-biobase
                             r-annotationhub
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/waldronlab/GSEABenchmarkeR")
    (synopsis "Reproducible GSEA Benchmarking")
    (description
     "The GSEA@code{BenchmarkeR} package implements an extendable framework for
reproducible evaluation of set- and network-based methods for enrichment
analysis of gene expression data.  This includes support for the efficient
execution of these methods on comprehensive real data compendia (microarray and
RNA-seq) using parallel computation on standard workstations and institutional
computer grids.  Methods can then be assessed with respect to runtime,
statistical significance, and relevance of the results for the phenotypes
investigated.")
    (license license:artistic2.0)))

(define-public r-gse62944
  (package
    (name "r-gse62944")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GSE62944" version
                              'experiment))
       (sha256
        (base32 "03wy4jjg6fh1fckmy0fqs776b3mhvrksk7hgkrjg7hr7p9b9dxwp"))))
    (properties `((upstream-name . "GSE62944")))
    (build-system r-build-system)
    (propagated-inputs (list r-geoquery r-biobase))
    (native-inputs (list r-knitr))
    (home-page
     "http://bioconductor.org/packages/release/bioc/html/GSE62944.html")
    (synopsis "GEO accession data GSE62944 as a SummarizedExperiment")
    (description
     "TCGA processed RNA-Seq data for 9264 tumor and 741 normal samples across 24
cancer types and made them available as GEO accession
[GSE62944](http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE62944).
GSE62944 data have been parsed into a @code{SummarizedExperiment} object
available in @code{ExperimentHub}.")
    (license license:artistic2.0)))

(define-public r-gse159526
  (package
    (name "r-gse159526")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GSE159526" version
                              'experiment))
       (sha256
        (base32 "0z8aywaihmrzfn0pzm5z7pxkpmkrar4090wavvy4vzkqbzdicv8r"))))
    (properties `((upstream-name . "GSE159526")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/wvictor14/GSE159526")
    (synopsis
     "Placental cell DNA methylation data from GEO accession GSE159526")
    (description
     "19 term and 9 first trimester placental chorionic villi and matched cell-sorted
samples ran on Illumina @code{HumanMethylationEPIC} DNA methylation microarrays.
 This data was made available on GEO accession
[GSE159526](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE159526).  Both
the raw and processed data has been made available on
\\code{@code{ExperimentHub}}.  Raw unprocessed data formatted as an
RG@code{ChannelSet} object for integration and normalization using minfi and
other existing Bioconductor packages.  Processed normalized data is also
available as a DNA methylation \\code{matrix}, with a corresponding phenotype
information as a \\code{data.frame} object.")
    (license license:expat)))

(define-public r-gse13015
  (package
    (name "r-gse13015")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GSE13015" version
                              'experiment))
       (sha256
        (base32 "1jc40g1gxz7rcxcgx11blx9li3fpa605rzs9k2glaglrp373r7dk"))))
    (properties `((upstream-name . "GSE13015")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-preprocesscore
                             r-geoquery r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GSE13015")
    (synopsis "GEO accession data GSE13015_GPL6106 as a SummarizedExperiment")
    (description
     "Microarray expression matrix platform GPL6106 and clinical data for 67
septicemic patients and made them available as GEO accession
[GSE13015](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE13015).
GSE13015 data have been parsed into a @code{SummarizedExperiment} object
available in @code{ExperimentHub}.  This data data could be used as an example
supporting @code{BloodGen3Module} R package.")
    (license (license:fsdg-compatible "MIT License"))))

(define-public r-gse103322
  (package
    (name "r-gse103322")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GSE103322" version
                              'experiment))
       (sha256
        (base32 "018k8vkyr0cvycvkihkajf709jsw0y9mhf8yamzc72x5mwazwhym"))))
    (properties `((upstream-name . "GSE103322")))
    (build-system r-build-system)
    (propagated-inputs (list r-geoquery r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GSE103322")
    (synopsis "GEO accession data GSE103322 as a SingleCellExperiment")
    (description
     "Single cell RNA-Seq data for 5902 cells from 18 patients with oral cavity head
and neck squamous cell carcinoma available as GEO accession [GSE103322]
(http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE103322).  GSE103322 data
have been parsed into a @code{SincleCellExperiment} object available in
@code{ExperimentHub}.")
    (license license:artistic2.0)))

(define-public r-gsca
  (package
    (name "r-gsca")
    (version "2.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GSCA" version))
       (sha256
        (base32 "068zr4rzjafqrxhd9ajyrw896dfh6q97sghl8p7ik9d8074m1y2b"))))
    (properties `((upstream-name . "GSCA")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp
                             r-shiny
                             r-rhdf5
                             r-reshape2
                             r-rcolorbrewer
                             r-gplots
                             r-ggplot2))
    (home-page "https://bioconductor.org/packages/GSCA")
    (synopsis "GSCA: Gene Set Context Analysis")
    (description
     "GSCA takes as input several lists of activated and repressed genes.  GSCA then
searches through a compendium of publicly available gene expression profiles for
biological contexts that are enriched with a specified pattern of gene
expression.  GSCA provides both traditional R functions and interactive,
user-friendly user interface.")
    (license (license:fsdg-compatible "GPL(>=2)"))))

(define-public r-gsbenchmark
  (package
    (name "r-gsbenchmark")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GSBenchMark" version
                              'experiment))
       (sha256
        (base32 "03ccpc69k0i0pffw0x0f49h71saz68chyppa8ncpyb5aj4lxp2gb"))))
    (properties `((upstream-name . "GSBenchMark")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/GSBenchMark")
    (synopsis "Gene Set Benchmark")
    (description
     "Benchmarks for Machine Learning Analysis of the Gene Sets.  The package contains
a list of pathways and gene expression data sets used in \"Identifying Tightly
Regulated and Variably Expressed Networks by Differential Rank Conservation
(DIRAC)\" (2010) by Eddy et al.")
    (license license:gpl2)))

(define-public r-gsar
  (package
    (name "r-gsar")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GSAR" version))
       (sha256
        (base32 "18bd5hsag1jicggqrc3kmn70vmaxdqkwyngmnzv511v26nq3qv1f"))))
    (properties `((upstream-name . "GSAR")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph))
    (home-page "https://bioconductor.org/packages/GSAR")
    (synopsis "Gene Set Analysis in R")
    (description
     "Gene set analysis using specific alternative hypotheses.  Tests for differential
expression, scale and net correlation structure.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-gsalightning
  (package
    (name "r-gsalightning")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GSALightning" version))
       (sha256
        (base32 "1hf950j4n7a00qlil841kpc7n00rszb530v73hyd9sya78yn3saz"))))
    (properties `((upstream-name . "GSALightning")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/billyhw/GSALightning")
    (synopsis "Fast Permutation-based Gene Set Analysis")
    (description
     "GSALightning provides a fast implementation of permutation-based gene set
analysis for two-sample problem.  This package is particularly useful when
testing simultaneously a large number of gene sets, or when a large number of
permutations is necessary for more accurate p-values estimation.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-grndata
  (package
    (name "r-grndata")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "grndata" version
                              'experiment))
       (sha256
        (base32 "17g2jp99dl6kypzz4v2pf0h29vx16pwfw6apbhgggv1had9593nm"))))
    (properties `((upstream-name . "grndata")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/grndata")
    (synopsis
     "Synthetic Expression Data for Gene Regulatory Network Inference")
    (description
     "Simulated expression data for five large Gene Regulatory Networks from different
simulators")
    (license license:gpl3)))

(define-public r-grmetrics
  (package
    (name "r-grmetrics")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GRmetrics" version))
       (sha256
        (base32 "0r5wbwk8l46sdh3860hm6q1vvqb2fizwvp9cx1nbl4725y688di9"))))
    (properties `((upstream-name . "GRmetrics")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-s4vectors r-plotly
                             r-ggplot2 r-drc))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/uc-bd2k/GRmetrics")
    (synopsis "Calculate growth-rate inhibition (GR) metrics")
    (description
     "This package provides functions for calculating and visualizing growth-rate
inhibition (GR) metrics.")
    (license license:gpl3)))

(define-public r-grenits
  (package
    (name "r-grenits")
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GRENITS" version))
       (sha256
        (base32 "1f3b2fnywxikf3h623fd5hbxpq4lslfa2i7z4qjn7dyxj4swv3a1"))))
    (properties `((upstream-name . "GRENITS")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-rcpparmadillo r-rcpp r-ggplot2))
    (home-page "https://bioconductor.org/packages/GRENITS")
    (synopsis "Gene Regulatory Network Inference Using Time Series")
    (description
     "The package offers four network inference statistical models using Dynamic
Bayesian Networks and Gibbs Variable Selection: a linear interaction model, two
linear interaction models with added experimental noise (Gaussian and Student
distributed) for the case where replicates are available and a non-linear
interaction model.")
    (license license:gpl2+)))

(define-public r-grasp2db
  (package
    (name "r-grasp2db")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "grasp2db" version
                              'annotation))
       (sha256
        (base32 "1aq19myhcl9kdmzy8f4c3ilf0s0ng99rl58jja2xlmqsm2hik7ya"))))
    (properties `((upstream-name . "grasp2db")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsqlite
                             r-genomeinfodb
                             r-dplyr
                             r-digest
                             r-dbplyr
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/grasp2db")
    (synopsis "grasp2db, sqlite wrap of GRASP 2.0")
    (description
     "grasp2db, sqlite wrap of NHLBI GRASP 2.0, an extended GWAS catalog.")
    (license (license:fsdg-compatible "Artistic-2.0 + file LICENSE"))))

(define-public r-graphpac
  (package
    (name "r-graphpac")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GraphPAC" version))
       (sha256
        (base32 "1dz88vy85njw8lsr2y14fwjb3rnlr808xyw3aw8k8vavn6y82v5a"))))
    (properties `((upstream-name . "GraphPAC")))
    (build-system r-build-system)
    (propagated-inputs (list r-tsp r-rmallow r-ipac r-igraph))
    (home-page "https://bioconductor.org/packages/GraphPAC")
    (synopsis
     "Identification of Mutational Clusters in Proteins via a Graph Theoretical Approach")
    (description
     "Identifies mutational clusters of amino acids in a protein while utilizing the
proteins tertiary structure via a graph theoretical model.")
    (license license:gpl2)))

(define-public r-graphat
  (package
    (name "r-graphat")
    (version "1.74.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GraphAT" version))
       (sha256
        (base32 "1r5jz6w2cnc96arbilzgapp8xbn3kpv8jjamy58wycxqsj468p8f"))))
    (properties `((upstream-name . "GraphAT")))
    (build-system r-build-system)
    (propagated-inputs (list r-mcmcpack r-graph))
    (home-page "https://bioconductor.org/packages/GraphAT")
    (synopsis "Graph Theoretic Association Tests")
    (description
     "This package provides functions and data used in Balasubramanian, et al. (2004)")
    (license license:lgpl2.0+)))

(define-public r-graphalignment
  (package
    (name "r-graphalignment")
    (version "1.66.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GraphAlignment" version))
       (sha256
        (base32 "0gjij3nvmm5bd4bi5ljgjm6fj610jdbhdasx48jl6l366a06si0s"))))
    (properties `((upstream-name . "GraphAlignment")))
    (build-system r-build-system)
    (home-page "http://www.thp.uni-koeln.de/~berg/GraphAlignment/")
    (synopsis "GraphAlignment")
    (description
     "Graph alignment is an extension package for the R programming environment which
provides functions for finding an alignment between two networks based on link
and node similarity scores. (J. Berg and M. Laessig, \"Cross-species analysis of
biological networks by Bayesian alignment\", PNAS 103 (29), 10967-10972 (2006))")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-graper
  (package
    (name "r-graper")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "graper" version))
       (sha256
        (base32 "0ghr5dfm7iv9hhjlmzcshi0g3w5m4iikqrm3sb7kxnb364gpj27b"))))
    (properties `((upstream-name . "graper")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-matrixstats
                             r-matrix
                             r-ggplot2
                             r-cowplot
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/graper")
    (synopsis
     "Adaptive penalization in high-dimensional regression and classification with external covariates using variational Bayes")
    (description
     "This package enables regression and classification on high-dimensional data with
different relative strengths of penalization for different feature groups, such
as different assays or omic types.  The optimal relative strengths are chosen
adaptively.  Optimisation is performed using a variational Bayes approach.")
    (license license:gpl2+)))

(define-public r-granulator
  (package
    (name "r-granulator")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "granulator" version))
       (sha256
        (base32 "0sv8r5sqxay3f0g59kgabrdjzv0j7czs10sm2c9k18fjs6cn08h1"))))
    (properties `((upstream-name . "granulator")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-pheatmap
                             r-nnls
                             r-mass
                             r-magrittr
                             r-limsolve
                             r-ggplotify
                             r-ggplot2
                             r-epir
                             r-e1071
                             r-dtangle
                             r-dplyr
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/xanibas/granulator")
    (synopsis
     "Rapid benchmarking of methods for *in silico* deconvolution of bulk RNA-seq data")
    (description
     "granulator is an R package for the cell type deconvolution of heterogeneous
tissues based on bulk RNA-seq data or single cell RNA-seq expression profiles.
The package provides a unified testing interface to rapidly run and benchmark
multiple state-of-the-art deconvolution methods.  Data for the deconvolution of
peripheral blood mononuclear cells (PBMCs) into individual immune cell types is
provided as well.")
    (license license:gpl3)))

(define-public r-granie
  (package
    (name "r-granie")
    (version "1.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GRaNIE" version))
       (sha256
        (base32 "1v9p7nsf5ccykpb3njdmggdqdzjwksv89g6wzrqii1m1jz9nq7v8"))))
    (properties `((upstream-name . "GRaNIE")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-topgo
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-scales
                             r-s4vectors
                             r-rlang
                             r-reshape2
                             r-readr
                             r-rcolorbrewer
                             r-progress
                             r-patchwork
                             r-matrixstats
                             r-matrix
                             r-magrittr
                             r-limma
                             r-igraph
                             r-gridextra
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-futile-logger
                             r-forcats
                             r-ensembldb
                             r-dplyr
                             r-deseq2
                             r-data-table
                             r-complexheatmap
                             r-colorspace
                             r-circlize
                             r-checkmate
                             r-biostrings
                             r-biomart
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://grp-zaugg.embl-community.io/GRaNIE")
    (synopsis
     "GRaNIE: Reconstruction cell type specific gene regulatory networks including enhancers using chromatin accessibility and RNA-seq data")
    (description
     "Genetic variants associated with diseases often affect non-coding regions, thus
likely having a regulatory role.  To understand the effects of genetic variants
in these regulatory regions, identifying genes that are modulated by specific
regulatory elements (REs) is crucial.  The effect of gene regulatory elements,
such as enhancers, is often cell-type specific, likely because the combinations
of transcription factors (TFs) that are regulating a given enhancer have
celltype specific activity.  This TF activity can be quantified with existing
tools such as @code{diffTF} and captures differences in binding of a TF in open
chromatin regions.  Collectively, this forms a gene regulatory network (GRN)
with cell-type and data-specific TF-RE and RE-gene links.  Here, we reconstruct
such a GRN using bulk RNAseq and open chromatin (e.g., using ATACseq or
@code{ChIPseq} for open chromatin marks) and optionally TF activity data.  Our
network contains different types of links, connecting TFs to regulatory
elements, the latter of which is connected to genes in the vicinity or within
the same chromatin domain (TAD).  We use a statistical framework to assign
empirical FDRs and weights to all links using a permutation-based approach.")
    (license license:artistic2.0)))

(define-public r-gpumagic
  (package
    (name "r-gpumagic")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gpuMagic" version))
       (sha256
        (base32 "0x5d94imcxg4m5whyhmlxgixxcn4qmh3jfm7kplhi78fb6abmrql"))))
    (properties `((upstream-name . "gpuMagic")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rcpp
                             r-pryr
                             r-digest
                             r-desctools
                             r-deriv
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/gpuMagic")
    (synopsis
     "An openCL compiler with the capacity to compile R functions and run the code on GPU")
    (description
     "The package aims to help users write @code{openCL} code with little or no
effort.  It is able to compile an user-defined R function and run it on a device
such as a CPU or a GPU. The user can also write and run their @code{openCL} code
directly by calling .kernel function.")
    (license license:gpl3)))

(define-public r-gpls
  (package
    (name "r-gpls")
    (version "1.74.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gpls" version))
       (sha256
        (base32 "1z6mdqcjwqby2hv8x9380q9qsm9y2kqaqln9bqxcrsxj3bpgwsj0"))))
    (properties `((upstream-name . "gpls")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/gpls")
    (synopsis "Classification using generalized partial least squares")
    (description
     "Classification using generalized partial least squares for two-group and
multi-group (more than 2 group) classification.")
    (license license:artistic2.0)))

(define-public r-gpaexample
  (package
    (name "r-gpaexample")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gpaExample" version
                              'experiment))
       (sha256
        (base32 "0danfxw9jqlv9862pcf7sdaxnwxrpgs9gy38xpjzx3q25y4y1589"))))
    (properties `((upstream-name . "gpaExample")))
    (build-system r-build-system)
    (home-page "http://dongjunchung.github.io/GPA/")
    (synopsis
     "Example data for the GPA package (Genetic analysis incorporating Pleiotropy and Annotation)")
    (description
     "Example data for the GPA package, consisting of the p-values of 1,219,805 SNPs
for five psychiatric disorder GWAS from the psychiatric GWAS consortium (PGC),
with the annotation data using genes preferentially expressed in the central
nervous system (CNS).")
    (license license:gpl2+)))

(define-public r-gpa
  (package
    (name "r-gpa")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GPA" version))
       (sha256
        (base32 "09cc0i4dw8dsrcms927bmzlz3pa9qwg1j3ibl769v0qhbfblnqla"))))
    (properties `((upstream-name . "GPA")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-shinybs
                             r-shiny
                             r-rcpp
                             r-plyr
                             r-ggrepel
                             r-ggplot2
                             r-dt))
    (home-page "http://dongjunchung.github.io/GPA/")
    (synopsis "GPA (Genetic analysis incorporating Pleiotropy and Annotation)")
    (description
     "This package provides functions for fitting GPA, a statistical framework to
prioritize GWAS results by integrating pleiotropy information and annotation
data.  In addition, it also includes @code{ShinyGPA}, an interactive
visualization toolkit to investigate pleiotropic architecture.")
    (license license:gpl2+)))

(define-public r-gp53cdf
  (package
    (name "r-gp53cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gp53cdf" version
                              'annotation))
       (sha256
        (base32 "11p69rxia8bqajix3jg34vnhczyxgpq50k5kdh878h7bn0mpg6bj"))))
    (properties `((upstream-name . "gp53cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/gp53cdf")
    (synopsis "gp53cdf")
    (description
     "This package provides a package containing an environment representing the
GP53.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-gotools
  (package
    (name "r-gotools")
    (version "1.76.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "goTools" version))
       (sha256
        (base32 "1qfl4617zwrl7nd56q1flzhzh9shhcs49m8s3327bpz0xpvc56vc"))))
    (properties `((upstream-name . "goTools")))
    (build-system r-build-system)
    (propagated-inputs (list r-go-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/goTools")
    (synopsis "Functions for Gene Ontology database")
    (description
     "Wraper functions for description/comparison of oligo ID list using Gene Ontology
database")
    (license license:gpl2)))

(define-public r-gothic
  (package
    (name "r-gothic")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GOTHiC" version))
       (sha256
        (base32 "1cfbbx1vp19rxvjya3f1ij0gn36fcychfa5fhq71lrc31x9z6kf0"))))
    (properties `((upstream-name . "GOTHiC")))
    (build-system r-build-system)
    (propagated-inputs (list r-shortread
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-data-table
                             r-bsgenome
                             r-biostrings
                             r-biocmanager
                             r-biocgenerics))
    (home-page "https://bioconductor.org/packages/GOTHiC")
    (synopsis "Binomial test for Hi-C data analysis")
    (description
     "This is a Hi-C analysis package using a cumulative binomial test to detect
interactions between distal genomic loci that have significantly more reads than
expected by chance in Hi-C experiments.  It takes mapped paired NGS reads as
input and gives back the list of significant interactions for a given bin size
in the genome.")
    (license license:gpl3)))

(define-public r-gosummaries
  (package
    (name "r-gosummaries")
    (version "2.37.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GOsummaries" version))
       (sha256
        (base32 "1r2a1bym6hwhah4gq47j7983znwsl3fwbhx9lw9j1nxm4ip0d7nr"))))
    (properties `((upstream-name . "GOsummaries")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2
                             r-rcpp
                             r-plyr
                             r-limma
                             r-gtable
                             r-gprofiler
                             r-ggplot2))
    (home-page "https://github.com/raivokolde/GOsummaries")
    (synopsis "Word cloud summaries of GO enrichment analysis")
    (description
     "This package provides a package to visualise Gene Ontology (GO) enrichment
analysis results on gene lists arising from different analyses such clustering
or PCA. The significant GO categories are visualised as word clouds that can be
combined with different plots summarising the underlying data.")
    (license license:gpl2+)))

(define-public r-gostag
  (package
    (name "r-gostag")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "goSTAG" version))
       (sha256
        (base32 "0pnqg3yki19xv3icqqayw75wpq3d5cx0z97qspmh9c3i5p05341f"))))
    (properties `((upstream-name . "goSTAG")))
    (build-system r-build-system)
    (propagated-inputs (list r-memoise r-go-db r-biomart r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/goSTAG")
    (synopsis "tool to use GO Subtrees to Tag and Annotate Genes within a set")
    (description
     "Gene lists derived from the results of genomic analyses are rich in biological
information.  For instance, differentially expressed genes (DEGs) from a
microarray or RNA-Seq analysis are related functionally in terms of their
response to a treatment or condition.  Gene lists can vary in size, up to
several thousand genes, depending on the robustness of the perturbations or how
widely different the conditions are biologically.  Having a way to associate
biological relatedness between hundreds and thousands of genes systematically is
impractical by manually curating the annotation and function of each gene.
Over-representation analysis (ORA) of genes was developed to identify biological
themes.  Given a Gene Ontology (GO) and an annotation of genes that indicate the
categories each one fits into, significance of the over-representation of the
genes within the ontological categories is determined by a Fisher's exact test
or modeling according to a hypergeometric distribution.  Comparing a small
number of enriched biological categories for a few samples is manageable using
Venn diagrams or other means for assessing overlaps.  However, with hundreds of
enriched categories and many samples, the comparisons are laborious.
Furthermore, if there are enriched categories that are shared between samples,
trying to represent a common theme across them is highly subjective.
@code{goSTAG} uses GO subtrees to tag and annotate genes within a set.
@code{goSTAG} visualizes the similarities between the over-representation of
DEGs by clustering the p-values from the enrichment statistical tests and labels
clusters with the GO term that has the most paths to the root within the subtree
generated from all the GO terms in the cluster.")
    (license license:gpl3)))

(define-public r-gosorensen
  (package
    (name "r-gosorensen")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "goSorensen" version))
       (sha256
        (base32 "1q6isry70rczq4dj5ibwf9xzw7vkcws57h9p6dr16l2ij6b524dx"))))
    (properties `((upstream-name . "goSorensen")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-org-hs-eg-db r-goprofiles r-go-db
                             r-clusterprofiler))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/goSorensen")
    (synopsis
     "Statistical inference based on the Sorensen-Dice dissimilarity and the Gene Ontology (GO)")
    (description
     "This package implements inferential methods to compare gene lists in terms of
their biological meaning as expressed in the GO. The compared gene lists are
characterized by cross-tabulation frequency tables of enriched GO items.
Dissimilarity between gene lists is evaluated using the Sorensen-Dice index.
The fundamental guiding principle is that two gene lists are taken as similar if
they share a great proportion of common enriched GO items.")
    (license license:gpl3)))

(define-public r-gosim
  (package
    (name "r-gosim")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GOSim" version))
       (sha256
        (base32 "1izsjs3li1qcp2nfy7zk3zbf3hh7kq75r78ijbn5yln9fgs6mbv1"))))
    (properties `((upstream-name . "GOSim")))
    (build-system r-build-system)
    (propagated-inputs (list r-topgo
                             r-rcpp
                             r-rbgl
                             r-org-hs-eg-db
                             r-matrix
                             r-graph
                             r-go-db
                             r-flexmix
                             r-corpcor
                             r-cluster
                             r-annotationdbi
                             r-annotate))
    (home-page "https://bioconductor.org/packages/GOSim")
    (synopsis
     "Computation of functional similarities between GO terms and gene products; GO enrichment analysis")
    (description
     "This package implements several functions useful for computing similarities
between GO terms and gene products based on their GO annotation.  Moreover it
allows for computing a GO enrichment analysis")
    (license license:gpl2+)))

(define-public r-goprofiles
  (package
    (name "r-goprofiles")
    (version "1.64.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "goProfiles" version))
       (sha256
        (base32 "14h8phx5qp8xismvf290bja4wv4g71k24iiv2nmqsac5myr402kw"))))
    (properties `((upstream-name . "goProfiles")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-go-db r-compquadform r-biobase
                             r-annotationdbi))
    (home-page "https://bioconductor.org/packages/goProfiles")
    (synopsis
     "goProfiles: an R package for the statistical analysis of functional profiles")
    (description
     "The package implements methods to compare lists of genes based on comparing the
corresponding functional profiles'.")
    (license license:gpl2)))

(define-public r-gopro
  (package
    (name "r-gopro")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GOpro" version))
       (sha256
        (base32 "1shgn74ix5kj0f8pxm1f3pisg1x40dss51xjihlk3cjkypil3ark"))))
    (properties `((upstream-name . "GOpro")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rcpp
                             r-org-hs-eg-db
                             r-multiassayexperiment
                             r-iranges
                             r-go-db
                             r-foreach
                             r-doparallel
                             r-dendextend
                             r-bh
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mi2-warsaw/GOpro")
    (synopsis
     "Find the most characteristic gene ontology terms for groups of human genes")
    (description
     "Find the most characteristic gene ontology terms for groups of human genes.
This package was created as a part of the thesis which was developed under the
auspices of MI^2 Group (http://mi2.mini.pw.edu.pl/,
https://github.com/@code{geneticsMiNIng}).")
    (license license:gpl3)))

(define-public r-golubesets
  (package
    (name "r-golubesets")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "golubEsets" version
                              'experiment))
       (sha256
        (base32 "1rwhb48wz20i06whxdj1cb6qjda545w4050y87c55h3xqcair3ya"))))
    (properties `((upstream-name . "golubEsets")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/golubEsets")
    (synopsis "exprSets for golub leukemia data")
    (description
     "representation of public golub data with some covariate data of provenance
unknown to the maintainer at present; now employs @code{ExpressionSet} format")
    (license license:lgpl2.0+)))

(define-public r-goexpress
  (package
    (name "r-goexpress")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GOexpress" version))
       (sha256
        (base32 "17zchlp8c9yikkacimvgrkyijmnlj60vp4bk0rvm2brcff0cxywb"))))
    (properties `((upstream-name . "GOexpress")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rcurl
                             r-rcolorbrewer
                             r-randomforest
                             r-gplots
                             r-ggplot2
                             r-biomart
                             r-biobase))
    (home-page "https://github.com/kevinrue/GOexpress")
    (synopsis
     "Visualise microarray and RNAseq data using gene ontology annotations")
    (description
     "The package contains methods to visualise the expression profile of genes from a
microarray or RNA-seq experiment, and offers a supervised clustering approach to
identify GO terms containing genes with expression levels that best classify two
or more predefined groups of samples.  Annotations for the genes present in the
expression dataset may be obtained from Ensembl through the @code{biomaRt}
package, if not provided by the user.  The default random forest framework is
used to evaluate the capacity of each gene to cluster samples according to the
factor of interest.  Finally, GO terms are scored by averaging the rank
(alternatively, score) of their respective gene sets to cluster the samples.
P-values may be computed to assess the significance of GO term ranking.
Visualisation function include gene expression profile, gene ontology-based
heatmaps, and hierarchical clustering of experimental samples using gene
expression data.")
    (license license:gpl3+)))

(define-public r-gnosis
  (package
    (name "r-gnosis")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GNOSIS" version))
       (sha256
        (base32 "0dv0ikznabg3lihwhx33ciy9glfqbg1lgd42qzw67gk4zin5jxdf"))))
    (properties `((upstream-name . "GNOSIS")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyverse
                             r-survminer
                             r-survival
                             r-shinywidgets
                             r-shinymeta
                             r-shinylogs
                             r-shinyjs
                             r-shinydashboardplus
                             r-shinydashboard
                             r-shinycssloaders
                             r-shiny
                             r-rstatix
                             r-rpart
                             r-reshape2
                             r-rcolorbrewer
                             r-partykit
                             r-operator-tools
                             r-magrittr
                             r-maftools
                             r-fontawesome
                             r-fabricatr
                             r-dt
                             r-desctools
                             r-dashboardthemes
                             r-comparegroups
                             r-cbioportaldata
                             r-car))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Lydia-King/GNOSIS/")
    (synopsis "Genomics explorer using statistical and survival analysis in R")
    (description
     "GNOSIS incorporates a range of R packages enabling users to efficiently explore
and visualise clinical and genomic data obtained from @code{cBioPortal}.  GNOSIS
uses an intuitive GUI and multiple tab panels supporting a range of
functionalities.  These include data upload and initial exploration, data
recoding and subsetting, multiple visualisations, survival analysis, statistical
analysis and mutation analysis, in addition to facilitating reproducible
research.")
    (license license:expat)))

(define-public r-gnet2
  (package
    (name "r-gnet2")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GNET2" version))
       (sha256
        (base32 "1735aywf8k9ivq6s39lc9ws35sk936c9k1m25fgc23ryw4bkr1rn"))))
    (properties `((upstream-name . "GNET2")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost
                             r-summarizedexperiment
                             r-reshape2
                             r-rcpp
                             r-matrixstats
                             r-igraph
                             r-ggplot2
                             r-dplyr
                             r-diagrammer))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/chrischen1/GNET2")
    (synopsis
     "Constructing gene regulatory networks from expression data through functional module inference")
    (description
     "Cluster genes to functional groups with E-M process.  Iteratively perform TF
assigning and Gene assigning, until the assignment of genes did not change, or
max number of iterations is reached.")
    (license license:asl2.0)))

(define-public r-gmrp
  (package
    (name "r-gmrp")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GMRP" version))
       (sha256
        (base32 "15d4yr2lvdap8ypqxl83n44v58spq1ffa42pcp37jbsymwg4azx9"))))
    (properties `((upstream-name . "GMRP")))
    (build-system r-build-system)
    (propagated-inputs (list r-plotrix r-genomicranges r-diagram))
    (home-page "https://bioconductor.org/packages/GMRP")
    (synopsis "GWAS-based Mendelian Randomization and Path Analyses")
    (description
     "Perform Mendelian randomization analysis of multiple SNPs to determine risk
factors causing disease of study and to exclude confounding variabels and
perform path analysis to construct path of risk factors to the disease.")
    (license license:gpl2+)))

(define-public r-gmoviz
  (package
    (name "r-gmoviz")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gmoviz" version))
       (sha256
        (base32 "070r948gm4i5l4mnskl2agmfjpihvjpw2zgdji2z2dp0lh5d4bwn"))))
    (properties `((upstream-name . "gmoviz")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-pracma
                             r-iranges
                             r-gridbase
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-complexheatmap
                             r-colorspace
                             r-circlize
                             r-biostrings
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/gmoviz")
    (synopsis
     "Seamless visualization of complex genomic variations in GMOs and edited cell lines")
    (description
     "Genetically modified organisms (GMOs) and cell lines are widely used models in
all kinds of biological research.  As part of characterising these models, DNA
sequencing technology and bioinformatics analyses are used systematically to
study their genomes.  Therefore, large volumes of data are generated and various
algorithms are applied to analyse this data, which introduces a challenge on
representing all findings in an informative and concise manner. `gmoviz`
provides users with an easy way to visualise and facilitate the explanation of
complex genomic editing events on a larger, biologically-relevant scale.")
    (license license:gpl3)))

(define-public r-gmicr
  (package
    (name "r-gmicr")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GmicR" version))
       (sha256
        (base32 "1aglik6ywfwr6qpjb6b5ykg02x1k9q4v83liw29dahh74hp7rdzz"))))
    (properties `((upstream-name . "GmicR")))
    (build-system r-build-system)
    (propagated-inputs (list r-wgcna
                             r-shiny
                             r-reshape2
                             r-org-mm-eg-db
                             r-org-hs-eg-db
                             r-gseabase
                             r-grbase
                             r-grain
                             r-gostats
                             r-foreach
                             r-dt
                             r-doparallel
                             r-data-table
                             r-category
                             r-bnlearn
                             r-ape
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GmicR")
    (synopsis
     "Combines WGCNA and xCell readouts with bayesian network learrning to generate a Gene-Module Immune-Cell network (GMIC)")
    (description
     "This package uses bayesian network learning to detect relationships between Gene
Modules detected by WGCNA and immune cell signatures defined by @code{xCell}.
It is a hypothesis generating tool.")
    (license (license:fsdg-compatible "GPL-2 + file LICENSE"))))

(define-public r-gmapr
  (package
    (name "r-gmapr")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gmapR" version))
       (sha256
        (base32 "08l0937r0zzb8n2h7c8ydia9c63rng4pw63pbwm4i9d8cbzp0hcs"))))
    (properties `((upstream-name . "gmapR")))
    (build-system r-build-system)
    (inputs (list zlib))
    (propagated-inputs (list r-variantannotation
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-iranges
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-bsgenome
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics
                             r-biobase))
    (home-page "https://bioconductor.org/packages/gmapR")
    (synopsis "An R interface to the GMAP/GSNAP/GSTRUCT suite")
    (description
     "GSNAP and GMAP are a pair of tools to align short-read data written by Tom Wu.
This package provides convenience methods to work with GMAP and GSNAP from
within R. In addition, it provides methods to tally alignment results on a
per-nucleotide basis using the bam_tally tool.")
    (license license:artistic2.0)))

(define-public r-gloscope
  (package
    (name "r-gloscope")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GloScope" version))
       (sha256
        (base32 "1zjj0pk2i0c6ivx05kyn1hd1pwnjdrx24dyf6gxg1q8hvdbpz7q2"))))
    (properties `((upstream-name . "GloScope")))
    (build-system r-build-system)
    (propagated-inputs (list r-singlecellexperiment
                             r-rlang
                             r-rann
                             r-mvnfast
                             r-mclust
                             r-mass
                             r-ggplot2
                             r-fnn
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GloScope")
    (synopsis "Population-level Representation on scRNA-Seq data")
    (description
     "This package aims at representing and summarizing the entire single-cell profile
of a sample.  It allows researchers to perform important bioinformatic analyses
at the sample-level such as visualization and quality control.  The main
functions Estimate sample distribution and calculate statistical divergence
among samples, and visualize the distance matrix through MDS plots.")
    (license license:artistic2.0)))

(define-public r-globalseq
  (package
    (name "r-globalseq")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "globalSeq" version))
       (sha256
        (base32 "1b0qjcwrm8svck7ykz9h2vrcc06cag2dczxlzd13arqhr4d1a6p7"))))
    (properties `((upstream-name . "globalSeq")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rauschenberger/globalSeq")
    (synopsis "Global Test for Counts")
    (description
     "The method may be conceptualised as a test of overall significance in regression
analysis, where the response variable is overdispersed and the number of
explanatory variables exceeds the sample size.  Useful for testing for
association between RNA-Seq and high-dimensional data.")
    (license license:gpl3)))

(define-public r-glmsparsenet
  (package
    (name "r-glmsparsenet")
    (version "1.20.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "glmSparseNet" version))
       (sha256
        (base32 "09cma62cj9wpgd3pm2j9azj7wvwfnk13715qnlzrk1ika4qkzl9l"))))
    (properties `((upstream-name . "glmSparseNet")))
    (build-system r-build-system)
    (propagated-inputs (list r-survminer
                             r-summarizedexperiment
                             r-stringr
                             r-reshape2
                             r-readr
                             r-multiassayexperiment
                             r-matrix
                             r-httr
                             r-glue
                             r-glmnet
                             r-ggplot2
                             r-futile-options
                             r-futile-logger
                             r-forcats
                             r-dplyr
                             r-digest
                             r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://www.github.com/sysbiomed/glmSparseNet")
    (synopsis "Network Centrality Metrics for Elastic-Net Regularized Models")
    (description
     "@code{glmSparseNet} is an R-package that generalizes sparse regression models
when the features (e.g. genes) have a graph structure (e.g. protein-protein
interactions), by including network-based regularizers. @code{glmSparseNet} uses
the glmnet R-package, by including centrality measures of the network as penalty
weights in the regularization.  The current version implements regularization
based on node degree, i.e.  the strength and/or number of its associated edges,
either by promoting hubs in the solution or orphan genes in the solution.  All
the glmnet distribution families are supported, namely \"gaussian\", \"poisson\",
\"binomial\", \"multinomial\", \"cox\", and \"mgaussian\".")
    (license license:gpl3)))

(define-public r-gladiatox
  (package
    (name "r-gladiatox")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GladiaTOX" version))
       (sha256
        (base32 "01hb21j4pi59ix2ffj8aalc1zq382zw3n2gfaxqng78gadi1ck2n"))))
    (properties `((upstream-name . "GladiaTOX")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-xml
                             r-tidyr
                             r-stringr
                             r-rsqlite
                             r-rmariadb
                             r-rjsonio
                             r-rcurl
                             r-rcolorbrewer
                             r-numderiv
                             r-ggrepel
                             r-ggplot2
                             r-dbi
                             r-data-table
                             r-brew))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GladiaTOX")
    (synopsis "R Package for Processing High Content Screening data")
    (description
     "@code{GladiaTOX} R package is an open-source, flexible solution to high-content
screening data processing and reporting in biomedical research. @code{GladiaTOX}
takes advantage of the tcpl core functionalities and provides a number of
extensions: it provides a web-service solution to fetch raw data; it computes
severity scores and exports @code{ToxPi} formatted files; furthermore it
contains a suite of functionalities to generate pdf reports for quality control
and data processing.")
    (license license:gpl2)))

(define-public r-gispa
  (package
    (name "r-gispa")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GISPA" version))
       (sha256
        (base32 "19vbcfdf959xs6kgds37ij3qay9x61dzrlvcs238m7hywl4dn3lz"))))
    (properties `((upstream-name . "GISPA")))
    (build-system r-build-system)
    (propagated-inputs (list r-scatterplot3d
                             r-plyr
                             r-latticeextra
                             r-lattice
                             r-hh
                             r-gseabase
                             r-genefilter
                             r-data-table
                             r-changepoint
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GISPA")
    (synopsis "GISPA: Method for Gene Integrated Set Profile Analysis")
    (description
     "GISPA is a method intended for the researchers who are interested in defining
gene sets with similar, a priori specified molecular profile.  GISPA method has
been previously published in Nucleic Acid Research (Kowalski et al., 2016; PMID:
26826710).")
    (license license:gpl2)))

(define-public r-girafe
  (package
    (name "r-girafe")
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "girafe" version))
       (sha256
        (base32 "09sax6vqfrzj17q6szzszxn1qhhsv4jkryv3sbijxbk45scmjrj4"))))
    (properties `((upstream-name . "girafe")))
    (build-system r-build-system)
    (propagated-inputs (list r-shortread
                             r-s4vectors
                             r-rsamtools
                             r-iranges
                             r-intervals
                             r-genomeintervals
                             r-biostrings
                             r-biocgenerics
                             r-biobase))
    (home-page "https://bioconductor.org/packages/girafe")
    (synopsis
     "Genome Intervals and Read Alignments for Functional Exploration")
    (description
     "The package girafe deals with the genome-level representation of aligned reads
from next-generation sequencing data.  It contains an object class for enabling
a detailed description of genome intervals with aligned reads and functions for
comparing, visualising, exporting and working with such intervals and the
aligned reads.  As such, the package interacts with and provides a link between
the packages @code{ShortRead}, IRanges and @code{genomeIntervals}.")
    (license license:artistic2.0)))

(define-public r-gigseadata
  (package
    (name "r-gigseadata")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GIGSEAdata" version
                              'experiment))
       (sha256
        (base32 "0qisi43rbjg9y2fglkri3bb1wxn4rcylhlidw2ml4bl7d36rfxdz"))))
    (properties `((upstream-name . "GIGSEAdata")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GIGSEAdata")
    (synopsis "Gene set collections for the GIGSEA package")
    (description "The gene set collection used for the GIGSEA package.")
    (license license:lgpl3)))

(define-public r-gigsea
  (package
    (name "r-gigsea")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GIGSEA" version))
       (sha256
        (base32 "08039jcq5jxq343ig56x22w1yqwnmd5wz65r3ipldp7dcrm2ccfp"))))
    (properties `((upstream-name . "GIGSEA")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-mass r-locfdr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GIGSEA")
    (synopsis "Genotype Imputed Gene Set Enrichment Analysis")
    (description
     "We presented the Genotype-imputed Gene Set Enrichment Analysis (GIGSEA), a novel
method that uses GWAS-and-@code{eQTL-imputed} trait-associated differential gene
expression to interrogate gene set enrichment for the trait-associated SNPs.  By
incorporating @code{eQTL} from large gene expression studies, e.g. GTEx, GIGSEA
appropriately addresses such challenges for SNP enrichment as gene size, gene
boundary, SNP distal regulation, and multiple-marker regulation.  The weighted
linear regression model, taking as weights both imputation accuracy and model
completeness, was used to perform the enrichment test, properly adjusting the
bias due to redundancy in different gene sets.  The permutation test,
furthermore, is used to evaluate the significance of enrichment, whose
efficiency can be largely elevated by expressing the computational intensive
part in terms of large matrix operation.  We have shown the appropriate type I
error rates for GIGSEA (<5%), and the preliminary results also demonstrate its
good performance to uncover the real signal.")
    (license license:lgpl3)))

(define-public r-ggtreedendro
  (package
    (name "r-ggtreedendro")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ggtreeDendro" version))
       (sha256
        (base32 "0gnznbv4959mp76wdz9ma64xina97mb7ndzg2vjni0cr9p1prrxc"))))
    (properties `((upstream-name . "ggtreeDendro")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidytree r-ggtree r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ggtreeDendro")
    (synopsis "Drawing 'dendrogram' using 'ggtree'")
    (description
     "Offers a set of autoplot methods to visualize tree-like structures (e.g.,
hierarchical clustering and classification/regression trees) using ggtree'.  You
can adjust graphical parameters using grammar of graphic syntax and integrate
external data to the tree.")
    (license license:artistic2.0)))

(define-public r-ggspavis
  (package
    (name "r-ggspavis")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ggspavis" version))
       (sha256
        (base32 "0zfxd3gw15dd0l3l49g4f275vl0bfllfn27y48ldv7yy608bzk26"))))
    (properties `((upstream-name . "ggspavis")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-spatialexperiment
                             r-singlecellexperiment r-ggside r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lmweber/ggspavis")
    (synopsis
     "Visualization functions for spatially resolved transcriptomics data")
    (description
     "Visualization functions for spatially resolved transcriptomics datasets stored
in @code{SpatialExperiment} format.  Includes functions to create several types
of plots for data from from spot-based (e.g. 10x Genomics Visium) and
molecule-based (e.g. @code{seqFISH}) technological platforms.")
    (license license:expat)))

(define-public r-ggsc
  (package
    (name "r-ggsc")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ggsc" version))
       (sha256
        (base32 "18s8ml11ikw9f223fv4glz7c0hizdvqks0z0nz7vbfbhc43nv2p5"))))
    (properties `((upstream-name . "ggsc")))
    (build-system r-build-system)
    (propagated-inputs (list r-yulab-utils
                             r-tidyr
                             r-tidydr
                             r-tibble
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-seurat
                             r-scattermore
                             r-rlang
                             r-rcppparallel
                             r-rcpparmadillo
                             r-rcpp
                             r-ggplot2
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/YuLab-SMU/ggsc")
    (synopsis "Visualizing Single Cell Data")
    (description
     "Useful functions to visualize single cell and spatial data.  It supports both
@code{SingleCellExperiment} and Seurat objects.  It also supports visualizing
the data using grammar of graphics implemented in ggplot2'.")
    (license license:artistic2.0)))

(define-public r-ggpa
  (package
    (name "r-ggpa")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GGPA" version))
       (sha256
        (base32 "08xbxbqq9vm1i3y99n72v4m7crf18wq7mk21psm7jpp7b0k8f0xr"))))
    (properties `((upstream-name . "GGPA")))
    (build-system r-build-system)
    (propagated-inputs (list r-sna
                             r-scales
                             r-rcpparmadillo
                             r-rcpp
                             r-network
                             r-matrixstats
                             r-ggally))
    (home-page "https://github.com/dongjunchung/GGPA/")
    (synopsis
     "graph-GPA: A graphical model for prioritizing GWAS results and investigating pleiotropic architecture")
    (description
     "Genome-wide association studies (GWAS) is a widely used tool for identification
of genetic variants associated with phenotypes and diseases, though complex
diseases featuring many genetic variants with small effects present difficulties
for traditional these studies.  By leveraging pleiotropy, the statistical power
of a single GWAS can be increased.  This package provides functions for fitting
graph-GPA, a statistical framework to prioritize GWAS results by integrating
pleiotropy.  GGPA package provides user-friendly interface to fit graph-GPA
models, implement association mapping, and generate a phenotype graph.")
    (license license:gpl2+)))

(define-public r-ggmsa
  (package
    (name "r-ggmsa")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ggmsa" version))
       (sha256
        (base32 "1arznacrg8x8cq5k8gibnmkf1gc7bqxj5syvv0vbfibfplmschsi"))))
    (properties `((upstream-name . "ggmsa")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-statebins
                             r-seqmagick
                             r-rcolorbrewer
                             r-r4rna
                             r-magrittr
                             r-ggtree
                             r-ggplot2
                             r-ggforce
                             r-ggalt
                             r-dplyr
                             r-biostrings
                             r-aplot))
    (native-inputs (list r-knitr))
    (home-page "https://doi.org/10.1093/bib/bbac222")
    (synopsis "Plot Multiple Sequence Alignment using 'ggplot2'")
    (description
     "This package provides a visual exploration tool for multiple sequence alignment
and associated data.  Supports MSA of DNA, RNA, and protein sequences using
ggplot2'.  Multiple sequence alignment can easily be combined with other ggplot2
plots, such as phylogenetic tree Visualized by ggtree', boxplot, genome map and
so on.  More features: visualization of sequence logos, sequence bundles, RNA
secondary structures and detection of sequence recombinations.")
    (license license:artistic2.0)))

(define-public r-ggmanh
  (package
    (name "r-ggmanh")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ggmanh" version))
       (sha256
        (base32 "1j2qi5rp6z3442vs2r198swjz4mvf8lnvssf42jq86faan9jx10h"))))
    (properties `((upstream-name . "ggmanh")))
    (build-system r-build-system)
    (propagated-inputs (list r-seqarray
                             r-scales
                             r-rlang
                             r-rcolorbrewer
                             r-ggrepel
                             r-ggplot2
                             r-gdsfmt))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ggmanh")
    (synopsis "Visualization Tool for GWAS Result")
    (description
     "Manhattan plot and QQ Plot are commonly used to visualize the end result of
Genome Wide Association Study.  The \"ggmanh\" package aims to keep the generation
of these plots simple while maintaining customizability.  Main functions include
manhattan_plot, qqunif, and @code{thinPoints}.")
    (license license:expat)))

(define-public r-ggkegg
  (package
    (name "r-ggkegg")
    (version "1.0.13")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ggkegg" version))
       (sha256
        (base32 "0bm437braigzraaxd4im7qnvhylc5b09qvs1yqnjmfr5jycihjfd"))))
    (properties `((upstream-name . "ggkegg")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-tidygraph
                             r-tibble
                             r-stringr
                             r-shadowtext
                             r-patchwork
                             r-org-hs-eg-db
                             r-magick
                             r-igraph
                             r-gtable
                             r-ggraph
                             r-ggplot2
                             r-getoptlong
                             r-dplyr
                             r-data-table
                             r-biocfilecache
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/noriakis/ggkegg")
    (synopsis "KEGG pathway visualization by ggplot2")
    (description
     "This package aims to import, parse, and analyze KEGG data such as KEGG PATHWAY
and KEGG MODULE. The package supports visualizing KEGG information using ggplot2
and ggraph through using the grammar of graphics.  The package enables the
direct visualization of the results from various omics analysis packages.")
    (license license:expat)))

(define-public r-gghumanmethcancerpanelv1-db
  (package
    (name "r-gghumanmethcancerpanelv1-db")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GGHumanMethCancerPanelv1.db" version
                              'annotation))
       (sha256
        (base32 "0ag1pkbh4mx4aplfrrz1q4f4cl05mczq9pcsfkd1071qk51dcwvx"))))
    (properties `((upstream-name . "GGHumanMethCancerPanelv1.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationforge r-annotationdbi))
    (home-page "https://bioconductor.org/packages/GGHumanMethCancerPanelv1.db")
    (synopsis
     "Illumina Golden Gate Human Methylation Cancer Panel Version 1 annotation data (chip GGHumanMethCancerPanelv1)")
    (description
     "Illumina Golden Gate Human Methylation Cancer Panel Version 1 annotation data
(chip GG@code{HumanMethCancerPanelv1}) assembled using data from public
repositories")
    (license license:artistic2.0)))

(define-public r-gg4way
  (package
    (name "r-gg4way")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gg4way" version))
       (sha256
        (base32 "1dy0kb2lvgsjx1pb7xys468cyppn13cm7c96z795gzy9w1nippig"))))
    (properties `((upstream-name . "gg4way")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-scales
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-limma
                             r-janitor
                             r-glue
                             r-ggrepel
                             r-ggplot2
                             r-edger
                             r-dplyr
                             r-deseq2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ben-laufer/gg4way")
    (synopsis "4way Plots of Differential Expression")
    (description
     "4way plots enable a comparison of the @code{logFC} values from two contrasts of
differential gene expression.  The gg4way package creates 4way plots using the
ggplot2 framework and supports popular Bioconductor objects.  The package also
provides information about the correlation between contrasts and significant
genes of interest.")
    (license license:expat)))

(define-public r-gewist
  (package
    (name "r-gewist")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GEWIST" version))
       (sha256
        (base32 "02abx3zr4vyklc4d611ygy8g0msl4ir7d6fh9gp0lx1bscvqraa0"))))
    (properties `((upstream-name . "GEWIST")))
    (build-system r-build-system)
    (propagated-inputs (list r-car))
    (home-page "https://bioconductor.org/packages/GEWIST")
    (synopsis "Gene Environment Wide Interaction Search Threshold")
    (description
     "This GEWIST package provides statistical tools to efficiently optimize SNP
prioritization for gene-gene and gene-environment interactions.")
    (license license:gpl2)))

(define-public r-geva
  (package
    (name "r-geva")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "geva" version))
       (sha256
        (base32 "0gk8ypzhixjp0nx4ww7xi39fgmid0yng6h3qsh5bl198j4ib1r3r"))))
    (properties `((upstream-name . "geva")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrixstats r-fastcluster r-dbscan))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sbcblab/geva")
    (synopsis "Gene Expression Variation Analysis (GEVA)")
    (description
     "Statistic methods to evaluate variations of differential expression (DE) between
multiple biological conditions.  It takes into account the fold-changes and
p-values from previous differential expression (DE) results that use large-scale
data (*e.g.*, microarray and RNA-seq) and evaluates which genes would react in
response to the distinct experiments.  This evaluation involves an unique
pipeline of statistical methods, including weighted summarization, quantile
detection, cluster analysis, and ANOVA tests, in order to classify a subset of
relevant genes whose DE is similar or dependent to certain biological factors.")
    (license license:lgpl3)))

(define-public r-geuvadistranscriptexpr
  (package
    (name "r-geuvadistranscriptexpr")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GeuvadisTranscriptExpr" version
                              'experiment))
       (sha256
        (base32 "12253pncfqvq7c1ajkdgfn4f861w2zk3j6p5xyra7c0d0z47a2b6"))))
    (properties `((upstream-name . "GeuvadisTranscriptExpr")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GeuvadisTranscriptExpr")
    (synopsis
     "Data package with transcript expression and bi-allelic genotypes from the GEUVADIS project")
    (description
     "This package provides transcript expression and bi-allelic genotypes
corresponding to the chromosome 19 for CEU individuals from the GEUVADIS
project, Lappalainen et al.")
    (license license:gpl3+)))

(define-public r-getdee2
  (package
    (name "r-getdee2")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "getDEE2" version))
       (sha256
        (base32 "1h433vz9nrsr7v26davf8wmqz6z9qckqxi8884yfgr8234z9dkk8"))))
    (properties `((upstream-name . "getDEE2")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-htm2txt))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/markziemann/getDEE2")
    (synopsis "Programmatic access to the DEE2 RNA expression dataset")
    (description
     "Digital Expression Explorer 2 (or DEE2 for short) is a repository of processed
RNA-seq data in the form of counts.  It was designed so that researchers could
undertake re-analysis and meta-analysis of published RNA-seq studies quickly and
easily.  As of April 2020, over 1 million SRA datasets have been processed.
This package provides an R interface to access these expression data.  More
information about the DEE2 project can be found at the project homepage
(http://dee2.io) and main publication
(https://doi.org/10.1093/gigascience/giz022).")
    (license license:gpl3)))

(define-public r-gesper
  (package
    (name "r-gesper")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gespeR" version))
       (sha256
        (base32 "1cpin91yha24maawpzqvxqir8s65v14rf1cl3ikiwcrwawq89f2a"))))
    (properties `((upstream-name . "gespeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2
                             r-matrix
                             r-glmnet
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-cellhts2
                             r-biomart
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "http://www.cbg.ethz.ch/software/gespeR")
    (synopsis "Gene-Specific Phenotype EstimatoR")
    (description
     "Estimates gene-specific phenotypes from off-target confounded RNAi screens.  The
phenotype of each @code{siRNA} is modeled based on on-targeted and off-targeted
genes, using a regularized linear regression model.")
    (license license:gpl3)))

(define-public r-gep2pep
  (package
    (name "r-gep2pep")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gep2pep" version))
       (sha256
        (base32 "0m9s8jj6xknbidrzpl2xf9xaq5w72dk09ils7jkw86zsiscr8l20"))))
    (properties `((upstream-name . "gep2pep")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-rhdf5
                             r-repo
                             r-iterators
                             r-gseabase
                             r-foreach
                             r-digest
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/gep2pep")
    (synopsis "Creation and Analysis of Pathway Expression Profiles (PEPs)")
    (description
     "Pathway Expression Profiles (PEPs) are based on the expression of pathways
(defined as sets of genes) as opposed to individual genes.  This package
converts gene expression profiles to PEPs and performs enrichment analysis of
both pathways and experimental conditions, such as \"drug set enrichment
analysis\" and \"gene2drug\" drug discovery analysis respectively.")
    (license license:gpl3)))

(define-public r-geotcgadata
  (package
    (name "r-geotcgadata")
    (version "2.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GeoTcgaData" version))
       (sha256
        (base32 "1mlbi8f32mhkwdkrl95krjx6vckb4k8rs9drf521rm933qjjhz07"))))
    (properties `((upstream-name . "GeoTcgaData")))
    (build-system r-build-system)
    (propagated-inputs (list r-topconfects r-summarizedexperiment r-plyr
                             r-data-table r-cqn))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/YuLab-SMU/GeoTcgaData")
    (synopsis "Processing Various Types of Data on GEO and TCGA")
    (description
     "Gene Expression Omnibus(GEO) and The Cancer Genome Atlas (TCGA) provide us with
a wealth of data, such as RNA-seq, DNA Methylation, SNP and Copy number
variation data.  It's easy to download data from TCGA using the gdc tool, but
processing these data into a format suitable for bioinformatics analysis
requires more work.  This R package was developed to handle these data.")
    (license license:artistic2.0)))

(define-public r-geosubmission
  (package
    (name "r-geosubmission")
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GEOsubmission" version))
       (sha256
        (base32 "03icqyknc0kli12ybnk08pqhinagn8d7m73dyl90wnpc87sm8lqw"))))
    (properties `((upstream-name . "GEOsubmission")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase r-affy))
    (home-page "https://bioconductor.org/packages/GEOsubmission")
    (synopsis "Prepares microarray data for submission to GEO")
    (description
     "Helps to easily submit a microarray dataset and the associated sample
information to GEO by preparing a single file for upload (direct deposit).")
    (license license:gpl2+)))

(define-public r-geomxtools
  (package
    (name "r-geomxtools")
    (version "3.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GeomxTools" version))
       (sha256
        (base32 "01lixadi4w7wsv39k51mimm88bc8hqfmcnbl16x28nzw91qfnmnj"))))
    (properties `((upstream-name . "GeomxTools")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-seuratobject
                             r-s4vectors
                             r-rlang
                             r-rjson
                             r-reshape2
                             r-readxl
                             r-nanostringnctools
                             r-lmertest
                             r-ggplot2
                             r-ggally
                             r-envstats
                             r-dplyr
                             r-data-table
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GeomxTools")
    (synopsis "NanoString GeoMx Tools")
    (description
     "This package provides tools for @code{NanoString} Technologies @code{GeoMx}
Technology.  Package provides functions for reading in DCC and PKC files based
on an @code{ExpressionSet} derived object.  Normalization and QC functions are
also included.")
    (license license:expat)))

(define-public r-geometadb
  (package
    (name "r-geometadb")
    (version "1.64.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GEOmetadb" version))
       (sha256
        (base32 "11z6fq12kk7v0aqx1fi4bqhq6zhiq101hs6b6fgabqnjy7f96azq"))))
    (properties `((upstream-name . "GEOmetadb")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsqlite r-geoquery))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GEOmetadb")
    (synopsis "compilation of metadata from NCBI GEO")
    (description
     "The NCBI Gene Expression Omnibus (GEO) represents the largest public repository
of microarray data.  However, finding data of interest can be challenging using
current tools.  GEOmetadb is an attempt to make access to the metadata
associated with samples, platforms, and datasets much more feasible.  This is
accomplished by parsing all the NCBI GEO metadata into a SQLite database that
can be stored and queried locally.  GEOmetadb is simply a thin wrapper around
the SQLite database along with associated documentation.  Finally, the SQLite
database is updated regularly as new data is added to GEO and can be downloaded
at will for the most up-to-date metadata.  GEOmetadb paper:
http://bioinformatics.oxfordjournals.org/cgi/content/short/24/23/2798 .")
    (license license:artistic2.0)))

(define-public r-geofastq
  (package
    (name "r-geofastq")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GEOfastq" version))
       (sha256
        (base32 "0j3x5q531yzma852wqrm2g5m643hjg0laa91n6a5r8zcr14f2kw6"))))
    (properties `((upstream-name . "GEOfastq")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-stringr
                             r-rvest
                             r-rcurl
                             r-plyr
                             r-foreach
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GEOfastq")
    (synopsis "Downloads ENA Fastqs With GEO Accessions")
    (description
     "GEOfastq is used to download fastq files from the European Nucleotide Archive
(ENA) starting with an accession from the Gene Expression Omnibus (GEO).  To do
this, sample metadata is retrieved from GEO and the Sequence Read Archive (SRA).
 SRA run accessions are then used to construct FTP and aspera download links for
fastq files generated by the ENA.")
    (license license:expat)))

(define-public r-geoexplorer
  (package
    (name "r-geoexplorer")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GEOexplorer" version))
       (sha256
        (base32 "1jhjsjqbd2hx0axf55k0q4ls21bb3p1x9y9k5s4sb6wanmpgiqpw"))))
    (properties `((upstream-name . "GEOexplorer")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-xml
                             r-xfun
                             r-umap
                             r-sva
                             r-stringr
                             r-shinyheatmaply
                             r-shinycssloaders
                             r-shinybusy
                             r-shiny
                             r-scales
                             r-readxl
                             r-r-utils
                             r-plotly
                             r-pheatmap
                             r-markdown
                             r-limma
                             r-knitr
                             r-impute
                             r-httr
                             r-htmltools
                             r-heatmaply
                             r-ggplot2
                             r-geoquery
                             r-factoextra
                             r-enrichr
                             r-edger
                             r-dt
                             r-car
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/guypwhunt/GEOexplorer/")
    (synopsis
     "GEOexplorer: a webserver for gene expression analysis and visualisation")
    (description
     "GEOexplorer is a webserver and R/Bioconductor package and web application that
enables users to perform gene expression analysis.  The development of
GEOexplorer was made possible because of the excellent code provided by GEO2R
(https: //www.ncbi.nlm.nih.gov/geo/geo2r/).")
    (license license:gpl3)))

(define-public r-geodiff
  (package
    (name "r-geodiff")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GeoDiff" version))
       (sha256
        (base32 "1z3x8xcjl5kr4wyamhxf1p5mc28pc0cmv0j9nzzbzvz6mkf0ma1y"))))
    (properties `((upstream-name . "GeoDiff")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-testthat
                             r-roptim
                             r-robust
                             r-rcpparmadillo
                             r-rcpp
                             r-plyr
                             r-nanostringnctools
                             r-matrix
                             r-lme4
                             r-geomxtools
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Nanostring-Biostats/GeoDiff")
    (synopsis
     "Count model based differential expression and normalization on GeoMx RNA data")
    (description
     "This package provides a series of statistical models using count generating
distributions for background modelling, feature and sample QC, normalization and
differential expression analysis on @code{GeoMx} RNA data.  The application of
these methods are demonstrated by example data analysis vignette.")
    (license license:expat)))

(define-public r-genvisr
  (package
    (name "r-genvisr")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GenVisR" version))
       (sha256
        (base32 "0mlv0r2f6800z8v96ba5227svp9r5cyhr8ijs072qw4g30h6mcpa"))))
    (properties `((upstream-name . "GenVisR")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-variantannotation
                             r-scales
                             r-rsamtools
                             r-reshape2
                             r-plyr
                             r-iranges
                             r-gtools
                             r-gtable
                             r-gridextra
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-dbi
                             r-data-table
                             r-bsgenome
                             r-biostrings
                             r-biomart
                             r-biocgenerics
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GenVisR")
    (synopsis "Genomic Visualizations in R")
    (description
     "Produce highly customizable publication quality graphics for genomic data
primarily at the cohort level.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-genproseq
  (package
    (name "r-genproseq")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GenProSeq" version))
       (sha256
        (base32 "17rqr4k9n0mkwii48phsh9z3qv1xp1pvk5bcs53mav9z9x24fij6"))))
    (properties `((upstream-name . "GenProSeq")))
    (build-system r-build-system)
    (propagated-inputs (list r-word2vec
                             r-ttgsea
                             r-tensorflow
                             r-reticulate
                             r-mclust
                             r-keras
                             r-deeppincs
                             r-catencoders))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GenProSeq")
    (synopsis "Generating Protein Sequences with Deep Generative Models")
    (description
     "Generative modeling for protein engineering is key to solving fundamental
problems in synthetic biology, medicine, and material science.  Machine learning
has enabled us to generate useful protein sequences on a variety of scales.
Generative models are machine learning methods which seek to model the
distribution underlying the data, allowing for the generation of novel samples
with similar properties to those on which the model was trained.  Generative
models of proteins can learn biologically meaningful representations helpful for
a variety of downstream tasks.  Furthermore, they can learn to generate protein
sequences that have not been observed before and to assign higher probability to
protein sequences that satisfy desired criteria.  In this package, common deep
generative models for protein sequences, such as variational autoencoder (VAE),
generative adversarial networks (GAN), and autoregressive models are available.
In the VAE and GAN, the Word2vec is used for embedding.  The transformer encoder
is applied to protein sequences for the autoregressive model.")
    (license license:artistic2.0)))

(define-public r-genomictuples
  (package
    (name "r-genomictuples")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GenomicTuples" version))
       (sha256
        (base32 "1bw8ki8xap7v4n3lcwvbybv6rf0jwzdyjsnhabrvs8x43prl5h6x"))))
    (properties `((upstream-name . "GenomicTuples")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rcpp
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-data-table
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "www.github.com/PeteHaitch/GenomicTuples")
    (synopsis "Representation and Manipulation of Genomic Tuples")
    (description
     "@code{GenomicTuples} defines general purpose containers for storing genomic
tuples.  It aims to provide functionality for tuples of genomic co-ordinates
that are analogous to those available for genomic ranges in the
@code{GenomicRanges} Bioconductor package.")
    (license license:artistic2.0)))

(define-public r-genomicsupersignature
  (package
    (name "r-genomicsupersignature")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GenomicSuperSignature" version))
       (sha256
        (base32 "0aq6919aqd0wp4z98isvq5gyydcxjq1ihsvi4nky9s5lrsibdpn0"))))
    (properties `((upstream-name . "GenomicSuperSignature")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-plotly
                             r-irlba
                             r-ggpubr
                             r-ggplot2
                             r-flextable
                             r-dplyr
                             r-complexheatmap
                             r-biocfilecache
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/shbrief/GenomicSuperSignature")
    (synopsis
     "Interpretation of RNA-seq experiments through robust, efficient comparison to public databases")
    (description
     "This package provides a novel method for interpreting new transcriptomic
datasets through near-instantaneous comparison to public archives without
high-performance computing requirements.  Through the pre-computed index, users
can identify public resources associated with their dataset such as gene sets,
@code{MeSH} term, and publication.  Functions to identify interpretable
annotations and intuitive visualization options are implemented in this package.")
    (license license:artistic2.0)))

(define-public r-genomicplot
  (package
    (name "r-genomicplot")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GenomicPlot" version))
       (sha256
        (base32 "1662y1sk3sayw0717byrd7z40y2kr8xl0aifadsx90f0zb802a2m"))))
    (properties `((upstream-name . "GenomicPlot")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-venndiagram
                             r-tidyr
                             r-scales
                             r-rtracklayer
                             r-rsamtools
                             r-rcas
                             r-plyranges
                             r-iranges
                             r-ggsignif
                             r-ggsci
                             r-ggpubr
                             r-ggplotify
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-genomation
                             r-edger
                             r-dplyr
                             r-cowplot
                             r-complexheatmap
                             r-circlize
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/shuye2009/GenomicPlot")
    (synopsis
     "Plot profiles of next generation sequencing data in genomic features")
    (description
     "Visualization of next generation sequencing (NGS) data is essential for
interpreting high-throughput genomics experiment results. @code{GenomicPlot}
facilitates plotting of NGS data in various formats (bam, bed, wig and bigwig);
both coverage and enrichment over input can be computed and displayed with
respect to genomic features (such as UTR, CDS, enhancer), and user defined
genomic loci or regions.  Statistical tests on signal intensity within user
defined regions of interest can be performed and represented as boxplots or bar
graphs.  Parallel processing is used to speed up computation on multicore
platforms.  In addition to genomic plots which is suitable for displaying of
coverage of genomic DNA (such as @code{ChIPseq} data), metagenomic (without
introns) plots can also be made for RNAseq or CLIPseq data as well.")
    (license license:gpl2)))

(define-public r-genomicozone
  (package
    (name "r-genomicozone")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GenomicOZone" version))
       (sha256
        (base32 "1dr10qwwnk4qz9n0yk7q6yrrwplhx8rnnrn9p521a551jyn0yw38"))))
    (properties `((upstream-name . "GenomicOZone")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rdpack
                             r-plyr
                             r-lsr
                             r-iranges
                             r-gridextra
                             r-ggplot2
                             r-ggbio
                             r-genomicranges
                             r-genomeinfodb
                             r-ckmeans-1d-dp
                             r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GenomicOZone")
    (synopsis
     "Delineate outstanding genomic zones of differential gene activity")
    (description
     "The package clusters gene activity along chromosome into zones, detects
differential zones as outstanding, and visualizes maps of outstanding zones
across the genome.  It enables characterization of effects on multiple genes
within adaptive genomic neighborhoods, which could arise from genome
reorganization, structural variation, or epigenome alteration.  It guarantees
cluster optimality, linear runtime to sample size, and reproducibility.  One can
apply it on genome-wide activity measurements such as copy number,
transcriptomic, proteomic, and methylation data.")
    (license (license:fsdg-compatible "LGPL (>=3)"))))

(define-public r-genomicinteractionnodes
  (package
    (name "r-genomicinteractionnodes")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GenomicInteractionNodes" version))
       (sha256
        (base32 "0160xjki6cf0x4dqp2wmszala35wp77jz5qp2c3ppl07l8dm21jc"))))
    (properties `((upstream-name . "GenomicInteractionNodes")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rbgl
                             r-iranges
                             r-graph
                             r-go-db
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jianhong/GenomicInteractionNodes")
    (synopsis
     "R/Bioconductor package to detect the interaction nodes from HiC/HiChIP/HiCAR data")
    (description
     "The @code{GenomicInteractionNodes} package can import interactions from bedpe
file and define the interaction nodes, the genomic interaction sites with
multiple interaction loops.  The interaction nodes is a binding platform
regulates one or multiple genes.  The detected interaction nodes will be
annotated for downstream validation.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-genomicinstability
  (package
    (name "r-genomicinstability")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "genomicInstability" version))
       (sha256
        (base32 "14l7ixzp8wv9fb5pg5ldqsvn8c7dz8rjxrmy1pcc9qjk06m758ql"))))
    (properties `((upstream-name . "genomicInstability")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-mixtools r-checkmate))
    (home-page "https://github.com/DarwinHealth/genomicInstability")
    (synopsis "Genomic Instability estimation for scRNA-Seq")
    (description
     "This package contain functions to run genomic instability analysis (GIA) from
@code{scRNA-Seq} data.  GIA estimates the association between gene expression
and genomic location of the coding genes.  It uses the @code{aREA} algorithm to
quantify the enrichment of sets of contiguous genes (loci-blocks) on the gene
expression profiles and estimates the Genomic Instability Score (GIS) for each
analyzed cell.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-genomicdistributionsdata
  (package
    (name "r-genomicdistributionsdata")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GenomicDistributionsData" version
                              'experiment))
       (sha256
        (base32 "1c9pqmdnnpm80zzsbl3j66xdwb3kzn7jkisx31sn5jaxzc660jc4"))))
    (properties `((upstream-name . "GenomicDistributionsData")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-experimenthub
                             r-ensembldb
                             r-data-table
                             r-bsgenome
                             r-annotationhub
                             r-annotationfilter))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GenomicDistributionsData")
    (synopsis "Reference data for GenomicDistributions package")
    (description
     "This package provides ready to use reference data for
@code{GenomicDistributions} package.  Raw data was obtained from ensembldb and
processed with helper functions.  Data files are available for the following
genome assemblies: hg19, hg38, mm9 and mm10.")
    (license license:bsd-2)))

(define-public r-genomicdistributions
  (package
    (name "r-genomicdistributions")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GenomicDistributions" version))
       (sha256
        (base32 "0w6janm5awf15n0l6jhh9k371dcx2ad1rqf0gdqfi2asaafzbgrx"))))
    (properties `((upstream-name . "GenomicDistributions")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-reshape2
                             r-plyr
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr
                             r-data-table
                             r-broom
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "http://code.databio.org/GenomicDistributions")
    (synopsis
     "GenomicDistributions: fast analysis of genomic intervals with Bioconductor")
    (description
     "If you have a set of genomic ranges, this package can help you with
visualization and comparison.  It produces several kinds of plots, for example:
Chromosome distribution plots, which visualize how your regions are distributed
over chromosomes; feature distance distribution plots, which visualizes how your
regions are distributed relative to a feature of interest, like Transcription
Start Sites (TSSs); genomic partition plots, which visualize how your regions
overlap given genomic features such as promoters, introns, exons, or intergenic
regions.  It also makes it easy to compare one set of ranges to another.")
    (license license:bsd-2)))

(define-public r-genomewidesnp6crlmm
  (package
    (name "r-genomewidesnp6crlmm")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "genomewidesnp6Crlmm" version
                              'annotation))
       (sha256
        (base32 "16qcxa32fmbdcv5dck0grsnqyfcqql7wpxa1l6andv9hrvabv2jx"))))
    (properties `((upstream-name . "genomewidesnp6Crlmm")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/genomewidesnp6Crlmm")
    (synopsis "Metadata for fast genotyping with the 'crlmm' package")
    (description
     "Package with metadata for fast genotyping Affymetrix @code{GenomeWideSnp_6}
arrays using the crlmm package.")
    (license license:artistic2.0)))

(define-public r-genomewidesnp5crlmm
  (package
    (name "r-genomewidesnp5crlmm")
    (version "1.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "genomewidesnp5Crlmm" version
                              'annotation))
       (sha256
        (base32 "06dmwnjy3gb53y6nr02dmp22qzfl5d63wppazrabcqbzwimhnvp8"))))
    (properties `((upstream-name . "genomewidesnp5Crlmm")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/genomewidesnp5Crlmm")
    (synopsis "Metadata for fast genotyping with the 'crlmm' package")
    (description
     "Package with metadata for fast genotyping Affymetrix @code{GenomeWideSnp_5}
arrays using the crlmm package.  Annotation build is hg19.")
    (license license:artistic2.0)))

(define-public r-genomes
  (package
    (name "r-genomes")
    (version "3.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "genomes" version))
       (sha256
        (base32 "03ygc3xp7z1likl79lk01554y4f52rr4285vmjvdnvwmxx3zfk85"))))
    (properties `((upstream-name . "genomes")))
    (build-system r-build-system)
    (propagated-inputs (list r-readr r-curl))
    (home-page "https://bioconductor.org/packages/genomes")
    (synopsis "Genome sequencing project metadata")
    (description "Download genome and assembly reports from NCBI")
    (license license:gpl3)))

(define-public r-genomeintervals
  (package
    (name "r-genomeintervals")
    (version "1.58.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "genomeIntervals" version))
       (sha256
        (base32 "029d53kbscvj39c7kpvd7w6fyyv324ymn38ar4l50g75j0hkj58r"))))
    (properties `((upstream-name . "genomeIntervals")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-intervals
                             r-genomicranges
                             r-genomeinfodb
                             r-biocgenerics))
    (home-page "https://bioconductor.org/packages/genomeIntervals")
    (synopsis "Operations on genomic intervals")
    (description
     "This package defines classes for representing genomic intervals and provides
functions and methods for working with these.  Note: The package provides the
basic infrastructure for and is enhanced by the package girafe'.")
    (license license:artistic2.0)))

(define-public r-genomautomorphism
  (package
    (name "r-genomautomorphism")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GenomAutomorphism" version))
       (sha256
        (base32 "0hpicwmlzlpgbqprzmq1ip9fnznvn2h8axa02rr5s7dk7ynidwcq"))))
    (properties `((upstream-name . "GenomAutomorphism")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-numbers
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-data-table
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/genomaths/GenomAutomorphism")
    (synopsis
     "Compute the automorphisms between DNA's Abelian group representations")
    (description
     "This is a R package to compute the automorphisms between pairwise aligned DNA
sequences represented as elements from a Genomic Abelian group.  In a general
scenario, from genomic regions till the whole genomes from a given population
(from any species or close related species) can be algebraically represented as
a direct sum of cyclic groups or more specifically Abelian p-groups.  Basically,
we propose the representation of multiple sequence alignments of length N bp as
element of a finite Abelian group created by the direct sum of homocyclic
Abelian group of prime-power order.")
    (license license:artistic2.0)))

(define-public r-genocn
  (package
    (name "r-genocn")
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "genoCN" version))
       (sha256
        (base32 "124za7wdmv76xv34syaspvdya5zi624yar5mp4pjxbwr5dcyxpgk"))))
    (properties `((upstream-name . "genoCN")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/genoCN")
    (synopsis "genotyping and copy number study tools")
    (description
     "Simultaneous identification of copy number states and genotype calls for regions
of either copy number variations or copy number aberrations")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-genextender
  (package
    (name "r-genextender")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "geneXtendeR" version))
       (sha256
        (base32 "0binfml9aa9fk2r0kj1w2dnmqlvw4s2s66vvrsqi1l566j19c668"))))
    (properties `((upstream-name . "geneXtendeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-wordcloud
                             r-tm
                             r-snowballc
                             r-rtracklayer
                             r-rcolorbrewer
                             r-org-rn-eg-db
                             r-networkd3
                             r-go-db
                             r-dplyr
                             r-data-table
                             r-biocstyle
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Bohdan-Khomtchouk/geneXtendeR")
    (synopsis "Optimized Functional Annotation Of ChIP-seq Data")
    (description
     "@code{geneXtendeR} optimizes the functional annotation of @code{ChIP-seq} peaks
by exploring relative differences in annotating @code{ChIP-seq} peak sets to
variable-length gene bodies.  In contrast to prior techniques,
@code{geneXtendeR} considers peak annotations beyond just the closest gene,
allowing users to see peak summary statistics for the first-closest gene,
second-closest gene, ..., n-closest gene whilst ranking the output according to
biologically relevant events and iteratively comparing the fidelity of
peak-to-gene overlap across a user-defined range of upstream and downstream
extensions on the original boundaries of each gene's coordinates.  Since
different @code{ChIP-seq} peak callers produce different differentially enriched
peaks with a large variance in peak length distribution and total peak count,
annotating peak lists with their nearest genes can often be a noisy process.  As
such, the goal of @code{geneXtendeR} is to robustly link differentially enriched
peaks with their respective genes, thereby aiding experimental follow-up and
validation in designing primers for a set of prospective gene candidates during
@code{qPCR}.")
    (license license:gpl3+)))

(define-public r-genetonic
  (package
    (name "r-genetonic")
    (version "2.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GeneTonic" version))
       (sha256
        (base32 "1mdhs8ak72dxf30xiwjs6hdpkz6hxbzbxqr495l3vm2az6738y5l"))))
    (properties `((upstream-name . "GeneTonic")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork
                             r-viridis
                             r-tippy
                             r-tidyr
                             r-summarizedexperiment
                             r-shinywidgets
                             r-shinycssloaders
                             r-shinyace
                             r-shiny
                             r-scales
                             r-s4vectors
                             r-rmarkdown
                             r-rlang
                             r-rintrojs
                             r-rcolorbrewer
                             r-plotly
                             r-matrixstats
                             r-igraph
                             r-go-db
                             r-ggridges
                             r-ggrepel
                             r-ggplot2
                             r-ggforce
                             r-expm
                             r-dynamictreecut
                             r-dt
                             r-dplyr
                             r-deseq2
                             r-dendextend
                             r-complexupset
                             r-complexheatmap
                             r-colourpicker
                             r-colorspace
                             r-circlize
                             r-bs4dash
                             r-backbone
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/federicomarini/GeneTonic")
    (synopsis
     "Enjoy Analyzing And Integrating The Results From Differential Expression Analysis And Functional Enrichment Analysis")
    (description
     "This package provides functionality to combine the existing pieces of the
transcriptome data and results, making it easier to generate insightful
observations and hypothesis.  Its usage is made easy with a Shiny application,
combining the benefits of interactivity and reproducibility e.g. by capturing
the features and gene sets of interest highlighted during the live session, and
creating an HTML report as an artifact where text, code, and output coexist.
Using the @code{GeneTonicList} as a standardized container for all the required
components, it is possible to simplify the generation of multiple visualizations
and summaries.")
    (license license:expat)))

(define-public r-geneticsped
  (package
    (name "r-geneticsped")
    (version "1.64.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GeneticsPed" version))
       (sha256
        (base32 "0bsrgdryh8qdmsfsmd046rl04za9pkbgi034qmisbq9m1w5i9my8"))))
    (properties `((upstream-name . "GeneticsPed")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-genetics r-gdata))
    (native-inputs (list gfortran))
    (home-page "http://rgenetics.org")
    (synopsis "Pedigree and genetic relationship functions")
    (description
     "This package provides classes and methods for handling pedigree data.  It also
includes functions to calculate genetic relationship measures as relationship
and inbreeding coefficients and other utilities.  Note that package is not yet
stable.  Use it with care!")
    (license (list license:lgpl2.1+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-genesummary
  (package
    (name "r-genesummary")
    (version "0.99.6")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GeneSummary" version
                              'annotation))
       (sha256
        (base32 "0h6afrjb00afrcw6mwslxp7cmwfzp4qfxh0aa4f41kfjd3cymmp5"))))
    (properties `((upstream-name . "GeneSummary")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jokergoo/GeneSummary")
    (synopsis "RefSeq Gene Summaries")
    (description
     "This package provides long description of genes collected from the @code{RefSeq}
database.  The text in \"COMMENT\" section started with \"Summary\" is extracted as
the description of the gene.  The long text descriptions can be used for
analysis such as text mining.")
    (license license:expat)))

(define-public r-genestructuretools
  (package
    (name "r-genestructuretools")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GeneStructureTools" version))
       (sha256
        (base32 "07l3702hdxqd4bm8rd4ac69z0j30dxrk8k2srvli99dp5w7cqby3"))))
    (properties `((upstream-name . "GeneStructureTools")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-stringdist
                             r-s4vectors
                             r-rtracklayer
                             r-plyr
                             r-iranges
                             r-gviz
                             r-genomicranges
                             r-data-table
                             r-bsgenome-mmusculus-ucsc-mm10
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GeneStructureTools")
    (synopsis "Tools for spliced gene structure manipulation and analysis")
    (description
     "@code{GeneStructureTools} can be used to create in silico alternative splicing
events, and analyse potential effects this has on functional gene products.")
    (license license:bsd-3)))

(define-public r-genesis
  (package
    (name "r-genesis")
    (version "2.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GENESIS" version))
       (sha256
        (base32 "1ccxl1a277s80i8qbvkcqajgwbl90rbjv3dhfzcq4dm6gqw805l9"))))
    (properties `((upstream-name . "GENESIS")))
    (build-system r-build-system)
    (propagated-inputs (list r-snprelate
                             r-seqvartools
                             r-seqarray
                             r-s4vectors
                             r-reshape2
                             r-matrix
                             r-iranges
                             r-igraph
                             r-gwastools
                             r-genomicranges
                             r-gdsfmt
                             r-data-table
                             r-biocparallel
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/UW-GAC/GENESIS")
    (synopsis
     "GENetic EStimation and Inference in Structured samples (GENESIS): Statistical methods for analyzing genetic data from samples with population structure and/or relatedness")
    (description
     "The GENESIS package provides methodology for estimating, inferring, and
accounting for population and pedigree structure in genetic analyses.  The
current implementation provides functions to perform PC-@code{AiR} (Conomos et
al., 2015, Gen Epi) and PC-Relate (Conomos et al., 2016, AJHG).  PC-@code{AiR}
performs a Principal Components Analysis on genome-wide SNP data for the
detection of population structure in a sample that may contain known or cryptic
relatedness.  Unlike standard PCA, PC-@code{AiR} accounts for relatedness in the
sample to provide accurate ancestry inference that is not confounded by family
structure.  PC-Relate uses ancestry representative principal components to
adjust for population structure/ancestry and accurately estimate measures of
recent genetic relatedness such as kinship coefficients, IBD sharing
probabilities, and inbreeding coefficients.  Additionally, functions are
provided to perform efficient variance component estimation and mixed model
association testing for both quantitative and binary phenotypes.")
    (license license:gpl3)))

(define-public r-geneselectmmd
  (package
    (name "r-geneselectmmd")
    (version "2.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GeneSelectMMD" version))
       (sha256
        (base32 "09d9dy85bdq86h429ycvqwnz2zpnn3p405l1x1b8p53g6g525d9a"))))
    (properties `((upstream-name . "GeneSelectMMD")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-limma r-biobase))
    (native-inputs (list gfortran))
    (home-page "https://bioconductor.org/packages/GeneSelectMMD")
    (synopsis
     "Gene selection based on the marginal distributions of gene profiles that characterized by a mixture of three-component multivariate distributions")
    (description
     "Gene selection based on a mixture of marginal distributions.")
    (license license:gpl2+)))

(define-public r-generxcluster
  (package
    (name "r-generxcluster")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "geneRxCluster" version))
       (sha256
        (base32 "08niw9hvg1r255aajn7q5m7gm4ihjiiqbs7wxkpxb5rr8cvx8nlc"))))
    (properties `((upstream-name . "geneRxCluster")))
    (build-system r-build-system)
    (propagated-inputs (list r-iranges r-genomicranges))
    (home-page "https://bioconductor.org/packages/geneRxCluster")
    (synopsis "gRx Differential Clustering")
    (description
     "Detect Differential Clustering of Genomic Sites such as gene therapy
integrations.  The package provides some functions for exploring genomic
insertion sites originating from two different sources.  Possibly, the two
sources are two different gene therapy vectors.  Vectors are preferred that
target sensitive regions less frequently, motivating the search for localized
clusters of insertions and comparison of the clusters formed by integration of
different vectors.  Scan statistics allow the discovery of spatial differences
in clustering and calculation of False Discovery Rates (FDRs) providing
statistical methods for comparing retroviral vectors.  A scan statistic for
comparing two vectors using multiple window widths to detect clustering
differentials and compute FDRs is implemented here.")
    (license license:gpl2+)))

(define-public r-generegionscan
  (package
    (name "r-generegionscan")
    (version "1.58.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GeneRegionScan" version))
       (sha256
        (base32 "1zq9gnp81swpd88flr344snnn3mlhihrma5k0j95m4mi1g6sp3j6"))))
    (properties `((upstream-name . "GeneRegionScan")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors r-rcolorbrewer r-biostrings r-biobase
                             r-affxparser))
    (home-page "https://bioconductor.org/packages/GeneRegionScan")
    (synopsis "GeneRegionScan")
    (description
     "This package provides a package with focus on analysis of discrete regions of
the genome.  This package is useful for investigation of one or a few genes
using Affymetrix data, since it will extract probe level data using the
Affymetrix Power Tools application and wrap these data into a
@code{ProbeLevelSet}.  A @code{ProbeLevelSet} directly extends the
@code{expressionSet}, but includes additional information about the sequence of
each probe and the probe set it is derived from.  The package includes a number
of functions used for plotting these probe level data as a function of location
along sequences of @code{mRNA-strands}.  This can be used for analysis of
variable splicing, and is especially well suited for use with exon-array data.")
    (license license:gpl2+)))

(define-public r-generecommender
  (package
    (name "r-generecommender")
    (version "1.74.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "geneRecommender" version))
       (sha256
        (base32 "1wpykqwld94grkza2f8fz7d0vlq64bvki3gcfyjz13xi5kb2s849"))))
    (properties `((upstream-name . "geneRecommender")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/geneRecommender")
    (synopsis
     "gene recommender algorithm to identify genes coexpressed with a query set of genes")
    (description
     "This package contains a targeted clustering algorithm for the analysis of
microarray data.  The algorithm can aid in the discovery of new genes with
similar functions to a given list of genes already known to have closely related
functions.")
    (license license:gpl2+)))

(define-public r-geneplast-data-string-v91
  (package
    (name "r-geneplast-data-string-v91")
    (version "0.99.6")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "geneplast.data.string.v91" version
                              'annotation))
       (sha256
        (base32 "0mc26d0sgmpmfmqsqinqv5k6vhg0hlc8hsjkcnvf369yav224nq1"))))
    (properties `((upstream-name . "geneplast.data.string.v91")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/geneplast.data.string.v91")
    (synopsis "Input data for the geneplast package")
    (description
     "The package geneplast.data.string.v91 contains input data used in the analysis
pipelines available in the geneplast package.")
    (license license:artistic2.0)))

(define-public r-geneplast-data
  (package
    (name "r-geneplast-data")
    (version "0.99.9")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "geneplast.data" version
                              'annotation))
       (sha256
        (base32 "1i31kx4kckfg965s9l3pilvmg847av3rpa05aql43259ccyng4hi"))))
    (properties `((upstream-name . "geneplast.data")))
    (build-system r-build-system)
    (propagated-inputs (list r-treeio
                             r-tidyr
                             r-tibble
                             r-readr
                             r-purrr
                             r-igraph
                             r-geneplast
                             r-dplyr
                             r-biocfilecache
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/geneplast.data")
    (synopsis "Input data for the geneplast package via AnnotationHub")
    (description
     "The package geneplast.data provides datasets from different sources via
@code{AnnotationHub} to use in geneplast pipelines.  The datasets have species,
phylogenetic trees, and orthology relationships among eukaryotes from different
orthologs databases.")
    (license license:artistic2.0)))

(define-public r-geneplast
  (package
    (name "r-geneplast")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "geneplast" version))
       (sha256
        (base32 "10z2w652x9b3n7mjhj99ig3sclrk4h4j7vlrgv21bwy3fx6h25f2"))))
    (properties `((upstream-name . "geneplast")))
    (build-system r-build-system)
    (propagated-inputs (list r-snow r-igraph r-data-table r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/geneplast")
    (synopsis "Evolutionary and plasticity analysis of orthologous groups")
    (description
     "Geneplast is designed for evolutionary and plasticity analysis based on
orthologous groups distribution in a given species tree.  It uses Shannon
information theory and orthologs abundance to estimate the Evolutionary
Plasticity Index.  Additionally, it implements the Bridge algorithm to determine
the evolutionary root of a given gene based on its orthologs distribution.")
    (license license:gpl2+)))

(define-public r-genenetworkbuilder
  (package
    (name "r-genenetworkbuilder")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GeneNetworkBuilder" version))
       (sha256
        (base32 "0gz7lmn5qspnak3mcbjpbvy5436d8p15pq46877xykv9anry6z0v"))))
    (properties `((upstream-name . "GeneNetworkBuilder")))
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
    (propagated-inputs (list r-xml
                             r-rjson
                             r-rgraphviz
                             r-rcpp
                             r-plyr
                             r-htmlwidgets
                             r-graph))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://bioconductor.org/packages/GeneNetworkBuilder")
    (synopsis
     "GeneNetworkBuilder: a bioconductor package for building regulatory network using ChIP-chip/ChIP-seq data and Gene Expression Data")
    (description
     "Appliation for discovering direct or indirect targets of transcription factors
using @code{ChIP-chip} or @code{ChIP-seq}, and microarray or RNA-seq gene
expression data.  Inputting a list of genes of potential targets of one TF from
@code{ChIP-chip} or @code{ChIP-seq}, and the gene expression results,
@code{GeneNetworkBuilder} generates a regulatory network of the TF.")
    (license license:gpl2+)))

(define-public r-genemeta
  (package
    (name "r-genemeta")
    (version "1.74.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GeneMeta" version))
       (sha256
        (base32 "1m08gd0n1j21s9p8ppvqzzplwrnpknb5lprg07zlsr4c78fb0mgg"))))
    (properties `((upstream-name . "GeneMeta")))
    (build-system r-build-system)
    (propagated-inputs (list r-genefilter r-biobase))
    (home-page "https://bioconductor.org/packages/GeneMeta")
    (synopsis "MetaAnalysis for High Throughput Experiments")
    (description
     "This package provides a collection of meta-analysis tools for analysing high
throughput experimental data")
    (license license:artistic2.0)))

(define-public r-genegeneinter
  (package
    (name "r-genegeneinter")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GeneGeneInteR" version))
       (sha256
        (base32 "1bfz7i8cbn0ddnyb3dnj8xrb1r6jsxf4hplxacis7yi6l1vylvzy"))))
    (properties `((upstream-name . "GeneGeneInteR")))
    (build-system r-build-system)
    (propagated-inputs (list r-snpstats
                             r-rsamtools
                             r-mvtnorm
                             r-kernlab
                             r-iranges
                             r-igraph
                             r-genomicranges
                             r-factominer
                             r-data-table))
    (home-page "https://bioconductor.org/packages/GeneGeneInteR")
    (synopsis "Tools for Testing Gene-Gene Interaction at the Gene Level")
    (description
     "The aim of this package is to propose several methods for testing gene-gene
interaction in case-control association studies.  Such a test can be done by
aggregating SNP-SNP interaction tests performed at the SNP level (SSI) or by
using gene-gene multidimensionnal methods (GGI) methods.  The package also
proposes tools for a graphic display of the results.
<doi:10.18637/jss.v095.i12>.")
    (license license:gpl2+)))

(define-public r-genega
  (package
    (name "r-genega")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GeneGA" version))
       (sha256
        (base32 "0k848y1kw9iq8wv5hfk2ylykj22mnrpj5881d47mkgii4j6l2ika"))))
    (properties `((upstream-name . "GeneGA")))
    (build-system r-build-system)
    (propagated-inputs (list r-seqinr r-hash))
    (home-page "http://www.tbi.univie.ac.at/~ivo/RNA/")
    (synopsis
     "Design gene based on both mRNA secondary structure and codon usage bias using Genetic algorithm")
    (description
     "R based Genetic algorithm for gene expression optimization by considering both
@code{mRNA} secondary structure and codon usage bias, @code{GeneGA} includes the
information of highly expressed genes of almost 200 genomes.  Meanwhile, Vienna
RNA Package is needed to ensure @code{GeneGA} to function properly.")
    (license (license:fsdg-compatible "GPL version 2"))))

(define-public r-genefu
  (package
    (name "r-genefu")
    (version "2.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "genefu" version))
       (sha256
        (base32 "0qynw8n6714pxwwfh33cqmp9lfp6jhz44l6pkkncd7zi1a64fmdv"))))
    (properties `((upstream-name . "genefu")))
    (build-system r-build-system)
    (propagated-inputs (list r-survcomp
                             r-mclust
                             r-limma
                             r-impute
                             r-ic10
                             r-biomart
                             r-amap
                             r-aims))
    (native-inputs (list r-knitr))
    (home-page "http://www.pmgenomics.ca/bhklab/software/genefu")
    (synopsis
     "Computation of Gene Expression-Based Signatures in Breast Cancer")
    (description
     "This package contains functions implementing various tasks usually required by
gene expression analysis, especially in breast cancer studies: gene mapping
between different microarray platforms, identification of molecular subtypes,
implementation of published gene signatures, gene selection, and survival
analysis.")
    (license license:artistic2.0)))

(define-public r-geneexpressionsignature
  (package
    (name "r-geneexpressionsignature")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GeneExpressionSignature" version))
       (sha256
        (base32 "0h58p1jzppz16l85498fa7kl8zwnrbilp9x09sby9lalkcdrzvry"))))
    (properties `((upstream-name . "GeneExpressionSignature")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/yiluheihei/GeneExpressionSignature")
    (synopsis "Gene Expression Signature based Similarity Metric")
    (description
     "This package gives the implementations of the gene expression signature and its
distance to each.  Gene expression signature is represented as a list of genes
whose expression is correlated with a biological state of interest.  And its
distance is defined using a nonparametric, rank-based pattern-matching strategy
based on the Kolmogorov-Smirnov statistic.  Gene expression signature and its
distance can be used to detect similarities among the signatures of drugs,
diseases, and biological states of interest.")
    (license license:gpl2)))

(define-public r-geneclassifiers
  (package
    (name "r-geneclassifiers")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "geneClassifiers" version))
       (sha256
        (base32 "07vzzcb8apxr5vx4gfqk1li2x7265yp5mbkmj23z0sfs4idmz97m"))))
    (properties `((upstream-name . "geneClassifiers")))
    (build-system r-build-system)
    (propagated-inputs (list r-biocgenerics r-biobase))
    (home-page "https://doi.org/doi:10.18129/B9.bioc.geneClassifiers")
    (synopsis "Application of gene classifiers")
    (description
     "This packages aims for easy accessible application of classifiers which have
been published in literature using an @code{ExpressionSet} as input.")
    (license license:gpl2)))

(define-public r-genebreak
  (package
    (name "r-genebreak")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GeneBreak" version))
       (sha256
        (base32 "1vsk891b4200cgia1dgz72nj11iq9r7wfz1j18a673qxj08505wn"))))
    (properties `((upstream-name . "GeneBreak")))
    (build-system r-build-system)
    (propagated-inputs (list r-qdnaseq r-genomicranges r-cghcall r-cghbase))
    (home-page "https://github.com/stefvanlieshout/GeneBreak")
    (synopsis "Gene Break Detection")
    (description
     "Recurrent breakpoint gene detection on copy number aberration profiles.")
    (license license:gpl2)))

(define-public r-geneattribution
  (package
    (name "r-geneattribution")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "geneAttribution" version))
       (sha256
        (base32 "0kkbxz3ig50afl1jhkxxlmsbzvkzqjv5mbankw1a9aqrj1dvnvn0"))))
    (properties `((upstream-name . "geneAttribution")))
    (build-system r-build-system)
    (propagated-inputs (list r-rtracklayer
                             r-org-hs-eg-db
                             r-iranges
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/geneAttribution")
    (synopsis
     "Identification of candidate genes associated with genetic variation")
    (description
     "Identification of the most likely gene or genes through which variation at a
given genomic locus in the human genome acts.  The most basic functionality
assumes that the closer gene is to the input locus, the more likely the gene is
to be causative.  Additionally, any empirical data that links genomic regions to
genes (e.g. @code{eQTL} or genome conformation data) can be used if it is
supplied in the UCSC .BED file format.")
    (license license:artistic2.0)))

(define-public r-genarise
  (package
    (name "r-genarise")
    (version "1.78.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "genArise" version))
       (sha256
        (base32 "16b1gsdfr1r3yzinfj934igdc8rsn237wf55wwv4vb4f5b1y35g0"))))
    (properties `((upstream-name . "genArise")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable r-tkrplot r-locfit))
    (home-page "http://www.ifc.unam.mx/genarise")
    (synopsis "Microarray Analysis tool")
    (description
     "@code{genArise} is an easy to use tool for dual color microarray data.  Its
GUI-Tk based environment let any non-experienced user performs a basic, but not
simple, data analysis just following a wizard.  In addition it provides some
tools for the developer.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-gemma-r
  (package
    (name "r-gemma-r")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gemma.R" version))
       (sha256
        (base32 "1kcms1bzvkfkf080hm0y8d61v62vnczbwmsincw39xmnnlhga905"))))
    (properties `((upstream-name . "gemma.R")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-s4vectors
                             r-rlang
                             r-rappdirs
                             r-memoise
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-httr
                             r-glue
                             r-digest
                             r-data-table
                             r-bit64
                             r-biobase
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://pavlidislab.github.io/gemma.R/")
    (synopsis
     "wrapper for Gemma's Restful API to access curated gene expression data and differential expression analyses")
    (description
     "Low- and high-level wrappers for Gemma's RESTful API. They enable access to
curated expression and differential expression data from over 10,000 published
studies.  Gemma is a web site, database and a set of tools for the
meta-analysis, re-use and sharing of genomics data, currently primarily targeted
at the analysis of gene expression profiles.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-gemini
  (package
    (name "r-gemini")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gemini" version))
       (sha256
        (base32 "1c58kjvb9nps1ycgfkjv0i8rzkgv6q0rnz9av3yswvn9kah64gkd"))))
    (properties `((upstream-name . "gemini")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-pbmcapply
                             r-mixtools
                             r-magrittr
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/gemini")
    (synopsis
     "GEMINI: Variational inference approach to infer genetic interactions from pairwise CRISPR screens")
    (description
     "GEMINI uses log-fold changes to model sample-dependent and independent effects,
and uses a variational Bayes approach to infer these effects.  The inferred
effects are used to score and identify genetic interactions, such as lethality
and recovery.  More details can be found in Zamanighomi et al.  2019 (in press).")
    (license license:bsd-3)))

(define-public r-gem
  (package
    (name "r-gem")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GEM" version))
       (sha256
        (base32 "1hzhjpq396a8h05m0j9yz641wz3hz2j3wr5va695cixs3m8gpgpg"))))
    (properties `((upstream-name . "GEM")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GEM")
    (synopsis
     "GEM: fast association study for the interplay of Gene, Environment and Methylation")
    (description
     "This package provides tools for analyzing EWAS, @code{methQTL} and @code{GxE}
genome widely.")
    (license license:artistic2.0)))

(define-public r-gdsarray
  (package
    (name "r-gdsarray")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GDSArray" version))
       (sha256
        (base32 "132xam32zh9bwh08ar593bwzn2icdwppr1ahfmkgvknpf94wg288"))))
    (properties `((upstream-name . "GDSArray")))
    (build-system r-build-system)
    (propagated-inputs (list r-snprelate
                             r-seqarray
                             r-s4vectors
                             r-gdsfmt
                             r-delayedarray
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Bioconductor/GDSArray")
    (synopsis "Representing GDS files as array-like objects")
    (description
     "GDS files are widely used to represent genotyping or sequence data.  The
GDSArray package implements the `GDSArray` class to represent nodes in GDS files
in a matrix-like representation that allows easy manipulation (e.g., subsetting,
mathematical transformation) in _R_.  The data remains on disk until needed, so
that very large files can be processed.")
    (license license:gpl3)))

(define-public r-gdrutils
  (package
    (name "r-gdrutils")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gDRutils" version))
       (sha256
        (base32 "1wzl36zqkxhjr6n5g6cfgi3vn3p30wfpl83z2g18pzs312xx2sxh"))))
    (properties `((upstream-name . "gDRutils")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-stringr
                             r-s4vectors
                             r-multiassayexperiment
                             r-magrittr
                             r-jsonvalidate
                             r-jsonlite
                             r-drc
                             r-data-table
                             r-checkmate
                             r-bumpymatrix
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/gDRutils")
    (synopsis
     "package with helper functions for processing drug response data")
    (description
     "This package contains utility functions used throughout the @code{gDR} platform
to fit data, manipulate data, and convert and validate data structures.  This
package also has the necessary default constants for @code{gDR} platform.  Many
of the functions are utilized by the @code{gDRcore} package.")
    (license license:artistic2.0)))

(define-public r-gdrtestdata
  (package
    (name "r-gdrtestdata")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gDRtestData" version
                              'experiment))
       (sha256
        (base32 "0pwrypvc1hvrcd6dckiid5vjpwpcbw3vg61s88mms3kjs8163c0r"))))
    (properties `((upstream-name . "gDRtestData")))
    (build-system r-build-system)
    (propagated-inputs (list r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/gDRtestData")
    (synopsis "gDRtestData - R data package with testing dose reponse data")
    (description
     "R package with internal dose-response test data.  Package provides functions to
generate input testing data that can be used as the input for @code{gDR}
pipeline.  It also contains RDS files with MAE data processed by @code{gDR}.")
    (license license:artistic2.0)))

(define-public r-gdrstyle
  (package
    (name "r-gdrstyle")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gDRstyle" version))
       (sha256
        (base32 "17s9670w15ms001nps92b9vqa792a4hqg7as5b8l6pqlbcdb4g7m"))))
    (properties `((upstream-name . "gDRstyle")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-withr
                             r-rjson
                             r-remotes
                             r-rcmdcheck
                             r-pkgbuild
                             r-lintr
                             r-git2r
                             r-desc
                             r-biocmanager
                             r-bioccheck))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/gDRstyle")
    (synopsis "package with style requirements for the gDR suite")
    (description
     "Package fills a helper package role for whole @code{gDR} suite.  It helps to
support good development practices by keeping style requirements and style tests
for other packages.  It also contains build helpers to make all package
requirements met.")
    (license license:artistic2.0)))

(define-public r-gdrimport
  (package
    (name "r-gdrimport")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gDRimport" version))
       (sha256
        (base32 "1lwyn86c3ag3fg5fdd099mw9lkamydjh7jkrg9frz3a7r1s7x6j6"))))
    (properties `((upstream-name . "gDRimport")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-xml
                             r-tibble
                             r-summarizedexperiment
                             r-stringi
                             r-s4vectors
                             r-rio
                             r-readxl
                             r-pharmacogx
                             r-openxlsx
                             r-multiassayexperiment
                             r-magrittr
                             r-gdrutils
                             r-futile-logger
                             r-data-table
                             r-coregx
                             r-checkmate
                             r-bumpymatrix
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/gDRimport")
    (synopsis "Package for handling the import of dose-response data")
    (description
     "The package is a part of the @code{gDR} suite.  It helps to prepare raw drug
response data for downstream processing.  It mainly contains helper functions
for importing/loading/validating dose-response data provided in different file
formats.")
    (license license:artistic2.0)))

(define-public r-gdrcore
  (package
    (name "r-gdrcore")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gDRcore" version))
       (sha256
        (base32 "09gs01hbmb7jpv1s40h8xinfzk2i6x7aw2kgy60cwllcb7z60ilc"))))
    (properties `((upstream-name . "gDRcore")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-stringr
                             r-s4vectors
                             r-purrr
                             r-multiassayexperiment
                             r-gdrutils
                             r-futile-logger
                             r-data-table
                             r-checkmate
                             r-bumpymatrix
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/gDRcore")
    (synopsis
     "Processing functions and interface to process and analyze drug dose-response data")
    (description
     "This package contains core functions to process and analyze drug response data.
The package provides tools for normalizing, averaging, and calculation of
@code{gDR} metrics data.  All core functions are wrapped into the pipeline
function allowing analyzing the data in a straightforward way.")
    (license license:artistic2.0)))

(define-public r-gdr
  (package
    (name "r-gdr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gDR" version))
       (sha256
        (base32 "0zg5jdyd1n3dxrwg80cywxd47m5acj9c8cx98jjp530h62mypld9"))))
    (properties `((upstream-name . "gDR")))
    (build-system r-build-system)
    (propagated-inputs (list r-gdrutils r-gdrimport r-gdrcore))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/gDR")
    (synopsis "Umbrella package for R packages in the gDR suite")
    (description
     "Package is a part of the @code{gDR} suite.  It reexports functions from other
packages in the @code{gDR} suite that contain critical processing functions and
utilities.  The vignette walks through the full processing pipeline for drug
response analyses that the @code{gDR} suite offers.")
    (license license:artistic2.0)))

(define-public r-gdnax
  (package
    (name "r-gdnax")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gDNAx" version))
       (sha256
        (base32 "1kphihn4y3pyq6js2jv5xr92zawmip1nas9jl3rmmhrqrcy1ymba"))))
    (properties `((upstream-name . "gDNAx")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-rsamtools
                             r-rcolorbrewer
                             r-plotrix
                             r-iranges
                             r-genomicranges
                             r-genomicfiles
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-bitops
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics
                             r-annotationhub
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/functionalgenomics/gDNAx")
    (synopsis
     "Diagnostics for assessing genomic DNA contamination in RNA-seq data")
    (description
     "This package provides diagnostics for assessing genomic DNA contamination in
RNA-seq data, as well as plots representing these diagnostics.  Moreover, the
package can be used to get an insight into the strand library protocol used and,
in case of strand-specific libraries, the strandedness of the data.
Furthermore, it provides functionality to filter out reads of potential
@code{gDNA} origin.")
    (license license:artistic2.0)))

(define-public r-gdnainrnaseqdata
  (package
    (name "r-gdnainrnaseqdata")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gDNAinRNAseqData" version
                              'experiment))
       (sha256
        (base32 "13v14dhwb1mkpxc5z08amqajhkncrkl38k4js48bp36s8lzb0zw8"))))
    (properties `((upstream-name . "gDNAinRNAseqData")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-xml r-rsamtools r-rcurl r-experimenthub
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/functionalgenomics/gDNAinRNAseqData")
    (synopsis "RNA-seq data with different levels of gDNA contamination")
    (description
     "This package provides access to BAM files generated from RNA-seq data produced
with different levels of @code{gDNA} contamination.  It currently allows one to
download a subset of the data published by Li et al., BMC Genomics, 23:554,
2022.  This subset of data is formed by BAM files with about 100,000 alignments
with three different levels of @code{gDNA} contamination.")
    (license license:artistic2.0)))

(define-public r-gdcrnatools
  (package
    (name "r-gdcrnatools")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GDCRNATools" version))
       (sha256
        (base32 "1d98q3hgkfl53k50ag8yfkdq9sjb65qmyvd9z2dnil1p1kksxz9x"))))
    (properties `((upstream-name . "GDCRNATools")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-survminer
                             r-survival
                             r-shiny
                             r-rjson
                             r-pathview
                             r-org-hs-eg-db
                             r-limma
                             r-jsonlite
                             r-gplots
                             r-ggplot2
                             r-genomicdatacommons
                             r-edger
                             r-dt
                             r-dose
                             r-deseq2
                             r-clusterprofiler
                             r-biomart
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GDCRNATools")
    (synopsis
     "GDCRNATools: an R/Bioconductor package for integrative analysis of lncRNA, mRNA, and miRNA data in GDC")
    (description
     "This is an easy-to-use package for downloading, organizing, and integrative
analyzing RNA expression data in GDC with an emphasis on deciphering the
@code{lncRNA-mRNA} related @code{ceRNA} regulatory network in cancer.  Three
databases of @code{lncRNA-miRNA} interactions including @code{spongeScan},
@code{starBase}, and @code{miRcode}, as well as three databases of
@code{mRNA-miRNA} interactions including @code{miRTarBase}, @code{starBase}, and
@code{miRcode} are incorporated into the package for @code{ceRNAs} network
construction.  limma, @code{edgeR}, and DESeq2 can be used to identify
differentially expressed genes/@code{miRNAs}.  Functional enrichment analyses
including GO, KEGG, and DO can be performed based on the @code{clusterProfiler}
and DO packages.  Both univariate @code{CoxPH} and KM survival analyses of
multiple genes can be implemented in the package.  Besides some routine
visualization functions such as volcano plot, bar plot, and KM plot, a few
simply shiny apps are developed to facilitate visualization of results on a
local webpage.")
    (license license:artistic2.0)))

(define-public r-gcspikelite
  (package
    (name "r-gcspikelite")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gcspikelite" version
                              'experiment))
       (sha256
        (base32 "1yfmp96k1iy6sjyafs2sflflnmnq4czkjba61vzxb4alirra9jf5"))))
    (properties `((upstream-name . "gcspikelite")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/gcspikelite")
    (synopsis "Spike-in data for GC/MS data and methods within flagme")
    (description "Spike-in data for GC/MS data and methods within flagme")
    (license license:lgpl2.0+)))

(define-public r-gcrisprtools
  (package
    (name "r-gcrisprtools")
    (version "2.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gCrisprTools" version))
       (sha256
        (base32 "00zm8lj859xpd4dic7ac0834qvzpw82mfncz0sxj6vb7f9a247d9"))))
    (properties `((upstream-name . "gCrisprTools")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-robustrankaggreg
                             r-rmarkdown
                             r-limma
                             r-ggplot2
                             r-complexheatmap
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/gCrisprTools")
    (synopsis "Suite of Functions for Pooled Crispr Screen QC and Analysis")
    (description
     "Set of tools for evaluating pooled high-throughput screening experiments,
typically employing CRISPR/Cas9 or @code{shRNA} expression cassettes.  Contains
methods for interrogating library and cassette behavior within an experiment,
identifying differentially abundant cassettes, aggregating signals to identify
candidate targets for empirical validation, hypothesis testing, and
comprehensive reporting.  Version 2.0 extends these applications to include a
variety of tools for contextualizing and integrating signals across many
experiments, incorporates extended signal enrichment methodologies via the
\"sparrow\" package, and streamlines many formal requirements to aid in
interpretablity.")
    (license license:artistic2.0)))

(define-public r-gcatest
  (package
    (name "r-gcatest")
    (version "2.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gcatest" version))
       (sha256
        (base32 "0hngq6fj86akm5fd4rzd31y06an4r00blcfwzb65b0wlqsg79gkv"))))
    (properties `((upstream-name . "gcatest")))
    (build-system r-build-system)
    (propagated-inputs (list r-lfa))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/StoreyLab/gcatest")
    (synopsis "Genotype Conditional Association TEST")
    (description
     "GCAT is an association test for genome wide association studies that controls
for population structure under a general class of trait models.  This test
conditions on the trait, which makes it immune to confounding by unmodeled
environmental factors.  Population structure is modeled via logistic factors,
which are estimated using the `lfa` package.")
    (license license:gpl3+)))

(define-public r-gcapc
  (package
    (name "r-gcapc")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gcapc" version))
       (sha256
        (base32 "0dlwp4ry8p0jrx3j2falz8inkqlvmlkri3x002gbrml4w6ghvjy1"))))
    (properties `((upstream-name . "gcapc")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rsamtools
                             r-matrixstats
                             r-mass
                             r-iranges
                             r-genomicranges
                             r-genomicalignments
                             r-genomeinfodb
                             r-bsgenome
                             r-biostrings
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tengmx/gcapc")
    (synopsis "GC Aware Peak Caller")
    (description
     "Peak calling for @code{ChIP-seq} data with consideration of potential GC bias in
sequencing reads.  GC bias is first estimated with generalized linear mixture
models using effective GC strategy, then applied into peak significance
estimation.")
    (license license:gpl3)))

(define-public r-gbscleanr
  (package
    (name "r-gbscleanr")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GBScleanR" version))
       (sha256
        (base32 "19v3w4f8d0011c70x47bfiaqybdj52hya2nw18zsbggpcp8l8hn7"))))
    (properties `((upstream-name . "GBScleanR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-seqarray
                             r-rcppparallel
                             r-rcpp
                             r-ggplot2
                             r-gdsfmt
                             r-expm))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tomoyukif/GBScleanR")
    (synopsis
     "Error correction tool for noisy genotyping by sequencing (GBS) data")
    (description
     "GB@code{ScleanR} is a package for quality check, filtering, and error correction
of genotype data derived from next generation sequcener (NGS) based genotyping
platforms.  GB@code{ScleanR} takes Variant Call Format (VCF) file as input.  The
main function of this package is `@code{estGeno()`} which estimates the true
genotypes of samples from given read counts for genotype markers using a hidden
Markov model with incorporating uneven observation ratio of allelic reads.  This
implementation gives robust genotype estimation even in noisy genotype data
usually observed in Genotyping-By-Sequnencing (GBS) and similar methods, e.g.
RADseq.  The current implementation accepts genotype data of a diploid
population at any generation of multi-parental cross, e.g. biparental F2 from
inbred parents, biparental F2 from outbred parents, and 8-way recombinant inbred
lines (8-way RILs) which can be refered to as MAGIC population.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-gatom
  (package
    (name "r-gatom")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gatom" version))
       (sha256
        (base32 "0yl88gbn85mpv2n70wgmnbi3wgh8vjhxvzd064azf2g0yj50mqn8"))))
    (properties `((upstream-name . "gatom")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-sna
                             r-shinycyjs
                             r-pryr
                             r-plyr
                             r-network
                             r-mwcsr
                             r-intergraph
                             r-igraph
                             r-htmlwidgets
                             r-htmltools
                             r-ggplot2
                             r-ggally
                             r-data-table
                             r-bionet))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ctlab/gatom/")
    (synopsis "Finding an Active Metabolic Module in Atom Transition Network")
    (description
     "This package implements a metabolic network analysis pipeline to identify an
active metabolic module based on high throughput data.  The pipeline takes as
input transcriptional and/or metabolic data and finds a metabolic subnetwork
(module) most regulated between the two conditions of interest.  The package
further provides functions for module post-processing, annotation and
visualization.")
    (license (license:fsdg-compatible "MIT + file LICENCE"))))

(define-public r-gatefinder
  (package
    (name "r-gatefinder")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GateFinder" version))
       (sha256
        (base32 "0854gknmhz2rrliklzr5cz1miqza2249i5nhhkav78fw5pk5gqsl"))))
    (properties `((upstream-name . "GateFinder")))
    (build-system r-build-system)
    (propagated-inputs (list r-splancs r-mvoutlier r-flowfp r-flowcore
                             r-diptest))
    (home-page "https://bioconductor.org/packages/GateFinder")
    (synopsis
     "Projection-based Gating Strategy Optimization for Flow and Mass Cytometry")
    (description
     "Given a vector of cluster memberships for a cell population, identifies a
sequence of gates (polygon filters on 2D scatter plots) for isolation of that
cell type.")
    (license license:artistic2.0)))

(define-public r-gaschyhs
  (package
    (name "r-gaschyhs")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gaschYHS" version
                              'experiment))
       (sha256
        (base32 "08dgm24ycsldp6pjqhflpxqm91yqp199n2j1fg9m4wrgbyakypkm"))))
    (properties `((upstream-name . "gaschYHS")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase))
    (home-page
     "http://genome-www.stanford.edu/yeast_stress/data/rawdata/complete_dataset.txt")
    (synopsis
     "ExpressionSet for response of yeast to heat shock and other environmental stresses")
    (description "Data from PMID 11102521")
    (license license:artistic2.0)))

(define-public r-gars
  (package
    (name "r-gars")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GARS" version))
       (sha256
        (base32 "0p6r48k6yljwqj13yfdlk2s97fmmwwdpyzwsmpi26p5j9q6352pl"))))
    (properties `((upstream-name . "GARS")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-mlseq r-ggplot2
                             r-damirseq r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GARS")
    (synopsis
     "GARS: Genetic Algorithm for the identification of Robust Subsets of variables in high-dimensional and challenging datasets")
    (description
     "Feature selection aims to identify and remove redundant, irrelevant and noisy
variables from high-dimensional datasets.  Selecting informative features
affects the subsequent classification and regression analyses by improving their
overall performances.  Several methods have been proposed to perform feature
selection: most of them relies on univariate statistics, correlation, entropy
measurements or the usage of backward/forward regressions.  Herein, we propose
an efficient, robust and fast method that adopts stochastic optimization
approaches for high-dimensional.  GARS is an innovative implementation of a
genetic algorithm that selects robust features in high-dimensional and
challenging datasets.")
    (license license:gpl2+)))

(define-public r-garfield
  (package
    (name "r-garfield")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "garfield" version))
       (sha256
        (base32 "01la01rgs3lfv29la514y5502chl62b66ji51nlmdb8zjhvfshaq"))))
    (properties `((upstream-name . "garfield")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/garfield")
    (synopsis
     "GWAS Analysis of Regulatory or Functional Information Enrichment with LD correction")
    (description
     "GARFIELD is a non-parametric functional enrichment analysis approach described
in the paper GARFIELD: GWAS analysis of regulatory or functional information
enrichment with LD correction.  Briefly, it is a method that leverages GWAS
findings with regulatory or functional annotations (primarily from ENCODE and
Roadmap epigenomics data) to find features relevant to a phenotype of interest.
It performs greedy pruning of GWAS SNPs (LD r2 > 0.1) and then annotates them
based on functional information overlap.  Next, it quantifies Fold Enrichment
(FE) at various GWAS significance cutoffs and assesses them by permutation
testing, while matching for minor allele frequency, distance to nearest
transcription start site and number of LD proxies (r2 > 0.8).")
    (license license:gpl3)))

(define-public r-gaprediction
  (package
    (name "r-gaprediction")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GAprediction" version))
       (sha256
        (base32 "1nn67bnb4h6z7xdi8ngjw3lkz6wjn6fzcxlhl46wnzg01hiqvjwz"))))
    (properties `((upstream-name . "GAprediction")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-glmnet))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/GAprediction")
    (synopsis
     "Prediction of gestational age with Illumina HumanMethylation450 data")
    (description "[GAprediction] predicts gestational age using Illumina
@code{HumanMethylation450} @code{CpG} data.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-gaggle
  (package
    (name "r-gaggle")
    (version "1.70.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gaggle" version))
       (sha256
        (base32 "16jajl03nf8fk29vd4bkj4f1156258skkw3p884ad946ifvabznd"))))
    (properties `((upstream-name . "gaggle")))
    (build-system r-build-system)
    (propagated-inputs (list r-runit r-rjava r-graph))
    (home-page "http://gaggle.systemsbiology.net/docs/geese/r/")
    (synopsis "Broadcast data between R and Gaggle")
    (description
     "This package contains functions enabling data exchange between R and Gaggle
enabled bioinformatics software, including Cytoscape, Firegoose and Gaggle
Genome Browser.")
    (license (license:fsdg-compatible "GPL version 2 or newer"))))

(define-public r-gaga
  (package
    (name "r-gaga")
    (version "2.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "gaga" version))
       (sha256
        (base32 "1fqhzbf59z511z838zd1g4xnzw4a6xlpssgvqbjxgx22l7iqgy1c"))))
    (properties `((upstream-name . "gaga")))
    (build-system r-build-system)
    (propagated-inputs (list r-mgcv r-ebarrays r-coda r-biobase))
    (home-page "https://bioconductor.org/packages/gaga")
    (synopsis "GaGa hierarchical model for high-throughput data analysis")
    (description
     "This package implements the @code{GaGa} model for high-throughput data analysis,
including differential expression analysis, supervised gene clustering and
classification.  Additionally, it performs sequential sample size calculations
using the @code{GaGa} and LNNGV models (the latter from EBarrays package).")
    (license license:gpl2+)))

(define-public r-ga4ghshiny
  (package
    (name "r-ga4ghshiny")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GA4GHshiny" version))
       (sha256
        (base32 "05wm2qj6cr81l9d1wk1xk1f02c3777k3hkjz4nwj65rsfph2g39f"))))
    (properties `((upstream-name . "GA4GHshiny")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-shinythemes
                             r-shinyjs
                             r-shiny
                             r-s4vectors
                             r-purrr
                             r-openxlsx
                             r-genomicfeatures
                             r-genomeinfodb
                             r-ga4ghclient
                             r-dt
                             r-dplyr
                             r-biocgenerics
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/labbcb/GA4GHshiny")
    (synopsis
     "Shiny application for interacting with GA4GH-based data servers")
    (description
     "GA4GHshiny package provides an easy way to interact with data servers based on
Global Alliance for Genomics and Health (GA4GH) genomics API through a Shiny
application.  It also integrates with Beacon Network.")
    (license license:gpl3)))

(define-public r-ga4ghclient
  (package
    (name "r-ga4ghclient")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "GA4GHclient" version))
       (sha256
        (base32 "0s0d1m340v4nhms3mj1w126s003kmyfimnc1m6fj61glq8w8566j"))))
    (properties `((upstream-name . "GA4GHclient")))
    (build-system r-build-system)
    (propagated-inputs (list r-variantannotation
                             r-s4vectors
                             r-jsonlite
                             r-iranges
                             r-httr
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr
                             r-biostrings
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/labbcb/GA4GHclient")
    (synopsis "Bioconductor package for accessing GA4GH API data servers")
    (description
     "GA4GHclient provides an easy way to access public data servers through Global
Alliance for Genomics and Health (GA4GH) genomics API. It provides low-level
access to GA4GH API and translates response data into Bioconductor-based class
objects.")
    (license license:gpl2+)))

