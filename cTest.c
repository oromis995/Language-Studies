

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_BUFFER   1024
#define MAX_ARGS   64
#define SEPARATORS  " \t\n"

// enviroment variable
extern char ** environ;


int main() {

	// variables
	char str[80];
	char* args[MAX_ARGS];
	char cmd[MAX_BUFFER];
	//will be used to help end loop
	int status = 1;

	do {
		// get the user input
		printf("Enter the Internal Command: ");
		fgets(cmd, MAX_BUFFER, stdin);

		//tokenize the user input
		printf("%s", cmd);
		args[0] = strtok(cmd, SEPARATORS);
		printf("args[0] = %s\n",args[0]);


		// perform the necessary operations based on the args
		if ((strcmp(*args, "myclear" )) == 0){
				//perform myclear
				system("clear");
				printf("myclear entered\n");
		}
		else if (((strncmp(*args, "mydir", 5)) == 0) ){
				// perform mydir, having trouble concatenating for system()
				/*char dir[MAX_BUFFER] = "ls -al ";
				strncat(dir, args[1], MAX_BUFFER - 7); 
				printf("mydir entered\n");
				printf("%s", dir);
				*/
				
		}
		else if ((strcmp(*args, "myenviron")) == 0){
				// perform myenvi
				//enviro();
		}

		else if ((strcmp(*args, "myquit")) == 0){
			printf("myquit entered\n");
			status = 0;
				// perform myquit
		}

		else if (args[0] == NULL){
			printf("Please enter an input.\n");
		}

		else{
			system(args[0]);
			   //perform external command calendar
		}


	}while(status != 0);

	// end the main program
	return 0;
}


// funcion to get the enviroment variables
/*void enviro() (){
	char ** env = environ;
	while (*env)
        printf("%s\n", *env++);
}*/


                   

  
