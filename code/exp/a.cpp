#include <stdint.h>
#include <stdio.h>

#define LITTLE_ENDIAN 0x41424344UL 
#define BIG_ENDIAN    0x44434241UL
#define PDP_ENDIAN    0x42414443UL
#define ENDIAN_ORDER  ('ABCD') 


#if ENDIAN_ORDER==LITTLE_ENDIAN

	#define FLOAT_NEGATIVE  0x80000000U
	#define FLOAT_EXPONENT  0x7F800000U
	#define FLOAT_MANTISSA  0x007FFFFFU

	#define SHIFT_NEGATIVE  31U
	#define SHIFT_EXPONENT  23U
	#define SHIFT_MANTISSA   0U

#elif ENDIAN_ORDER==BIG_ENDIAN

	#define FLOAT_NEGATIVE  0x00000001U
	#define FLOAT_EXPONENT  0x000001FEU
	#define FLOAT_MANTISSA  0xFFFFFE00U

	#define SHIFT_NEGATIVE  0U
	#define SHIFT_EXPONENT  1U
	#define SHIFT_MANTISSA  9U

#endif


typedef union 
{
	float     as_float;
	uint32_t  as_int;
} ieee745_t;



uint32_t  float_negative (ieee745_t ieee);
uint32_t  float_exponent (ieee745_t ieee);
uint32_t  float_mantissa (ieee745_t ieee);



uint32_t  float_negative (ieee745_t ieee)
{
	return (ieee.as_int & FLOAT_NEGATIVE) >> SHIFT_NEGATIVE;
}


uint32_t  float_exponent (ieee745_t ieee)
{
	return (ieee.as_int & FLOAT_EXPONENT) >> SHIFT_EXPONENT;
}


uint32_t  float_mantissa (ieee745_t ieee)
{
	return (ieee.as_int & FLOAT_MANTISSA) >> SHIFT_MANTISSA;
}


int main()
{
	ieee745_t f = {2};

	printf("%f\n", f.as_float);
	printf("Negative:\t%X\n", float_negative(f) );
	printf("Exponent:\t%X\n", float_exponent(f) );
	printf("Mantissa:\t%X\n", float_mantissa(f) );

	return 0;
}