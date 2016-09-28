reset
set ylabel 'time(ms)'
set style fill solid
set title 'perfomance comparison'
set term png enhanced font 'Verdana,10'
set output 'runtime.png'

plot [:][:.005]'result_clock_gettime.csv' using 2:xtic(1) with histogram title 'baseline', \
'' using ($0-0.1):($1):2 with labels title ' ', \
'' using 3:xtic(1) with histogram title 'OpenMP_2'  , \
'' using ($0+0.1):($2):3 with labels title ' ', \
'' using 4:xtic(1) with histogram title 'OpenMP_4' , \
'' using ($0+0.4):($3):4 with labels title ' ', \
'' using 5:xtic(1) with histogram title 'AVX_SIMP' , \
'' using ($0+0.6):($4):5 with labels title ' ', \
'' using 6:xtic(1) with histogram title 'AVX_unrolling' , \
'' using ($0+0.8):($5):6 with labels title ' '
