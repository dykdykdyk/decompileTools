package com.amap.api.location;

import android.app.PendingIntent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.amap.api.fence.Fence;

class AMapLocationClient$a extends Handler
{
  AMapLocationClient a = null;

  public AMapLocationClient$a(AMapLocationClient paramAMapLocationClient)
  {
    this.a = paramAMapLocationClient;
  }

  public AMapLocationClient$a(AMapLocationClient paramAMapLocationClient, Looper paramLooper)
  {
    super(paramLooper);
    this.a = paramAMapLocationClient;
  }

  public void handleMessage(Message paramMessage)
  {
    try
    {
      super.handleMessage(paramMessage);
      int i = paramMessage.arg1;
      switch (i)
      {
      default:
        return;
      case 1:
        try
        {
          this.a.d = ((AMapLocationClientOption)paramMessage.obj);
          this.a.c.setLocationOption(this.a.d);
          return;
        }
        catch (Throwable paramMessage)
        {
          return;
        }
      case 2:
        try
        {
          this.a.e = ((AMapLocationListener)paramMessage.obj);
          this.a.c.setLocationListener(this.a.e);
          return;
        }
        catch (Throwable paramMessage)
        {
          return;
        }
      case 5:
        try
        {
          this.a.e = ((AMapLocationListener)paramMessage.obj);
          this.a.c.unRegisterLocationListener(this.a.e);
          return;
        }
        catch (Throwable paramMessage)
        {
          return;
        }
      case 3:
        try
        {
          this.a.c.startLocation();
          return;
        }
        catch (Throwable paramMessage)
        {
          return;
        }
      case 4:
        try
        {
          this.a.c.stopLocation();
          return;
        }
        catch (Throwable paramMessage)
        {
          return;
        }
      case 6:
        try
        {
          paramMessage = (Fence)paramMessage.obj;
          this.a.c.addGeoFenceAlert(paramMessage.b, paramMessage.d, paramMessage.c, paramMessage.e, paramMessage.f, paramMessage.a);
          return;
        }
        catch (Throwable paramMessage)
        {
          return;
        }
      case 7:
        try
        {
          paramMessage = (PendingIntent)paramMessage.obj;
          this.a.c.removeGeoFenceAlert(paramMessage);
          return;
        }
        catch (Throwable paramMessage)
        {
          return;
        }
      case 10:
        try
        {
          paramMessage = (Fence)paramMessage.obj;
          this.a.c.removeGeoFenceAlert(paramMessage.a, paramMessage.b);
          return;
        }
        catch (Throwable paramMessage)
        {
          return;
        }
      case 8:
        try
        {
          this.a.c.startAssistantLocation();
          return;
        }
        catch (Throwable paramMessage)
        {
          return;
        }
      case 9:
        try
        {
          this.a.c.stopAssistantLocation();
          return;
        }
        catch (Throwable paramMessage)
        {
          return;
        }
      case 11:
      }
      try
      {
        this.a.c.onDestroy();
        this.a.c = null;
        this.a = null;
        return;
      }
      catch (Throwable paramMessage)
      {
      }
    }
    catch (Throwable paramMessage)
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.location.AMapLocationClient.a
 * JD-Core Version:    0.6.2
 */