package com.nut.blehunter.qrcode.a;

import android.os.AsyncTask;

final class b extends AsyncTask<Object, Object, Object>
{
  private b(a parama)
  {
  }

  protected final Object doInBackground(Object[] paramArrayOfObject)
  {
    try
    {
      Thread.sleep(2000L);
      label6: this.a.a();
      return null;
    }
    catch (InterruptedException paramArrayOfObject)
    {
      break label6;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.a.b
 * JD-Core Version:    0.6.2
 */