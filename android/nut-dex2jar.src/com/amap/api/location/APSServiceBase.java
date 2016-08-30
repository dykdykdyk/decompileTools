package com.amap.api.location;

import android.content.Intent;
import android.os.Handler;

public abstract interface APSServiceBase
{
  public static final int GPSFUSION = 4;
  public static final int INIT = 0;
  public static final int LOCATION = 1;
  public static final int OFFLOCFUSION = 5;
  public static final int STARTCOLL = 6;
  public static final int STARTSCOKET = 2;
  public static final int STOPSCOKET = 3;

  public abstract Handler getHandler();

  public abstract void onCreate();

  public abstract void onDestroy();

  public abstract int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.location.APSServiceBase
 * JD-Core Version:    0.6.2
 */