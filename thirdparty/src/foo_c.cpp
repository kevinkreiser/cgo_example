#include "foo_c.h"
#include "foo.hpp"

extern "C" {

    int foo_bar() {
        return foo::bar();
    }

} // extern "C"