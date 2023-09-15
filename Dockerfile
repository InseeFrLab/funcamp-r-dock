FROM rocker/r-ver:4
RUN apt-get update && apt-get install -y  git-core make pandoc pandoc-citeproc libcurl4-openssl-dev libssl-dev libxml2-dev libcurl4-openssl-dev zlib1g-dev
RUN echo "options(repos = c(CRAN = 'https://cran.rstudio.com/'), download.file.method = 'libcurl')" >> /usr/local/lib/R/etc/Rprofile.site
RUN R -e 'install.packages("remotes")'
RUN R -e 'remotes::install_github("r-lib/remotes", ref = "97bbf81")'
RUN Rscript -e 'remotes::install_github("rstudio/parsons", ref = "42d0bfb")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "tidyverse", version = "1.2.1")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "learnr", version = "0.10.0")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "magrittr", version = "1.5")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "purrr", version = "0.3.3")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "rmarkdown", version = "1.16")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "stringr", version = "1.4.0")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "ggplot2", version = "3.2.1")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "ggformula", version = "0.9.1")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "dplyr", version = "0.8.3")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "knitr", version = "1.25")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "readr", version = "1.3.1")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "readODS", version = "1.6.7")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "babynames", version = "1.0.0")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "skimr", version = "1.0.7")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "rio", version = "0.5.16")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "shinyAce", version = "0.4.0")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "roxygen2", version = "6.1.1")'
EXPOSE 3838
