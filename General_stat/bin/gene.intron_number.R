pdf("gene.intron_number.pdf")

par(mar=c(6,4,4,2), cex=1.2)
x1 <- read.table("gene.intron_number.stat")

data <- x1[,2]/sum(x1[,2])
xx <- barplot(data,beside=TRUE,ylab="Proportion",cex.names=1,cex.axis=1,border=FALSE,ylim=c(0,0.4),col=c("steelblue2"))
axis(1,c(0,max(xx)+0.5),line=0,labels=c("",""))
text(xx[,1],rep(-0.03,7), cex=1, offset=2,labels=x1[,1],srt=55,xpd=TRUE)
text(xx[,1], data + 0.02, cex=1, offset=2,labels=x1[,2],srt=55,xpd=TRUE)
mtext("Exon Number", side=1,cex=1.2, at=10,line=3)



dev.off()

