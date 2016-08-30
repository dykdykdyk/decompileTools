package com.nut.blehunter.qrcode;

import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;

final class l extends AsyncTask<Object, Object, Object>
{
  private l(k paramk)
  {
  }

  protected final Object doInBackground(Object[] paramArrayOfObject)
  {
    try
    {
      Thread.sleep(300000L);
      Log.i(k.e(), "Finishing activity due to inactivity");
      k.b(this.a).finish();
      label25: return null;
    }
    catch (InterruptedException paramArrayOfObject)
    {
      break label25;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.l
 * JD-Core Version:    0.6.2
 */