#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>

typedef int Item;

typedef struct {
    Item *items;
    size_t capacity;
    size_t length;
} DynamicArray;

void dynarray_init(DynamicArray *dynarray) {
    dynarray->capacity = 5;
    dynarray->length = 0;
    dynarray->items = malloc(dynarray->capacity * sizeof(Item));
    if (dynarray->items == NULL)
        exit(2);
}

void dynarray_push_back(DynamicArray *dynarray, Item item) {

    if (dynarray->length >= dynarray->capacity) {
        dynarray->capacity *= 2;
        dynarray->items = realloc(dynarray->items, dynarray->capacity * sizeof(Item));
        if (dynarray->items == NULL)
            exit(2);
    }

    dynarray->items[dynarray->length++] = item;
}

int main(void) {

    int *mem = malloc(20);
    if (mem == NULL)
        printf("is null\n");

    // DynamicArray dynarray = {0};
    // dynarray_init(&dynarray);
    // dynarray_push_back(&dynarray, 1);

}
