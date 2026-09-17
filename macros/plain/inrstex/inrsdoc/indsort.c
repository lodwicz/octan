/*
This reads a an unsorted index file *.ind and writes a sorted, and converted
*.sor index file
File Names are specialized to the INRSTeX reference book
... DOS version uses strncmpi()
*/ 

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <alloc.h> 
#include <ctype.h>

#define NUL             ((char)0)
#define BSLASH          ((char)0x5c) 
#define CR              ((char)0x0d)
#define LF              ((char)0x0a) 
#define MAX             900
#define CS              20
#define SS              510
#define PL              8
/* type def */

typedef struct {
    char cmp_str[CS];
    char *str;
} ind;

/* the variables */

  FILE	*outfile;        /* out file. */
  FILE   *infile;       /* input file */
  char   in_buf[512];   /* input buffer */
  ind    index[MAX]; 
  char   work[512];
  int    j, k, l, cp, in_len ;        /*  dummy vars */
  int    mem_over, op;

/* Comparison Function */ 
int sortfcn(const void *a, const void *b)
  { 
    return (strcmpi(a,b));
   }
    



/*****
* The main function.
input file name is masth.ind output is masth.sor ... for inrstex ref book
*****/
void main()
    {printf("\n INRSTeX index massage and sort. \n     Input file is 'masth.ind'. \n     Output file is 'masth.sor'.\n");
     infile = fopen( "masth.ind", "r");
     if (infile==0) printf("\n Sorry ... I can't find the index file \n `masth.ind` \n"); 
      else {
       outfile = fopen( "masth.sor", "w" ); 
       j=0; while (j<MAX) {k=0; while (k<CS) {index[j].cmp_str[k]=' '; k++;}
                           j++; index[j].cmp_str[CS-1]=0;
                          }
       mem_over=0;
       cp=0;
       while ((fgets(in_buf, 510, infile))&&(cp<MAX))
         { in_len=strlen(in_buf);
           index[cp].str=malloc(in_len); 
           if (index[cp].str==0) {mem_over=1; 
                                printf("\n Memory Overflow");
                                break;
                            }
           strncpy(index[cp].str, in_buf, SS-1);
           j=0; k=0; 
           while ((j<CS-PL-1)&&(in_buf[k]!=LF))
             { if (isalpha(in_buf[k])) {
                                     index[cp].cmp_str[j]=in_buf[k]; 
                                        j++;
                                       }
               k++;
             }
           if (j==5) {j=0; while (j<5) {index[cp].cmp_str[j]=' '; j++; } }
                /* fix for single non-alphabetic commands */ 
           cp++;
         }
        qsort((void *) index, cp, sizeof(ind), sortfcn); 
        printf("\n %d index records were read and sorted. \n", cp);
         op=0;
       while (op<cp) 
        { 
        strncpy(work, index[op].str, SS-1);
        if (work[0]=='!') 
         {fputc(BSLASH,outfile);fputc('2',outfile);
          k=1; while  (work[k]!='!')
                      { if ((work[k]=='*')&&(work[k+1]=='/')&&(work[k+2]=='*'))
                           {fputc(LF,outfile); k++;k++;}
                          else 
                           {fputc(work[k],outfile); 
                            if (work[k]==BSLASH) fputc('1',outfile);
                           }
                       k++;
                      }
             
          k++;  while ((work[k]!=LF)&&(work[k]!=0))
                      {fputc(work[k],outfile); k++;}
          fputc(LF,outfile);
         }
          op++;
        }

     fclose(infile); fclose(outfile); 
      }
   }


