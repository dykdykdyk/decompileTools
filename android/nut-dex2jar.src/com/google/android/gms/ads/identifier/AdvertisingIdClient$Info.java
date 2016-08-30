package com.google.android.gms.ads.identifier;

public final class AdvertisingIdClient$Info
{
  private final String zzpO;
  private final boolean zzpP;

  public AdvertisingIdClient$Info(String paramString, boolean paramBoolean)
  {
    this.zzpO = paramString;
    this.zzpP = paramBoolean;
  }

  public final String getId()
  {
    return this.zzpO;
  }

  public final boolean isLimitAdTrackingEnabled()
  {
    return this.zzpP;
  }

  public final String toString()
  {
    String str = this.zzpO;
    boolean bool = this.zzpP;
    return String.valueOf(str).length() + 7 + "{" + str + "}" + bool;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.ads.identifier.AdvertisingIdClient.Info
 * JD-Core Version:    0.6.2
 */