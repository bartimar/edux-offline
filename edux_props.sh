#!/bin/bash
# Downloads course materials from edux in an automated fashion
# Read README.txt for more information

FT="pdf,zip,gzip,gz,tar,tar.gz,tar.bz,rar,cpp,c,ppt,odp,odt" #which filetypes to download

#if you set these 2 in your shell env and export them, it will work
DEPTH=${DEPTH:-2}  #how deep to crawl the homepage of each $TYPE (seminars proseminars tutorials labs)
LG="${LG:-}" #LG ... language; use '' for CZECH or 'EN' for ENGLISH	


#PREFIX='BI-' #change to 'BIK-' if you want to download materials for parttime students
COOKIE_JAR=$HOME/.edux_cookie.txt #where to get your login cookies from
PLAY_NICE=0 #Don't strain the server too much. Set to 1 if you care. 
PRUNE_EMPTY_DIRS=1 


ROOT='https://edux.fit.cvut.cz'
if [ ! -z "$LG"  ]; then SL=/; else SL=''; fi
if [ ! -z "$LG" ]; then POSTFIX='-'$LG; else POSTFIX=''; fi
if [ ! "$PLAY_NICE" -eq 0 ]; then NICE='-w 1'; else NICE=''; fi

#skipp some error output
exec 2> >(sed '/^mkdirr/ d; /^Resolving/ d; /^Connecting to/ d; /^HTTP request sent/ d; /^Last-modified header/ d; /robots.txt/ d; /^Reusing existing/ d; /Not Found/ d')

#main loop:
for COURSE in "$@"; 
do 
  echo cykliiim $COURSE $PWD
  COURSE=`tr a-z A-Z<<<$COURSE`
  mkdir $COURSE$POSTFIX
  cd $COURSE$POSTFIX
  HPAGE0=$ROOT/'courses/'$COURSE'/'${LG,,}$SL'start'
  #Get files from course's homepage
  wget $NICE --load-cookies $COOKIE_JAR --keep-session-cookies "$HPAGE0" --level=1 -m -nd  --accept "$FT"
  
  for TYPE in lectures seminars proseminars tutorials labs
  do
    HPAGE=$ROOT/'courses/'$COURSE'/'${LG,,}$SL$TYPE'/start'
    mkdir $TYPE
    cd $TYPE

    echo HPAGE=$HPAGE
    #Get files from the homepage of a particular subsection ($TYPE) of a course
    wget $NICE --load-cookies $COOKIE_JAR --keep-session-cookies "$HPAGE" --level=1 -m -nd  --accept "$FT"  
    i=1; wget $NICE --load-cookies $COOKIE_JAR --keep-session-cookies "$HPAGE" -q -O- | grep -o 'href="\([^"]*\)"' | sed -n 's/^.*href="\([^"]*\)".*/\1/ p' | grep $TYPE'/[0-9]\{2\}/start' | sort -u | \
    #Crawl each well-formated link on the homepage of a particular subsection of a course and get all $FT files
    while read LINK; 
      do 
          echo LINK=$ROOT$LINK 
	  n=`printf "%02d" $i`; wget $NICE --load-cookies $COOKIE_JAR --keep-session-cookies --level=$DEPTH -r -m -nd -P$n \
	  --accept "$FT"  $ROOT$LINK; ((i+=1)) 
      done
    cd ..  
  done
  cd ..
  #[ $PRUNE_EMPTY_DIRS -eq 1 ] &&  ( find $COURSE$POSTFIX -type d -exec rmdir {} \; ) 2>/dev/null
  #rmdir $COURSE$POSTFIX 2>/dev/null
done
