#include <stdio.h>
#include <string.h>
#include "cspec/inc/cspec.h"
#include "cspec/inc/cspec_output_verbose.h"
#include "cell.h"

DESCRIBE(foo, "int foo")

        IT( "returns -1" )
                SHOULD_EQUAL( foo(), -1)
        END_IT

END_DESCRIBE

DESCRIBE(strcmp, "int strcmp ( const char * str1, const char * str2 )")

        IT( "returns 0 only when strings are equal" )
                SHOULD_EQUAL( strcmp("hello", "hello"), 0)
                SHOULD_NOT_EQUAL( strcmp("hello", "world"), 0)
        END_IT

        IT( "returns a negative integer when str1 is less than str2"  )
                SHOULD_BE_TRUE( strcmp("hello", "world") < 0 )
                SHOULD_BE_TRUE( strcmp("0123", "1321431") < 0 )
        END_IT

        IT( "returns a positive integer if str1 is greater than str2"  )
                SHOULD_BE_TRUE( strcmp("yellow", "world") > 0 )
                SHOULD_BE_TRUE( strcmp("9", "789") > 0 )
        END_IT

END_DESCRIBE

int main()
{
        CSpec_Run( DESCRIPTION( strcmp ), CSpec_NewOutputVerbose() );
        CSpec_Run( DESCRIPTION( foo ), CSpec_NewOutputVerbose() );
}
