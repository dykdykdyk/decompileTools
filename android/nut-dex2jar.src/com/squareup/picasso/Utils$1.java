package com.squareup.picasso;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class Utils$1 extends Handler
{
  Utils$1(Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    sendMessageDelayed(obtainMessage(), 1000L);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.Utils.1
 * JD-Core Version:    0.6.2
 */