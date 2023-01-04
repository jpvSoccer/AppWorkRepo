// working through program sample 1-1
// "Advanced Programming in the UNIX Environment"
// W. Richard Stevens

#include <stdio.h>
//#include <sys/types.h>
#include <dirent.h>
#include <stdlib.h>


int main(int argc, char *argv[]) {
    const char  *OUTFILE= "results.log";
    FILE *fptr = fopen(OUTFILE, "w");
    DIR *dp;
    struct dirent *dirp;

    if (argc != 2) {
        fprintf(stderr, "Usage : %s <directory>\n",argv[0]);
        return(1);
    }

    //system("ls ~/engineering");
    //system("ls $argv");

    dp = opendir(argv[1]);
    if (dp == NULL) {
        fprintf(stderr, "Usage : %s <directory>\n",argv[0]);
        return(1);
    }
    fprintf(stdout, "\nEverything looks good: :)\n");
    fprintf(stdout, "Working on: %s \n",argv[1]);

    while ((dirp = readdir(dp)) != NULL) {
        fprintf(fptr,"%s\n", dirp->d_name);
        fprintf (fptr,"%s ", dirp->d_name);
        fprintf (fptr,"%lu ", dirp->d_ino);
        fprintf (fptr,"%c ", dirp->d_type);
        fprintf (fptr,"%ld ", dirp->d_off);
        fprintf (fptr,"%hu ", dirp->d_reclen);
        fprintf(fptr,"\n");
        }

    closedir (dp);
    fclose(fptr);
    fprintf(stdout, "\nCompleted analysis: look in %s for output\n",OUTFILE);
    system("ls -l  results.log");
    system("cat  results.log");
    return 0;
}
