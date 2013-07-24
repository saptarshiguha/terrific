library(rterra)
tinit(clang="/opt/clang3.3/bin/clang")
terraFile(system.file("examples","tests.t",package="rterra"))

cat("Tests Start Now\n")
#### Environment Test
myNS = new.env()
myNS$foo = 1.234
foo=2.45
terra("testNameSpace",myNS,table="ttests")
print(list(myNS$foo, foo))


## IntegerVector Test
a1 <-terra("makeIntegerVector",table="ttests")
cat("intvector\n")
print(a1)

## ## IntegerVector2 Test
## x <- 1:5
## doTerra("makeIntegerVector2",x)
## cat("intvector\n")
## print(x)

## ## Integer With Attributes
x <- structure(1:5,foo="superman")
y <- as.character(1:4)
terra("intVectorWithAttr",x,y,table="ttests")
print(x)


## ## Matrix Test
y <- matrix(as.numeric(1:10),ncol=2)
print(y)
terra("matrixTest",y,table="ttests")


## ## vector creation
terra("createVector",table="ttests")
