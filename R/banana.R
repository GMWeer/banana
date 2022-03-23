
#' Calculating Data Frane Empty space
#' @export
#' @param data name of data frame
banana = function(data){
  for ( o in colnames(data)) {

    l=sum(is.na(data[o]))

    print(o)
    print('Missing values')
    print(l)
    print('=================')

  }

}
