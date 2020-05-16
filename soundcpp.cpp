#include <stdio.h>
#include "csound.hpp"

int main(int argc, char *argv[])
{
//Create an instance of Csound
Csound* csound = new Csound();

//compile instance of csound.
csound->Compile(argv[1]);

//prepare Csound for performance
csound->Start();

//perform entire score
csound->Perform();	

//free Csound object
delete csound;

return 0;
}
