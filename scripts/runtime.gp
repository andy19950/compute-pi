set logscale x 2
set grid
set title "time_compare"
set term png
set output "runtime.png"
set xlabel "N"
set ylabel "time(sec)"

plot "result_clock_gettime.csv" using 1:2 with lines title 'baseline', \
'' using 1:3 with lines title 'omp_2', \
'' using 1:4 with lines title 'omp_4', \
'' using 1:5 with lines title 'avx', \
'' using 1:6 with lines title 'avxunroll'

