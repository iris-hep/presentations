#set terminal png notransparent medium nocrop enhanced size 640,480 font arial 14
set terminal png notransparent medium nocrop enhanced size 960,720 font arial 18
set output 'cmssw-authors-per-month.png'
#set terminal svg size 640,480 
#set output 'cmssw-authors-per-month.svg'
set origin -0.1,0
set xtics out border nomirror rotate by -40 offset character 0,-0.2,0
set xtics font "arial,18"
#set xtics ("Jan2004" 2004, "Jan2005" 2005, "Jan2006" 2006, "Jan2007" 2007, "Jan2008" 2008, "Jan2009" 2009, "Jan2010" 2010, "Jan2011" 2011, "Jan2012" 2012, "Jan2013" 2013, "Jan2014" 2014, "Jan2015" 2015, "Jan2016" 2016)
set grid
set ytics out border nomirror
set key at 2011,50
set style line 1 linetype 2 linecolor rgb "black" linewidth 2.000 pointtype 5 pointsize 0.4
set style line 2 linetype 2 linecolor rgb "black" linewidth 2.000 pointtype 3 pointsize 0.1
set style line 3 linetype 2 linecolor rgb "orange" linewidth 2.000 pointtype 5 pointsize 0.4
set style line 4 linetype 2 linecolor rgb "purple" linewidth 2.000 pointtype 5 pointsize 0.4
set style line 5 linetype 2 linecolor rgb "yellow" linewidth 2.000 pointtype 5 pointsize 0.4
set style line 6 linetype 2 linecolor rgb "brown" linewidth 2.000 pointtype 5 pointsize 0.4
set style line 7 linetype 2 linecolor rgb "red" linewidth 3.000 pointtype 5 pointsize 1.0
set style line 8 linetype 2 linecolor rgb "green" linewidth 3.000 pointtype 5 pointsize 1.0
set style line 9 linetype 2 linecolor rgb "blue" linewidth 3.000 pointtype 5 pointsize 1.0
set style line 10 linetype 2 linecolor rgb "blue" linewidth 3.000 pointtype 5 pointsize 1.0
set label 11 "CMS Software"  at 2012,330  front nopoint tc ls 1
set label 12 "Individuals making code"  at 2012,315  front nopoint tc ls 1
set label 13 "changes each month"  at 2012,300  front nopoint tc ls 1
set label 14 "1162 total"  at 2008.3,175  front nopoint tc ls 7
set label 15 "568 total"  at 2014.4,75  front nopoint tc ls 10
plot 'cmssw-cvs-authors-per-month.dat' using (($1)+($2/12)):3 with linespoints ls 7 title 'Code in CVS', \
     'cmssw-git-authors-per-month.dat' using (($1)+($2/12)):3 with linespoints ls 10 title 'Code in GitHub'

