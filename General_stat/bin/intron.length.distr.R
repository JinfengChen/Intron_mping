pdf("intron.length.distr.pdf")

par(mar=c(6,4,4,2), cex=1.2)
x1 <- read.table("intron.length.distr.stat")

data <- x1[,3]/sum(x1[,3])
xx <- barplot(data,beside=TRUE,ylab="Proportion",cex.names=1,cex.axis=1,border=FALSE,ylim=c(0,0.6),col=c("steelblue2"))
axis(1,c(0,max(xx)+0.5),line=0,labels=c("",""))
text(xx[,1],rep(-0.06,7), cex=1, offset=2,labels=x1[,2],srt=55,xpd=TRUE)
text(xx[,1], data + 0.03, cex=1, offset=2,labels=x1[,3],srt=55,xpd=TRUE)
mtext("Intron Length (bp)", side=1,cex=1.2, at=4.5,line=4)



dev.off()

