## docker-texliveonfly

Docker image for building TeX documents using texliveonfly.
More information about texliveonfly on <http://ctan.org/pkg/texliveonfly>

WORKDIR is set to `/document`. You may want to set volumes to this path.

### Usage

You can use this image as a disposable container:
```bash
docker run --rm -v /path/to/project:/document corentingi/texliveonfly document.tex
```

You can also use it in a more traditionnal way of your root document path doesn't change:
```bash
docker run --name=pdflatex -v /path/to/project:/document corentingi/texliveonfly document.tex
```
