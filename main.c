#include <time.h>
char*l="-\\|/";main(int c,char**v){int i=0,p;struct timespec s;if(c<2||kill(p=atoi(v[1],0)))exit(1);s.tv_sec=0;s.tv_nsec=1<<20;for(;!kill(p,0);){dprintf(1,"%c\b",l[++i&3]);nanosleep(&s,0);};dprintf(1," ");}
