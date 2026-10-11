setwd("C:/Users/18904/Github/complex-analysis/codes")
if(!dir.exists("data"))dir.create("data")
if(!dir.exists("../figures"))dir.create("../figures")
if(!file.exists("data/stereographic_projection.RData")){
  y_lines=c(-2,-1,0,1,2)
  x_lines=c(-2,-1,0,1,2)
  sphere_curves_horizontal=list()
  sphere_curves_vertical=list()
  for(i in seq_along(y_lines)){
    y=y_lines[i]
    x=seq(-5,5,length.out=100)
    z=complex(re=x,im=y)
    r2=Mod(z)^2
    xi=2*x/(1+r2)
    eta=2*y/(1+r2)
    zeta=(r2-1)/(1+r2)
    sphere_curves_horizontal[[i]]=cbind(xi,eta,zeta)
  }
  for(i in seq_along(x_lines)){
    x=x_lines[i]
    y=seq(-5,5,length.out=100)
    z=complex(re=x,im=y)
    r2=Mod(z)^2
    xi=2*x/(1+r2)
    eta=2*y/(1+r2)
    zeta=(r2-1)/(1+r2)
    sphere_curves_vertical[[i]]=cbind(xi,eta,zeta)
  }
  plane_grid_horizontal=list()
  plane_grid_vertical=list()
  for(i in seq_along(y_lines)){
    y=y_lines[i]
    x=seq(-5,5,length.out=100)
    plane_grid_horizontal[[i]]=cbind(x,rep(y,100))
  }
  for(i in seq_along(x_lines)){
    x=x_lines[i]
    y=seq(-5,5,length.out=100)
    plane_grid_vertical[[i]]=cbind(rep(x,100),y)
  }
  save(y_lines,x_lines,sphere_curves_horizontal,sphere_curves_vertical,plane_grid_horizontal,plane_grid_vertical,file="data/stereographic_projection.RData")
}
load("data/stereographic_projection.RData")
pdf("../figures/stereographic_projection.pdf",width=10,height=5)
par(mfrow=c(1,2),mar=c(4,4,3,1))
plot(NULL,xlim=c(-3,3),ylim=c(-3,3),main="Complex Plane",xlab="x",ylab="y",asp=1)
for(i in seq_along(plane_grid_horizontal))lines(plane_grid_horizontal[[i]],lty=1)
for(i in seq_along(plane_grid_vertical))lines(plane_grid_vertical[[i]],lty=2)
points(0,0,pch=19)
text(0,0,"  origin",pos=4)
plot(NULL,xlim=c(-1.5,1.5),ylim=c(-1.5,1.5),main="Unit Sphere (stereographic projection)",xlab="xi",ylab="zeta",asp=1)
theta=seq(0,2*pi,length.out=100)
lines(cos(theta),sin(theta),lty=3,lwd=2)
for(i in seq_along(sphere_curves_horizontal))lines(sphere_curves_horizontal[[i]][,1],sphere_curves_horizontal[[i]][,3],lty=1)
for(i in seq_along(sphere_curves_vertical))lines(sphere_curves_vertical[[i]][,1],sphere_curves_vertical[[i]][,3],lty=2)
points(0,1,pch=19)
text(0,1,"  North Pole",pos=4)
points(0,-1,pch=19)
text(0,-1,"  South Pole",pos=4)
dev.off()
