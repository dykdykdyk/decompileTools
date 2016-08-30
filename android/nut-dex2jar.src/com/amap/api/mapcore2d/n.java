package com.amap.api.mapcore2d;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;

class n
{
  private Bitmap a = null;
  private Canvas b = null;
  private Bitmap.Config c;

  public n(Bitmap.Config paramConfig)
  {
    this.c = paramConfig;
  }

  public void a(Bitmap paramBitmap)
  {
    this.a = paramBitmap;
    this.b = new Canvas(this.a);
  }

  public void a(o paramo)
  {
    this.b.save(1);
    paramo.a(this.b);
    this.b.restore();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.n
 * JD-Core Version:    0.6.2
 */