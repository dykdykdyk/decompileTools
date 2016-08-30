package com.amap.api.location;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.Message;
import com.amap.api.fence.Fence;
import com.loc.a;
import com.loc.dp;
import com.loc.k;

public class AMapLocationClient
  implements LocationManagerBase
{
  AMapLocationClient.a a;
  Context b;
  LocationManagerBase c;
  AMapLocationClientOption d;
  AMapLocationListener e;
  AMapLocationClient f;

  public AMapLocationClient(Context paramContext)
  {
    if (paramContext == null)
      try
      {
        throw new IllegalArgumentException("Context参数不能为null");
      }
      catch (Throwable paramContext)
      {
        paramContext.printStackTrace();
        return;
      }
    this.b = paramContext.getApplicationContext();
    this.f = new AMapLocationClient(this.b, null, true);
    if (Looper.myLooper() == null)
    {
      this.a = new AMapLocationClient.a(this.f, this.b.getMainLooper());
      return;
    }
    this.a = new AMapLocationClient.a(this.f);
  }

  public AMapLocationClient(Context paramContext, Intent paramIntent)
  {
    if (paramContext == null)
      try
      {
        throw new IllegalArgumentException("Context参数不能为null");
      }
      catch (Throwable paramContext)
      {
        paramContext.printStackTrace();
        return;
      }
    this.b = paramContext.getApplicationContext();
    this.f = new AMapLocationClient(this.b, paramIntent, true);
    if (Looper.myLooper() == null)
    {
      this.a = new AMapLocationClient.a(this.f, this.b.getMainLooper());
      return;
    }
    this.a = new AMapLocationClient.a(this.f);
  }

  private AMapLocationClient(Context paramContext, Intent paramIntent, boolean paramBoolean)
  {
    try
    {
      this.b = paramContext;
      this.c = ((LocationManagerBase)k.a(paramContext, dp.a("2.3.0"), "com.amap.api.location.LocationManagerWrapper", a.class, new Class[] { Context.class, Intent.class }, new Object[] { paramContext, paramIntent }));
      return;
    }
    catch (Throwable localThrowable)
    {
      this.c = new a(paramContext, paramIntent);
    }
  }

  public static void setApiKey(String paramString)
  {
    try
    {
      dp.a = paramString;
      return;
    }
    catch (Throwable paramString)
    {
      paramString.printStackTrace();
    }
  }

  public void addGeoFenceAlert(String paramString, double paramDouble1, double paramDouble2, float paramFloat, long paramLong, PendingIntent paramPendingIntent)
  {
    try
    {
      Message localMessage = Message.obtain();
      Fence localFence = new Fence();
      localFence.b = paramString;
      localFence.d = paramDouble1;
      localFence.c = paramDouble2;
      localFence.e = paramFloat;
      localFence.a = paramPendingIntent;
      localFence.f = paramLong;
      localMessage.obj = localFence;
      localMessage.arg1 = 6;
      this.a.sendMessage(localMessage);
      return;
    }
    catch (Throwable paramString)
    {
      paramString.printStackTrace();
    }
  }

  public AMapLocation getLastKnownLocation()
  {
    try
    {
      if ((this.f != null) && (this.f.c != null))
      {
        AMapLocation localAMapLocation = this.f.c.getLastKnownLocation();
        return localAMapLocation;
      }
    }
    catch (Throwable localThrowable)
    {
    }
    return null;
  }

  public String getVersion()
  {
    try
    {
      if (this.f != null)
      {
        String str = this.f.c.getVersion();
        return str;
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return null;
  }

  public boolean isStarted()
  {
    try
    {
      if (this.f != null)
      {
        boolean bool = this.f.c.isStarted();
        return bool;
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return false;
  }

  public void onDestroy()
  {
    try
    {
      Message localMessage = Message.obtain();
      localMessage.arg1 = 11;
      this.a.sendMessage(localMessage);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }

  public void removeGeoFenceAlert(PendingIntent paramPendingIntent)
  {
    try
    {
      Message localMessage = Message.obtain();
      localMessage.obj = paramPendingIntent;
      localMessage.arg1 = 7;
      this.a.sendMessage(localMessage);
      return;
    }
    catch (Throwable paramPendingIntent)
    {
      paramPendingIntent.printStackTrace();
    }
  }

  public void removeGeoFenceAlert(PendingIntent paramPendingIntent, String paramString)
  {
    try
    {
      Message localMessage = Message.obtain();
      Fence localFence = new Fence();
      localFence.b = paramString;
      localFence.a = paramPendingIntent;
      localMessage.obj = localFence;
      localMessage.arg1 = 10;
      this.a.sendMessage(localMessage);
      return;
    }
    catch (Throwable paramPendingIntent)
    {
      paramPendingIntent.printStackTrace();
    }
  }

  public void setLocationListener(AMapLocationListener paramAMapLocationListener)
  {
    if (paramAMapLocationListener == null)
      try
      {
        throw new IllegalArgumentException("listener参数不能为null");
      }
      catch (Throwable paramAMapLocationListener)
      {
        paramAMapLocationListener.printStackTrace();
        return;
      }
    Message localMessage = Message.obtain();
    localMessage.arg1 = 2;
    localMessage.obj = paramAMapLocationListener;
    this.a.sendMessage(localMessage);
  }

  public void setLocationOption(AMapLocationClientOption paramAMapLocationClientOption)
  {
    if (paramAMapLocationClientOption == null)
      try
      {
        throw new IllegalArgumentException("LocationManagerOption参数不能为null");
      }
      catch (Throwable paramAMapLocationClientOption)
      {
        paramAMapLocationClientOption.printStackTrace();
        return;
      }
    Message localMessage = Message.obtain();
    localMessage.arg1 = 1;
    localMessage.obj = paramAMapLocationClientOption;
    this.a.sendMessage(localMessage);
  }

  public void startAssistantLocation()
  {
    try
    {
      Message localMessage = Message.obtain();
      localMessage.arg1 = 8;
      this.a.sendMessage(localMessage);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }

  public void startLocation()
  {
    try
    {
      Message localMessage = Message.obtain();
      localMessage.arg1 = 3;
      this.a.sendMessage(localMessage);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }

  public void stopAssistantLocation()
  {
    try
    {
      Message localMessage = Message.obtain();
      localMessage.arg1 = 9;
      this.a.sendMessage(localMessage);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }

  public void stopLocation()
  {
    try
    {
      Message localMessage = Message.obtain();
      localMessage.arg1 = 4;
      this.a.sendMessage(localMessage);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }

  public void unRegisterLocationListener(AMapLocationListener paramAMapLocationListener)
  {
    try
    {
      Message localMessage = Message.obtain();
      localMessage.arg1 = 5;
      localMessage.obj = paramAMapLocationListener;
      this.a.sendMessage(localMessage);
      return;
    }
    catch (Throwable paramAMapLocationListener)
    {
      paramAMapLocationListener.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.location.AMapLocationClient
 * JD-Core Version:    0.6.2
 */