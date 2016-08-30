package com.amap.api.location;

import com.loc.dp;

public class AMapLocationClientOption
  implements Cloneable
{
  private long a = 2000L;
  private long b = dp.j;
  private boolean c = false;
  private boolean d = false;
  private boolean e = true;
  private boolean f = true;
  private AMapLocationClientOption.AMapLocationMode g = AMapLocationClientOption.AMapLocationMode.Hight_Accuracy;
  private boolean h = false;
  private boolean i = false;
  private boolean j = true;

  private AMapLocationClientOption a(AMapLocationClientOption paramAMapLocationClientOption)
  {
    this.a = paramAMapLocationClientOption.a;
    this.c = paramAMapLocationClientOption.c;
    this.g = paramAMapLocationClientOption.g;
    this.d = paramAMapLocationClientOption.d;
    this.h = paramAMapLocationClientOption.h;
    this.i = paramAMapLocationClientOption.i;
    this.e = paramAMapLocationClientOption.e;
    this.f = paramAMapLocationClientOption.f;
    this.b = paramAMapLocationClientOption.b;
    return this;
  }

  public AMapLocationClientOption clone()
  {
    return new AMapLocationClientOption().a(this);
  }

  public long getHttpTimeOut()
  {
    return this.b;
  }

  public long getInterval()
  {
    return this.a;
  }

  public AMapLocationClientOption.AMapLocationMode getLocationMode()
  {
    return this.g;
  }

  public boolean isGpsFirst()
  {
    return this.i;
  }

  public boolean isKillProcess()
  {
    return this.h;
  }

  public boolean isMockEnable()
  {
    return this.d;
  }

  public boolean isNeedAddress()
  {
    return this.e;
  }

  public boolean isOffset()
  {
    return this.j;
  }

  public boolean isOnceLocation()
  {
    return this.c;
  }

  public boolean isWifiActiveScan()
  {
    return this.f;
  }

  public AMapLocationClientOption setGpsFirst(boolean paramBoolean)
  {
    this.i = paramBoolean;
    return this;
  }

  public void setHttpTimeOut(long paramLong)
  {
    this.b = paramLong;
  }

  public AMapLocationClientOption setInterval(long paramLong)
  {
    long l = paramLong;
    if (paramLong < 1000L)
      l = 1000L;
    this.a = l;
    return this;
  }

  public AMapLocationClientOption setKillProcess(boolean paramBoolean)
  {
    this.h = paramBoolean;
    return this;
  }

  public AMapLocationClientOption setLocationMode(AMapLocationClientOption.AMapLocationMode paramAMapLocationMode)
  {
    this.g = paramAMapLocationMode;
    return this;
  }

  public void setMockEnable(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }

  public AMapLocationClientOption setNeedAddress(boolean paramBoolean)
  {
    this.e = paramBoolean;
    return this;
  }

  public AMapLocationClientOption setOffset(boolean paramBoolean)
  {
    this.j = paramBoolean;
    return this;
  }

  public AMapLocationClientOption setOnceLocation(boolean paramBoolean)
  {
    this.c = paramBoolean;
    return this;
  }

  public void setWifiActiveScan(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.location.AMapLocationClientOption
 * JD-Core Version:    0.6.2
 */