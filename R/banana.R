
#' Calculating Data Frane Empty space
#' @export
#' @param data name of data frame
banana = function(data,list1,list2){
  library(ggplot2)
  list1 <- c()
  list2 <- c()
  for ( o in colnames(data)) {
    
    l=sum(is.na(data[o]))
    c=nrow(data)
    list1=c(list1, o)
    list2=c(list2, l)
  
    m = l/c
    print(o)
    print('missing values')
    print(l)
    print('missing value percentage')
    print(m)
    print("--------------------------')
  }
  z <- data.frame( a=list1,  b=list2)
  cxc <- ggplot(z, aes(x=a, y=b, fill=factor(b))) + 
    geom_bar(width = 1,stat="identity",colour = "black")
  cxc + coord_polar() + 
    theme_linedraw() +theme(axis.ticks =element_blank(), axis.text.y =element_blank(), axis.title=element_blank(), axis.text.x=element_text(size = 7,angle = 45)) 
}
