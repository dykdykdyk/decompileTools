package com.nut.blehunter.ui.widget;

import android.os.Handler;
import android.os.Message;

final class l extends Handler
{
  private l(SlidingDrawer paramSlidingDrawer)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 1000:
    }
    SlidingDrawer.c(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.widget.l
 * JD-Core Version:    0.6.2
 */