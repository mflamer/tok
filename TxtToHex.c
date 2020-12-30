#include <stdio.h>
#include <stdlib.h> 

char conv(char c){
  return c > 9 ? c + 0x37 : c + 0x30;
}

int main(int argc, char* argv[])
{
  FILE* pFileIn;
  pFileIn = fopen(argv[1],"r");
  FILE* pFileOut;
  pFileOut = fopen(argv[2],"w");
  int size = atoi(argv[3]);
  int type = atoi(argv[4]);
  char c;
  if (pFileIn==NULL | pFileOut==NULL) perror ("Error opening file");
  else
  {
    if(type != 0){//.mem
      putc('0', pFileOut);
      putc(':', pFileOut);
    }
    c = getc(pFileIn);
    for(int i = 0; i < size; i++){      
      if (c != EOF){
        putc(conv(c>>4), pFileOut);
        putc(conv(c&0xF), pFileOut);

        if(type != 0){ 
          putc(' ', pFileOut);//.mem
        }
        else{
          putc(0xA, pFileOut);
        }

        c = getc(pFileIn);
      }      
      else if (type == 0){
        putc('0', pFileOut);
        putc(0xA, pFileOut);
      }
    }
    fclose (pFileIn);
    fclose (pFileOut);    
  }
}