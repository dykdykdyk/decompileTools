package com.amap.api.location;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Messenger;
import android.text.TextUtils;
import com.loc.dd;
import com.loc.dp;
import com.loc.dz;
import com.loc.k;

public class APSService extends Service
{
  Messenger a;
  APSServiceBase b;

  public IBinder onBind(Intent paramIntent)
  {
    try
    {
      paramIntent = paramIntent.getStringExtra("apiKey");
      if (!TextUtils.isEmpty(paramIntent))
        dz.a(paramIntent);
      this.a = new Messenger(this.b.getHandler());
      paramIntent = this.a.getBinder();
      return paramIntent;
    }
    catch (Throwable paramIntent)
    {
      paramIntent.printStackTrace();
    }
    return null;
  }

  public void onCreate()
  {
    onCreate(this);
  }

  public void onCreate(Context paramContext)
  {
    try
    {
      this.b = ((APSServiceBase)k.a(paramContext, dp.a("2.3.0"), "com.amap.api.location.APSServiceWrapper", dd.class, new Class[] { Context.class }, new Object[] { paramContext }));
      this.b.onCreate();
      super.onCreate();
      return;
    }
    catch (Throwable paramContext)
    {
      while (true)
      {
        paramContext.printStackTrace();
        this.b = new dd(this);
      }
    }
  }

  public void onDestroy()
  {
    try
    {
      this.b.onDestroy();
      super.onDestroy();
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        localThrowable.printStackTrace();
    }
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    try
    {
      int i = this.b.onStartCommand(paramIntent, paramInt1, paramInt2);
      return i;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return super.onStartCommand(paramIntent, paramInt1, paramInt2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.location.APSService
 * JD-Core Version:    0.6.2
 */