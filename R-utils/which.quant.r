#==========================================================================================#
#==========================================================================================#
#     This function finds the position of a given quantile.  NA's are discarded.           #
#------------------------------------------------------------------------------------------#
which.quant <<- function(x,prob=0.95){
   if (any(is.finite(x))){
      quant = c(quantile(x,prob=prob,na.rm=TRUE))
      idx   = which.min(abs(x-quant))
   }else{
      idx   = 1
   }#end if
   return(idx)
}#end function
#==========================================================================================#
#==========================================================================================#