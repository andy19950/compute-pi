#include <stdio.h>
#include "computepi.h"

int main(int argc, char const *argv[])
{
    __attribute__((unused)) int N = 1e9;
    double pi = 0.0;

#if defined(BASELINE)
    pi = compute_pi_baseline(N);
#endif

#if defined(OPENMP_2)
    pi = compute_pi_openmp(N, 2);
#endif

#if defined(OPENMP_4)
    pi = compute_pi_openmp(N, 4);
#endif

#if defined(AVX)
    pi = compute_pi_avx(N);
#endif

#if defined(AVXUNROLL)
    pi = compute_pi_avx_unroll(N);
#endif

#if defined(LEIBNIZ)
    pi = compute_pi_Leibniz(N);
#endif

#if defined(LEIBNIZAVX)
    pi = compute_pi_Leibniz(N);
#endif

    printf("N = %d , pi = %.10lf\n", N, pi);

    return 0;
}
