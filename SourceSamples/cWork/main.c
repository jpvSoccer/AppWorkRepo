#include <stdio.h>
#include <sys/types.h>
#include <dirent.h>
#include <stdlib.h>


int main(int argc, char *argv[]) {
    DIR *dp;
    struct dirent *dirp;
    if (argc != 2) {
        printf("ERROR: must have one and only one arguments\n");
        printf("ERROR: number of arguments %d\n",argc-1);
        return(1);
    }

    //system("ls ~/engineering");
    system("ls $argv");

    dp = opendir(argv[1]);
    if (dp == NULL) {
        printf("ERROR: argument not a directory\n");
        printf("ERROR: argument is %s\n", argv[1]);
        return(1);
    }
    while ((dirp = readdir(dp)) != NULL) {
        printf ("%s ", dirp->d_name);
        printf ("%lu ", dirp->d_ino);
        printf ("%c ", dirp->d_type);
        printf ("%ld ", dirp->d_off);
        printf ("%ld ", dirp->d_reclen);
        printf("\n");
        }

    closedir (dirp);
    printf("\nCOMPLETE\n");
    return 0;
}
