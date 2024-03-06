primary="HDMI-0"
secondary="DP-0"
xrandr \
  --output "$primary" --auto --primary \
  --output "$secondary" --auto --right-of "$primary"


#primary="DP-0"
#tablet="HDMI-0"

#xrandr \
#  --output "$primary" --mode 2560x1440 --primary \
#  --output "$tablet" --off --below "$primary" 
