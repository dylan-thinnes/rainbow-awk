function gen_color() {
  do {
    r=int(rand()*256)
    g=int(rand()*256)
    b=int(rand()*256)
  } while ((r + g + b) < 256)
}

BEGIN {
  srand(rseed)
  FPAT="([0-9a-zA-Z]+|[^0-9a-zA-Z]+)"
  FSEP=""
  gen_color()
}

{
  for (i = 1; i <= NF; i++) {
    if ($i ~ /[0-9a-zA-Z]/) {
      if (DEBUG) printf "%d;%d;%d", r, g, b
      printf "\033[38;2;%d;%d;%dm", r, g, b
      gen_color()
    }
    printf "%s\033[0;1m", $i
  }
  print ""
}
