n=10.33
[ -d src ] && exit 1
wget -ncv https://ftp.pcre.org/pub/pcre/pcre2-$n.tar.gz
tar xf pcre2-$n.tar.gz
mv pcre2-$n src
rm pcre2-$n.tar.gz

# TODO:
#  copy *.{c,h} from src/src except programs (grep for 'main(')
#  copy *.h.generic to *.h
#  copy *.c.dist to *.c

