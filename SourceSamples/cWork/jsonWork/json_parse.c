// jvogel
#include <stdio.h>
#include<json-c/json.h>

//https://linuxprograms.wordpress.com/2010/05/20/json-c-libjson-tutorial/
//
//sudo apt install libjson-c-dev
//
// 2 ways to compile using gcc
//gcc test.c -ljson-c
//gcc $(pkg-config --cflags json-c) -o $OUTFILE $SRCFILE $(pkg-config --libs json-c)

//Cmake compile cotrol
//cmake_minimum_required(VERSION 3.23)
//project(jasonParse C)
//
//set(CMAKE_C_STANDARD 99)
//
//add_executable(jasonParse main.c)
//
//find_package(json-c CONFIG)
//target_link_libraries(${PROJECT_NAME} PRIVATE json-c::json-c)

int main(int argc, char **argv) {
    FILE *fp = NULL;
    char buffer[1024];

    struct json_object *parsed_json;
    struct json_object *id;
    struct json_object *name;
    struct json_object *dob;
    struct json_object *weight;
    struct json_object *vaccines;
    struct json_object *notes;
    struct json_object *children;

    struct json_object *child;

    size_t n_children;
    size_t i;

    system("echo '\nNOTE: current run directory';pwd");

    fp = fopen("herd.json", "r");
    if (fp == NULL) {
	    perror("\nFailed: ");
	    printf("Exiting");
	    return 1;
	} else {
      printf("NOTE: json file opened OK\n");
      }

    int numCharsRead;
    numCharsRead = fread(buffer, 1, 1024, fp) ;
    if (numCharsRead == 0) {
	printf("\nERROR: json file read failed: exiting\n");
	return 2;
	} else {
        printf("NOTE: json file read OK\n");
        printf("\nNOTE: chars read from json file: %d\n",numCharsRead);
        fclose(fp);
      }

    //parsing the buffer for json objects
    parsed_json = json_tokener_parse(buffer);

    json_object_object_get_ex(parsed_json, "id", &id);
    json_object_object_get_ex(parsed_json, "name", &name);
    json_object_object_get_ex(parsed_json, "dob", &dob);
    json_object_object_get_ex(parsed_json, "weight", &weight);
    json_object_object_get_ex(parsed_json, "vaccines", &vaccines);
    json_object_object_get_ex(parsed_json, "notes", &notes);
    json_object_object_get_ex(parsed_json, "children", &children);
    
    printf("\nNOTE: showing the json data fields:\n");
    printf("Id %d\n", json_object_get_int(id));
    printf("Name %s\n", json_object_get_string(name));
    printf("dob %s\n", json_object_get_string(dob));
    printf("weight %s\n", json_object_get_string(weight));
    printf("vaccines %s\n", json_object_get_string(vaccines));
    printf("notes %s\n", json_object_get_string(notes));

    n_children = json_object_array_length(children);
    printf("Found %lu children\n", n_children);

    for(i=0; i < n_children;i++) {
       child = json_object_array_get_idx(children,i);
       printf("%lu, %s\n", i+1, json_object_get_string(child));
    }
    return 0;
}
