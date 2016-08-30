package com.sina.weibo.sdk.d;

import android.app.PendingIntent;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.support.v4.app.bl;

public final class n
{
  public String a;
  public String b;
  public String c;
  public PendingIntent d;
  private long[] e;
  private Uri f;

  private static int a(Context paramContext, String paramString1, String paramString2)
  {
    String str = paramContext.getApplicationContext().getPackageName();
    paramContext = paramContext.getPackageManager();
    try
    {
      int i = paramContext.getResourcesForApplication(str).getIdentifier(paramString1, paramString2, str);
      return i;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return 0;
  }

  public final m a(Context paramContext)
  {
    bl localbl = new bl(paramContext);
    localbl.a();
    localbl.a(this.d);
    localbl.c(this.a);
    int i = a(paramContext, "com_sina_weibo_sdk_weibo_logo", "drawable");
    if (i > 0);
    while (true)
    {
      localbl.a(i);
      localbl.a(System.currentTimeMillis());
      if (this.f != null)
        localbl.a(this.f);
      if (this.e != null)
        localbl.a(this.e);
      localbl.a(((BitmapDrawable)l.a(paramContext, "weibosdk_notification_icon.png")).getBitmap());
      localbl.a(this.b);
      localbl.b(this.c);
      return new m(paramContext, localbl.b(), (byte)0);
      i = 17301659;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.d.n
 * JD-Core Version:    0.6.2
 */