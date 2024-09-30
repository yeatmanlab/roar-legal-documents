# Use an official lightweight base image
FROM node:22-bookworm-slim

# Install necessary packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    pandoc \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-xetex \
    texlive-fonts-extra \
    latexdiff \
    latexmk \
    ghostscript \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Keep the container running
ENTRYPOINT ["tail", "-f", "/dev/null"]