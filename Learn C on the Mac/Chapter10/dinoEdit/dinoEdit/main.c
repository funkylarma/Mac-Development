//
//  main.c
//  dinoEdit
//
//  Created by Adam Chamberlin on 13/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include "dinoEdit.h"

int main (int argc, const char * argv[])
{
    int number;
    char dinoName[kDinoRecordSize + 1];
    
    while ((number = GetNumber()) != 0) {
        ReadDinoName(number, dinoName);
        printf("Dino #%d: %s\n", number, dinoName);
        if (GetNewDinoName(dinoName)) {
            WriteDinoName(number, dinoName);
        }
    }
    
    printf("Goodbye.");
    
    return 0;
}

int GetNumber(void) {
    int number, numDinos;
    
    numDinos = GetNumberOfDinos();
    
    do {
        printf("Enter number from 1 to %d (0 to exit): ", numDinos);
        scanf("%d", &number);
        Flush();
    } while ((number < 0) || (number > numDinos));
    
    return number;
}

int GetNumberOfDinos(void) {
    FILE *fp;
    long fileLength;
    
    if ((fp = fopen(kDinoFileName, "r")) == NULL) {
        DoError("Couldn't open the file.");
    }
    
    if (fseek(fp, 0L, SEEK_END) != 0) {
        DoError("Could not seek to the end of the file.");
    }
    
    if ((fileLength = ftell(fp)) == -1L) {
        DoError("ftell() failed.");
    }
    
    return (int)(fileLength / kDinoRecordSize);
}

void ReadDinoName(int number, char *dinoName) {
    FILE *fp;
    long bytesToSkip;
    
    if ((fp = fopen(kDinoFileName, "r")) == NULL) {
        DoError("Could not open the file.");
    }
    
    bytesToSkip = (long)((number - 1) * kDinoRecordSize);
    
    if (fseek(fp, bytesToSkip, SEEK_SET) != 0) {
        DoError("Could not seek in the file.");
    }
    
    if (fread(dinoName, (size_t)kDinoRecordSize, (size_t)1, fp) != 1) {
        DoError("Bad fread.");
    }
    
    dinoName[kDinoRecordSize] = '\0';
    fclose(fp);
}

bool GetNewDinoName(char *dinoName) {
    char line[kMaxLineLength];
    int i, nameLen;
    
    printf("Enter new name: ");
    
    if (fgets(line, kMaxLineLength, stdin)) {
        DoError("Bad fgets.");
    }
    
    line[strlen(line) - 1] = '\0';
    
    for (i = 0; i < kDinoRecordSize; i++) {
        dinoName[i] = ' ';
    }
    
    nameLen = (int)strlen(line);
    
    if (nameLen > kDinoRecordSize) {
        nameLen = kDinoRecordSize;
    }
    
    for (i = 0; i <nameLen; i++) {
        dinoName[i] = line[i];
    }
    
    return true;
}

void WriteDinoName(int number, char *dinoName) {
    FILE *fp;
    long bytesToSkip;
    
    if ((fp = fopen(kDinoFileName, "r")) == NULL) {
        DoError("Could not open the file.");
    }
    
    bytesToSkip = (long)((number - 1) * kDinoRecordSize);
    
    if (fseek(fp, bytesToSkip, SEEK_SET) != 0) {
        DoError("Could not seek in the file.");
    }
    
    if (fwrite(dinoName, (size_t)kDinoRecordSize, (size_t)1, fp) != 1) {
        DoError("Bad fread.");
    }
}
void Flush(void) {
    while (getchar() != '\n') {
        ;
    }
}
void DoError(char *message) {
    printf("%s\n", message);
    exit(0);
}