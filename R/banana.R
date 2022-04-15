
#' Calculating Data Frane Empty space
#' @export
#' @param data name of data frame
banana = function(data,list1,list2){
  library(ggplot2)
  col_names <- c()
  precentage <- c()
  count <- c()
  for ( o in colnames(data)) {
    
    l=sum(is.na(data[o]))
    c=nrow(data)
     col_names=c(col_names, o)
     count=c(count, l)
     precentage=c(precentage, m)
  
    m = l/c
    #print(o)
    #print('missing values')
    #print(l)
    #print('missing value percentage')
    #print(m)
    #print("--------------------------')
  }
  df1 <- data.frame(col_names, count, precentage)
  #print("Missung data")
  print(df1)
  
  z <- data.frame( a=col_names,  b=precentage)
  cxc <- ggplot(z, aes(x=a, y=b, fill=factor(b))) + 
    geom_bar(width = 1,stat="identity",colour = "black")
  cxc + coord_polar() + 
    theme_linedraw() +theme(axis.ticks =element_blank(), axis.text.y =element_blank(), axis.title=element_blank(), axis.text.x=element_text(size = 2,angle = 45)) 
}
