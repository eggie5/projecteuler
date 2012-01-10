#import <stdio.h>

int main( int argc, const char *argv[] ) {
	float square_of_sum=(((100*(100+1))/2)*2);
	float sum_of_squares=((100 * (100+1) * ((2 * 100) + 1) / 6));
	printf("%f", sum_of_squares-square_of_sum);
    return 0;
}