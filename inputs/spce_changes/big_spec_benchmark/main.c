/*---------------------------------------------------------------------------*/
/*------------------------------- MIT License -------------------------------*/
/*-----------------------------------------------------------------------------
Copyright (c) 2023  School of Cyber Science and Technology, Shandong University
Copyright (c) 2023  SPEC_2006

File name: spec_benchmark.c
Abstract: benchmark of static analysis tools for Huawei_Memory_Project
Version: 1.0

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
-----------------------------------------------------------------------------*/


/*-----------------------------------------------------*/
/*--- A Complex simulation of non-compression fluid ---*/
/*-----------------------------------------------------*/

 /*--
    Lib which is used.
 --*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <signal.h>
#include <math.h>
#include <errno.h>
#include <ctype.h>
#include <unistd.h>

/*---------------------------------------------*/
/*--
   Some Const.
--*/

#define SIZE   (2000)
#define SIZE_X (2000)
#define SIZE_Y (2000)
#define DFL1 (1.0/ 3.0)
#define DFL2 (1.0/18.0)
#define DFL3 (1.0/36.0)
#define MOD 100007

#define True  ((Bool)1)
#define False ((Bool)0)

/*---------------------------------------------*/
/*--
   Type def for use.
--*/

typedef int mesh[SIZE_X][SIZE_Y];
typedef mesh* meshptr;

/*---------------------------------------------*/
/*--
   Functions.
--*/

void InitializeMesh_1(void);
void InitializeMesh_2(void);
int Mesh_dot(void);
int Mesh2(void);
int CompareMesh(void);
int SwapMesh(void);
int ManiplateData1(void);
int ManiplateData2(void);
int ComplexDataHandle(void);

/*---------------------------------------------*/
/*--
   Global variable.
--*/

mesh ms1,ms2,ms3;
int res,res2;





/*---------------------------------------------*/
/*--
   Main.
--*/

int main(int argc, const char * argv[])
{
    
    res = 0;
    int bool1 = 1;
    int bool2 = 0;
    
    if (bool1)
    {
        InitializeMesh_1();
        InitializeMesh_2();
        
    }
    
    printf("1");

    res = CompareMesh();
    
    if (bool2)
    {
        res = SwapMesh();
        printf("k");
        
        res2 = Mesh_dot();
    }
    else
    {
        res = SwapMesh();
        printf("p");
        
        res2 = Mesh_dot();
    }
    
    printf("2");

    SwapMesh();

    ComplexDataHandle();
    
    res2 = Mesh2();
    
    printf("3");
    return 0;
}


void InitializeMesh_1(void)
{
    int x,  y;
        for( y = 0; y < SIZE_Y; y++ )
        {
            for( x = 0; x < SIZE_X; x++ )
            {
                
                ms1[x][y] = random();
                int temp = ms1[x][y];
                if(ms1[x][y]>100007)
                {
                    ms1[x][y] %= MOD;
                }
            }
        }
}

void InitializeMesh_2(void)
{
    int x,  y;
        for( y = 0; y < SIZE_Y; y++ )
        {
            for( x = 0; x < SIZE_X; x++ )
            {
                ms2[x][y] = random();
                int temp = ms2[x][y];
                if(ms2[x][y]>100007)
                {
                    ms2[x][y] %= MOD;
                }
            }
        }
}

int CompareMesh(void)
{
    int ms1_big = 0;
    int x,  y;
        for( y = 0; y < SIZE_Y; y++ )
        {
            for( x = 0; x < SIZE_X; x++ )
            {
                if(ms1[x][y]>ms2[x][y])
                {
                    ms1_big ++;
                }
                else
                {
                    ms1_big --;
                }
            }
        }
    if(ms1_big >= 0)
    {return 1;}
    else
    {return 0;}
}

int Mesh2(void)
{
    for (int i = 0; i < SIZE_X; i++)
        {
            for (int j = 0; j < SIZE_X; j++)
            {
                for (int k = 0; k < SIZE_Y; k++)
                {
                    ms1[i][j] = ms1[i][k]*ms1[i][k];
                    ms2[i][j] = ms2[k][j]*ms2[k][j];
                    
                }
            }
        }
    
    return 0;
}

int SwapMesh(void)
{
    int x,  y,  z;
        for( y = 0; y < SIZE_Y; y++ )
        {
            for( x = 0; x < SIZE_X; x++ )
            {
                int tmp = ms1[x][y];
                ms1[x][y] = ms2[x][y];
                ms2[x][y] = tmp;
            }
        }
    return 0;
}

int Mesh_dot(void)
{
    for (int i = 0; i < SIZE_X; i++)
        {
            for (int j = 0; j < SIZE_X; j++)
            {
                for (int k = 0; k < SIZE_Y; k++)
                    ms3[i][j] += ms1[i][k] * ms2[k][j];
            }
        }
    
    return 0;
}


int ComplexDataHandle(void)
{
    int res = ManiplateData1();
    res = ManiplateData2();

     return 0;
}

int ManiplateData1(void)
{
    ms1[1][1] = 20;
    int temp = ms1[1][1];
    ms1[1][1] = 30;
    temp = ms1[1][1];
    temp = ms1[1][1];
    ms1[2][1] = 50;
    ms1[2][1] = 60;
    ms1[2][1] = 70;
    temp = ms1[2][1];
    temp = ms1[2][1];
    ms1[2][1] = 99;
    temp = ms1[2][1];

    ms1[1][2] = 40;
    temp = ms1[1][1];
    ms1[1][2] = 30;
    temp = ms1[1][2];
    temp = ms1[1][2];
    ms1[1][2] = 50;
    
    return 0;
}

int ManiplateData2(void)
{
    ms2[1][1] = 20;
    int temp = ms2[1][1];
    ms2[1][1] = 30;
    temp = ms2[1][1];
    temp = ms2[1][1];
    ms2[2][1] = 50;
    ms2[2][1] = 60;
    ms2[2][1] = 70;
    temp = ms2[2][1];
    temp = ms2[2][1];
    ms2[2][1] = 99;
    temp = ms2[2][1];

    ms2[1][2] = 40;
    temp = ms2[1][2];
    ms2[1][2] = 30;
    temp = ms2[1][2];
    temp = ms2[1][2];
    ms2[1][2] = 50;
    
    return 0;
}
