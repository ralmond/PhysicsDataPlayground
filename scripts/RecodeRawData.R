## This script recodes the raw responses from the pre/post test to be A, B, C, D
## instead of the full question text

recodeQQ <- function(data, questreg="(A.NQ|A.FQ)", scoredreg=("_scored")) {
  rawcols <- grep(scoredreg,grep(questreg,names(data),value=TRUE),
                  value=TRUE,invert=TRUE)
  for (col in rawcols) {
    levels(data[[col]]) <- LETTERS[1:length(levels(data[[col]]))]    
  }
  data
}
