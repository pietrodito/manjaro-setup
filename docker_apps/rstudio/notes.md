```
docker run -d 
        -e PASSWORD=1234 
        -v ~/github/:/home/rstudio/projects/ 
        -p 3838:3838 
        -p 8787:8787 
        hatmatrix/blog:latest
```

Note that one port is used for RStudio and other one for Shiny running app.
