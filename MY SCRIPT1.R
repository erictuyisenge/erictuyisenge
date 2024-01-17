


##    ON VECTORS
# Showing my directory
getwd()
# By generating variable gender 
Gender = c(rep("Male",3),rep("Female",3))
Gender
# by creating variable MARKS with its values
MARKS = c(35,33,39,37,31,36)
MARKS
# by creating variables Names with these values are the following
Names = c("Peter","Mary","Jack","Jane","John","Monique")
Names
# by finding the mean, minimum, maximum 
tistics = mean(MARKS)
tistics
summary(MARKS)
# and Standard deviation 
sd(MARKS)

## FACTORS
# vector Region 
Region = c(1,2,1,2,2,1)
Region
# Making variable region a factor variable
Region = factor(Region)
Region
# Renaming levels of this variable so that 1 be Rural 2 Urban
levels(Region) = c("Rural","Urban")
Region
# Gender as a factor variable
Gender=factor(Gender)
levels(Gender) = c("Male","Female")
Gender
aggregate(MARKS~Gender,FUN = function(x) c(Mean=mean(x), SD=sd(x),Variance=var(x),Maximum=max(x),Minimium=min(x)))
# variable Region and MARKS TO find mean for each group
aggregate(MARKS~Region,FUN = function(x) Mean=mean(x))
# Obtaining frequency table of variable Gender
table(Gender)
# Obtaining cross tabulation for variable Gender and Region
table(Gender,Region)


## MATRICES

A = c(22,25,30,25,35)
B = c(100,135,270,310,400)
C = c(1,4,2,3,5)
# making a matrix with cloumns are A,B and C by using rownames() and colnames()Function
MATRIX=matrix(c(A,B,C),nrow=5)
MATRIX
# Renaming the columns of the MATRIX as follow A,B,C,D will be Age,Income and Family size.
colnames(MATRIX)=c("Age","Income","Family size")
MATRIX
# Renaming the rows of MATRIX so that names for row 1,2,3,4 and 5 will be Peter,Mary,Jack,Jane and John
rownames(MATRIX)=c("Peter","Mary","Jack","Jane","John")
MATRIX
# 
X=c(12,15,19,13,17)
Y=c(10, 13, 19,18,12)
Z=c(15,19,20,12,16)
W=c(10,20,15,12,19)
# matrix RESULTS whose columns are X,Y,Z,W
RESULTS=matrix(c(X,Y,Z,W),nrow=5)
RESULTS
#
rownames(RESULTS) = c("Peter","Mary","Jack","Jane","John")
colnames(RESULTS) = c("Level I","Level II","Level III","Level IV")
dimnames(RESULTS) = list(rownames(RESULTS),colnames(RESULTS))


