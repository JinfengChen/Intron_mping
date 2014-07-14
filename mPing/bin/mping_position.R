pdf("mping_position.pdf")

par(mar=c(6,4,4,2), cex=1.2)
x1 <- read.table("Somatic.position.distr")
x2 <- read.table("RIL.position.distr")
x3 <- read.table("Strains.position.distr")

data <- rbind(x1[,2]/sum(x1[,2]), x2[,2]/sum(x2[,2]), x3[,2]/sum(x3[,2]))
xx <- barplot(data,beside=TRUE,ylab="Proportion",cex.names=1,cex.axis=1,border=FALSE,ylim=c(0,0.8),col=c("aquamarine3", "steelblue2" ,"sandybrown"))
axis(1,c(0.5,max(xx)+0.5),line=0,labels=c("",""))
text(xx[1,]+0.2,rep(-0.12,7), cex=1, offset=2,labels=x1[,1],srt=55,xpd=TRUE)
legend('topright', bty='n', border='NA', lty=c(0,0),cex=1 ,c("Somatic", "RIL","Strains"),fill=c("aquamarine3", "steelblue2" ,"sandybrown"))



dev.off()

