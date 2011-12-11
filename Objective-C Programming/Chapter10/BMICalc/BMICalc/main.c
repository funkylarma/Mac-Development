//
//  main.c
//  BMICalc
//
//  Created by Adam Chamberlin on 11/12/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>

//Here is the declaration of the struct Person
typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person p) {
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

int main (int argc, const char * argv[])
{

    Person person;
    person.weightInKilos = 78;
    person.heightInMeters = 1.96;
    printf("person weighs %i kilograms\n", person.weightInKilos);
    printf("person is %.2f meters tall\n", person.heightInMeters);
    float bmi = bodyMassIndex(person);
    printf("person has a BMI of %.2f\n", bmi);
    
    return 0;
}

