# make the spirals

tiff(file = "temp.tiff", width = 3200, height = 3200, units = "px", res = 800) #make hi res file

ggplot(hour_sum, aes(x=as.numeric(hour.group), xend=as.numeric(hour.group) + 1, 
                     y=spiralTime, yend=spiralTime, colour=Act.h)) +
  geom_segment(size=3) +
  scale_x_continuous(limits=c(0,24), breaks=0:23, minor_breaks=0:24,
                     labels=paste0(rep(c(12,1:11),2), rep(c("AM","PM"),each=12))) +
  scale_y_datetime(limits=range(hour_sum$spiralTime) + c(-3*24*3600,0), 
                   breaks=seq(min(hour_sum$spiralTime), max(hour_sum$spiralTime),"1 day"),
                   labels=NULL) +
  scale_colour_gradient2(low="black", mid="red", high="pink", midpoint=220) +
  coord_polar() +
  theme_bw(base_size=10) + 
  #labs(x="Hour",y="Day",color="Act.h") +
  theme(panel.grid.minor.x=element_line(colour="grey90", size=0.3),
        legend.position = "none", axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        axis.line=element_blank(),
        axis.ticks=element_blank(),
        panel.border=element_blank())
dev.off()

##  Choose the colors
hour_sum$logAct.h <- log(hour_sum$Act.h) #in case we want to check log
tiff(file = "temp.tiff", width = 3200, height = 3200, units = "px", res = 800) #make hi res file
ggplot(hour_sum, aes(x=as.numeric(hour.group), xend=as.numeric(hour.group) + 1, 
                     y=spiralTime, yend=spiralTime, colour=Act.h)) +
  geom_segment(size=6) +
  scale_x_continuous(limits=c(0,24), breaks=0:23, minor_breaks=0:24,
                     labels=paste0(rep(c(12,1:11),2), rep(c("AM","PM"),each=12))) +
  scale_y_datetime(limits=range(hour_sum$spiralTime) + c(-0.1*24*3600,0), 
                   breaks=seq(min(hour_sum$spiralTime), max(hour_sum$spiralTime),"1 day"),
                   labels=NULL) +
  scale_color_viridis(discrete=F, begin=.3, end=1, option="A") + #	"magma" ("A")"inferno" ("B"), plasma("C"),"viridis" ("D")"cividis" "E").
  
  # scale_colour_gradient2(low="black", mid="green", high="yellow", midpoint=350) +
  coord_polar() +
  theme_bw(base_size=10) + 
  #labs(x="Hour",y="Day",color="Act.h") +
  theme(panel.grid.minor.x=element_line(colour="grey60", size=0.3),
        legend.position = "none", axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        axis.line=element_blank(),
        axis.ticks=element_blank(),
        panel.border=element_blank())
dev.off()



# Spirals by hours instead of minutes
tiff(file = "temp.tiff", width = 3200, height = 3200, units = "px", res = 800) #make hi res file

ggplot(fullhour_sum, aes(x=as.numeric(hour.group), xend=as.numeric(hour.group) + 1, 
                         y=spiralTime, yend=spiralTime, colour=Act.h)) +
  geom_tile(size=6) +
  scale_x_continuous(limits=c(0,24), breaks=0:23, minor_breaks=0:24,
                     labels=paste0(rep(c(12,1:11),2), rep(c("AM","PM"),each=12))) +
  scale_y_datetime(limits=range(hour_sum$spiralTime) + c(-0.1*24*3600,0), 
                   breaks=seq(min(hour_sum$spiralTime), max(hour_sum$spiralTime),"1 day"),
                   labels=NULL) +
  scale_color_viridis(discrete=F, begin=0, end=1, option="E") + #	"magma" ("A")"inferno" ("B"), plasma("C"),"viridis" ("D")"cividis" "E").
  
  # scale_colour_gradient2(low="black", mid="green", high="yellow", midpoint=350) +
  coord_polar() +
  theme_bw(base_size=10) + 
  #labs(x="Hour",y="Day",color="Act.h") +
  theme(panel.grid.minor.x=element_line(colour="grey60", size=0.3),
        legend.position = "none", axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        axis.line=element_blank(),
        axis.ticks=element_blank(),
        panel.border=element_blank())
dev.off()


## Spiral with tiles not segments

tiff(file = "temp.tiff", width = 3200, height = 3200, units = "px", res = 800, bg="transparent") #make hi res file
hour_sum$data <- log(hour_sum$Act.h)

ggplot(hour_sum, aes(x=as.numeric(hour.group), xend=as.numeric(hour.group) + 1, 
                     y=spiralTime, yend=spiralTime, colour=data)) +
  geom_tile (size=6) + #segment or tile
  scale_x_continuous(limits=c(0,24), breaks=0:23, minor_breaks=0:24,
                     labels=paste0(rep(c(12,1:11),2), rep(c("AM","PM"),each=12))) +
  scale_y_datetime(limits=range(hour_sum$spiralTime) + c(-0.1*24*3600,0), 
                   breaks=seq(min(hour_sum$spiralTime), max(hour_sum$spiralTime),"1 day"),
                   labels=NULL) +
  scale_color_viridis(discrete=F, begin=0, end=1, option="D") + #	"magma" ("A")"inferno" ("B"), plasma("C"),"viridis" ("D")"cividis" "E").
  
  # scale_colour_gradient2(low="black", mid="green", high="yellow", midpoint=15) +
  coord_polar() +
  geom_vline(xintercept=seq(0,25,1), colour="white", alpha=0.5, size = 0.005) +
  #theme_bw(base_size=10) + 
  #labs(x="Hour",y="Day",color="Act.h") +
  theme(#panel.grid.minor.x=element_line(colour="grey60", size=0.3),
    panel.grid.minor.y = element_blank(),
    panel.grid.major.y = element_blank(),
    panel.grid.minor.x = element_blank(),
    panel.grid.major.x = element_blank(),
    legend.position = "none", axis.title.x = element_blank(),
    axis.title.y = element_blank(),
    axis.line=element_blank(),
    axis.ticks=element_blank(), 
    axis.text.x = element_text(face = "bold", color = "white", size = 12),     # Change x axis tick labels only
    panel.background = element_blank(),
    plot.background = element_rect(fill = "transparent",colour = NA),
    panel.border=element_blank())
ggsave("test.png", bg = "transparent")

dev.off()



