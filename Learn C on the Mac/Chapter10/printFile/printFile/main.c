//
//  main.c
//  printFile
//
//  Created by Adam Chamberlin on 12/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#include <stdio.h>

int main (int argc, const char * argv[])
{
    FILE *fp;
    int c;
    
    fp = fopen("/Users/adam/Development/MacDevelopment/Learn C on the Mac/My Data File", "r");
    
    if (fp == NULL) {
        printf("Error opening My Data File\n");
        printf("The file My Data File should be in the same folder as the project file.\n");
        printf( "The executable is buried within the DerivedData folder, five levels deep,\n");
        printf( "which is why there are five .. in the file path above.\n");
        printf( "To learn more about where Xcode builds your executables, go to Xcode\'s\n");
        printf( "Preferences and select the Locations tab.\n");
    } else {
        while ((c = fgetc(fp)) != EOF) {
            putchar(c);
        }
        fclose(fp);
    }
    
    return 0;
}

