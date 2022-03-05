#include <LCMarkdown.h>

int run()
{
    system("gcc -v");
    return 0;
}

int BuildMD()
{
    system("make output");
}

void Fraction(const char* top, const char* bottom)
{
    const char* flp = "test.md";

    AppendFile(flp, "\n");
    AppendFile(flp, "$$\\frac{");
    AppendFile(flp, bottom);
    AppendFile(flp, "}{");
    AppendFile(flp, top);
    AppendFile(flp, "}$$");
}
