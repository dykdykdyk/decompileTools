package com.amap.api.maps2d;

import android.content.Context;
import com.amap.api.mapcore2d.da;
import com.amap.api.mapcore2d.dc;
import com.amap.api.mapcore2d.di;
import com.amap.api.mapcore2d.di.a;

class AMapUtils$a extends Thread
{
  String a = "";
  Context b;

  public AMapUtils$a(String paramString, Context paramContext)
  {
    this.a = paramString;
    if (paramContext != null)
      this.b = paramContext.getApplicationContext();
  }

  public void run()
  {
    if (this.b != null);
    try
    {
      di localdi = new di.a(this.a, "2.8.0", "AMAP_SDK_Android_2DMap_2.8.0").a(new String[] { "com.amap.api.maps" }).a();
      dc.a(this.b, localdi);
      interrupt();
      return;
    }
    catch (da localda)
    {
      localda.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.AMapUtils.a
 * JD-Core Version:    0.6.2
 */