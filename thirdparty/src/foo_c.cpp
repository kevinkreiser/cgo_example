#include "foo_c.h"
#include "foo.hpp"

extern "C" {
    const char* foo_bar() {
        return foo::bar().c_str();
    }
} // extern "C"