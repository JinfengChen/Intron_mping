pdf("mping_intron_length.pdf")

par(mar=c(6,4,4,2), cex=1.2)
x1 <- read.table("Somatic.intron.length.distr")
x2 <- read.table("RIL.intron.length.distr")
x3 <- read.table("Strains.intron.length.distr")

data <- rbind(x1[,3]/sum(x1[,3]), x2[,3]/sum(x2[,3]), x3[,3]/sum(x3[,3]))
xx <- barplot(data,beside=TRUE,ylab="Proportion",cex.names=1,cex.axis=1,border=FALSE,ylim=c(0,0.4),col=c("aquamarine3", "steelblue2" ,"sandybrown"))
axis(1,c(0.5,max(xx)+0.5),line=0,labels=c("",""))
text(xx[1,]+0.2,rep(-0.04,7), cex=1, offset=2,labels=x1[,2],srt=55,xpd=TRUE)
legend('topright', bty='n', border='NA', lty=c(0,0),cex=1 ,c("Somatic", "RIL","Strains"),fill=c("aquamarine3", "steelblue2" ,"sandybrown"))
mtext("Intron Length (bp)", side=1,cex=1.2, at=15,line=4.5)



dev.off()

