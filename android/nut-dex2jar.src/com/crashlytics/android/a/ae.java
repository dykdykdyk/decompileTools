package com.crashlytics.android.a;

final class ae
{
  public final String a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final Boolean f;
  public final String g;
  public final String h;
  public final String i;
  public final String j;
  public final String k;
  public final String l;
  private String m;

  public ae(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, Boolean paramBoolean, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramString4;
    this.e = paramString5;
    this.f = paramBoolean;
    this.g = paramString6;
    this.h = paramString7;
    this.i = paramString8;
    this.j = paramString9;
    this.k = paramString10;
    this.l = paramString11;
  }

  public final String toString()
  {
    if (this.m == null)
      this.m = ("appBundleId=" + this.a + ", executionId=" + this.b + ", installationId=" + this.c + ", androidId=" + this.d + ", advertisingId=" + this.e + ", limitAdTrackingEnabled=" + this.f + ", betaDeviceToken=" + this.g + ", buildId=" + this.h + ", osVersion=" + this.i + ", deviceModel=" + this.j + ", appVersionCode=" + this.k + ", appVersionName=" + this.l);
    return this.m;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a.ae
 * JD-Core Version:    0.6.2
 */