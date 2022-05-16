################################if else################################
y1 <- c('Apple',"Orange","Bananna")

### raw if-else example
if("Mango" %in% y1) {
  print("Mango is found")
} else {
  print("Mango is not found")
}

if("Mango" %in% y1) {
  print("Mango is found")
} else if('Bananna' %in% y1){
  print("Bananna is found")
} else {
  print('Mango and Bananna is not found')
}

### functional if-else (we will use this for dataframes next week)
ifelse('Mango' %in% y1        # condition
       ,"Mango is found"      # value if true
       ,"Mango is not found"  # value if false
)

ifelse('Mango' %in% y1                            # condition
       ,"Mango is found"                          # value if true
       ,ifelse('Bananna' %in% y1                  # else if condition (if 1st is false)
               ,'Bananna is found'                # 2nd value if true
               ,'Mango and Bananna is not found'  # value if both are false
       )
)