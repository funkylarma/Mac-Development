//
//  main.c
//  ChallengeStructs
//
//  Created by Adam Chamberlin on 11/12/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main (int argc, const char * argv[])
{

    long secondsSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970\n", secondsSince1970);
    
    long fourMillionSecondsTime = secondsSince1970 + 4000000;
    
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
    
    localtime_r(&fourMillionSecondsTime, &now);
    printf("The date in four million seconds time will be %d-%d-%d\n",now.tm_mday,now.tm_mon + 1,now.tm_year+1900);
    
    return 0;
}

