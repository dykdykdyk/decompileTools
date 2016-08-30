package com.loc;

import android.os.Handler;
import android.os.Message;

final class cy extends Handler
{
  cy(cx paramcx)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    try
    {
      switch (paramMessage.what)
      {
      case 1:
        if (ce.c(this.a.a) != null)
        {
          ce.c(this.a.a).a((String)paramMessage.obj);
          return;
        }
        break;
      case 0:
      }
    }
    catch (Exception paramMessage)
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.cy
 * JD-Core Version:    0.6.2
 */