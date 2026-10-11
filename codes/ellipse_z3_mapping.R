setwd("C:/Users/18904/Github/complex-analysis/codes")
if(!dir.exists("data"))dir.create("data")
if(!dir.exists("../figures"))dir.create("../figures")
if(!file.exists("data/ellipse_z3_mapping.RData")){
  theta=seq(0,2*pi,length.out=3000)
  x=sqrt(2)*cos(theta)
  y=sin(theta)
  z=complex(re=x,im=y)
  w=z^3
  u=Re(w)
  v=Im(w)
  save(theta,x,y,z,w,u,v,file="data/ellipse_z3_mapping.RData")
}
load("data/ellipse_z3_mapping.RData")
pdf("../figures/ellipse_z3_mapping.pdf",width=8,height=4)
par(mfrow=c(1,2),mar=c(4,4,3,1))
plot(x,y,type="l",main="Original Ellipse x^2/2+y^2=1",xlab="x",ylab="y",asp=1)
plot(u,v,type="l",main="Image Curve After Mapping w=z^3",xlab="u",ylab="v",asp=1)
dev.off()
