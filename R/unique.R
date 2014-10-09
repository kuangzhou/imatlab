##' Like the matlab function \code{unique(mat,'rows')} 
##'
##' @export
##'
##' @param  mat The matrix to be considered 
##' @return The matrix without repeated rows, and ordered by first coloumn, second column... 
##' @examples
##' mat = matrix(c(1,2,1,3,4,2,6,4,8),3)  
##' unique(mat)

unique <- function(mat){
      
      out=base::unique(mat);
	  colnum=ncol(out);

	  ## order the matrix according to column 1,2,...
	  temp="out[,1]";
	  for(j in 2:(colnum)){
	    temp1=paste("out[,",eval(j),"]",sep="")
	    temp=paste(temp,temp1,sep=",")
	  }
	  temp2=paste("order(",temp,")",sep="")
	  myorder=eval(parse(text=temp2))
	  out=out[myorder,];
	  return(out)
}
