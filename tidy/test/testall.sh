#! /bin/sh

#
# testall.sh - execute all testcases for regression testing
#
# (c) 1998-2001 (W3C) MIT, INRIA, Keio University
# See tidy.c for the copyright notice.
#
# <URL:http://tidy.sourceforge.net/>
#
# CVS Info:
#
#    $Author$
#    $Date$
#    $Revision$
#
# set -x

VERSION='$Id'

BUGS="426885 427633 427662 427664 427671 427672 427675 427676 427677\
 427810 427811 427813 427816 427818 427819 427820 427821 427822 427823\
 427825 427826 427827 427830 427833 427834 427835 427836 427837 427838 427839\
 427840 427841 427844 427845 427846 431716 431719 431721 431731 431736\
 431739 431874 431883 431889 431895 431898 431958 431964 432677 433012\
 433021 433040 433359 433360 433656 433666 433672 433856 434047 434100\
 434940 435903 435909 435917 435919 435920 435922 435923 437468 438650\
 438658 438954 438956 441508 441568 443362 443576 443678 445074 445394\
 445557 449348 470663 480701 487204 487283 501669 504206 505770 511679\
 533233 540571 543262 545772 553468 566542 586555 586562 588061 616744\
 620531 629885 634889 640473 640474 646946 647255 647900 649812 655338\
 656889 658230 660397 661606 676156 676205 688746 695408 696799"

for bugNo in ${BUGS}
do
#  echo Testing $bugNo | tee -a testall.log
  ./testone.sh $bugNo "$@" | tee -a testall.log
done

