FROM debian:10.2

RUN apt-get update && apt-get install --yes --no-install-recommends \
    texlive-fonts-recommended \
    texlive-generic-recommended \
    texlive-fonts-extra \
    texlive-latex-recommended \
    texlive-base \
    texlive-xetex

COPY cv-tex /cv-tex
WORKDIR /cv-tex
CMD xelatex resume.tex && cp resume.pdf ../
# RUN cd /cv-tex && xelatex resume.tex

# RUN pdflatex /cv-tex/resume.tex -interaction=nonstopmode
# CMD [ "bash" ]
