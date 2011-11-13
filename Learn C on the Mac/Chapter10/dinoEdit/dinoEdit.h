//
//  dinoEdit.h
//  dinoEdit
//
//  Created by Adam Chamberlin on 13/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#pragma Mark Defines

#define kDinoRecordSize 20
#define kMaxLineLength 100
#define kDinoFileName "/Users/adam/Development/MacDevelopment/Learn C on the Mac/MyDinos"


#pragma Mark - Function Prototypes

int GetNumber(void);
int GetNumberOfDinos(void);
void ReadDinoName(int number, char *dinoName);
bool GetNewDinoName(char *dinoName);
void WriteDinoName(int number, char *dinoName);
void Flush(void);
void DoError(char *message);