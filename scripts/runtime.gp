set logscale x 10
set grid
set title "time_compare"
set term png  enhanced font 'Verdana,10'
set output "runtime.png"
set xlabel "N"
set ylabel "time(sec)"

plot "result_clock_gettime.csv" using 1:2 with lines title 'Baseline', \
'' using 1:3 with lines title 'OpenMP_2', \
'' using 1:4 with lines title 'OpenMP_4', \
'' using 1:5 with lines title 'AVX', \
'' using 1:6 with lines title 'AVXunroll', \
'' using 1:7 with lines title 'Leibniz', \
'' using 1:8 with lines title 'Leibniz_AVX'

