imatlab
=======


The R package **imatlab** aims to provide some useful matlab functions.

It is a working package. If you have some functions that are very convenient in matlab, but not in R, thanks for provide the information.

For example, in matlab:

```matlab
 unique(mat,'rows')
 ```
 
will return a matrix without repeated rows. Moreover, the matrix is orderd by the first column, second column,... But in R, the result of 
```r
unique(mat) 
```
is not ordered. 

That is why we rewrite the unique function in R.

