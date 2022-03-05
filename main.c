#pragma once
#include <stdio.h>
#include <stdlib.h>

#include <LCMarkdown.h>

int main()
{
    Fraction("12 + x", "x^2 - 2");
    BuildMD();
}