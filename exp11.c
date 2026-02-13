#include <stdio.h>
#include <math.h>

int main() {
    double a,b,c;
    printf("Enter expression (a op b op c format): ");
    scanf("%lf + %lf * %lf", &a, &b, &c);

    printf("Result using PEMDAS: %lf\n", a + (b * c));

    return 0;
}
