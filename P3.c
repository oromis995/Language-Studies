// Program-ID: P3.c
// Author:  Squirrel Squad
// OS:

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_BUFFER   1024
#define MAX_ARGS   64
#define SEPARATORS  " \t\n"

// enviroment variable  
extern char **environ; 


int main() {

        // variables
        char str[80];
        char* args[MAX_ARGS];
        char cmd[MAX_BUFFER];
	char command[MAX_BUFFER];
        //will be used to help end loop
        int status = 1;
	int i;
	int j;

        do {
                // get the user input
                printf("Enter the Internal Command: ");
                fgets(cmd, MAX_BUFFER, stdin);

                //tokenize the user input
                args[0] = strtok(cmd, SEPARATORS);
		printf("args[0] = %s\n", args[0]);
		if(args[0] != NULL){
			for (i = 1; args[i] = strtok(NULL, SEPARATORS); i++){
 				printf("args[%d] = %s\n",i, args[i]);
			}
		}
		else{
			printf("Please enter a valid command.\n");
			continue;
		}

                // perform the necessary operations based on the args
                if ((strcmp(*args, "myclear" )) == 0){
                                //perform myclear
                                system("clear");
                }
                else if (((strncmp(*args, "mydir", 5)) == 0) ){
                            // perform mydir <directory>
			char directory[MAX_BUFFER];
                        strcpy(directory, "ls -al ");
			if(args[1] != NULL){
  				strcat(directory, args[1]);
			}
			system(directory);

                }
                else if ((strcmp(*args, "myenviron")) == 0){
                                // perform myenvi
		 char ** en = environ; 
			 while(*en)
				printf("%s\n", *en++);
                }

                else if ((strcmp(*args, "myquit")) == 0){
                        printf("Program quit.\n");
                        status = 0;
                        // perform myquit
                }

                else if (args[0] == NULL){
                        printf("Please enter an input.\n");
                }

                else{
                        system(cmd);
                           //perform external command calendar
                }


        }while(status != 0);

        // end the main program
        return 0;
}


