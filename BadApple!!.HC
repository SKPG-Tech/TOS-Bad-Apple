//36x28
#include "C:/Home/TOS_Bad_Apple!!/Data.HC.Z"


//----------You can edit these variables---------------

#define InvertColors   FALSE
#define PrintDebugInfo FALSE

//----------You can edit these variables---------------


I64 x1,y1,x2,y2,f,frame_i,add;
CDC *dc;

U0 DrawIt()
{
  if (y2 == 493) {
    Sleep(50);
    x1=0,y1=0,x2=18,y2=17;
    f++;
  } 
  frame_i++;
  if (!InvertColors) {
    if (data[frame_i] == 1) { 
      dc->color=&15;
    } else {
      dc->color=&0;
    }
  } else {
    if (data[frame_i] == 1) { 
      dc->color=&0;
    } else {
      dc->color=&15;
    }
  }
  if (PrintDebugInfo) {
    "frame_i: %d\nx1: %d y1: %d x2: %d y2: %d\n\n", frame_i, x1, y1, x2, y2;
  }
  GrRectB(dc,x1,y1,x2,y2);
  Sleep(0);
  if (x2 == 648) {
    y1 = y1 + 17;
    y2 = y2 + 17;
    x1 = -18;
    x2 = 0;
    if (frame_i > 16) {
      frame_i+=add; 
    }
  }
  x1 = x1 + 18;
  x2 = x2 + 18;
}

U0 BadApple()
{
  x1=0,y1=0,x2=18,y2=17,f=0,frame_i=-1,add=0;
  dc=DCAlias;
  WinMax;
  WinBorder;
  WinZBufUpdate();
  SettingsPush();
  while (!ScanKey&&f!=5000) {
    DrawIt;
  }
  SettingsPop;
  WinBorder;
  DCFill(dc);
  DCDel(dc);
}