#include <ctype.h>
#include <ruby/ruby.h>

static VALUE zeitwerk_native_inflector;

static VALUE zeitwerk_camelize(VALUE object, VALUE basename, VALUE _absname)
{
    char* bname     = StringValueCStr(basename);
    char* camelized = xmalloc(strlen(bname));
    int   upcase    = 1;

    unsigned long j = 0;
    for (unsigned long i = 0; i < strlen(bname); i++) {
        char c = bname[i];
        if (c == '_') {
            upcase = 1;
        } else if (upcase) {
            camelized[j++] = toupper(c);
            upcase = 0;
        } else {
            camelized[j++] = c;
        }
    }

    VALUE out = rb_str_new(camelized, j);
    xfree(camelized);
    return out;
}

/* This function has a special name and it is invoked by Ruby to initialize the extension. */
void Init_zeitwerk()
{
    VALUE zeitwerk = rb_define_module("Zeitwerk");
    zeitwerk_native_inflector = rb_define_class_under(zeitwerk, "NativeInflector", rb_cObject);

    rb_define_method(zeitwerk_native_inflector, "camelize", zeitwerk_camelize, 2);
}
