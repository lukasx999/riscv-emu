#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

typedef struct {
    int a;
    int b;
    int c;
} Foo;

int foo(void) {
    return 45;
}

void take(Foo *foo) {
}

int main(void) {

    Foo x = {};
    take(&x);

    foo();
    putchar(65);
    printf("foobar");

    return 0;
}
