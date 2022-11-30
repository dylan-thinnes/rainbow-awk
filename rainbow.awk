BEGIN { RS="[^0-9a-zA-Z]+" }
{
  r=int(rand()*256); g=int(rand()*256); b=int(rand()*256)
  printf "\033[38;2;%d;%d;%dm", r, g, b
  printf "%s\033[0;1m", $i
  printf "%s", RT
}
