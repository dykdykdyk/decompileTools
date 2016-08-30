package com.amap.api.mapcore2d;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Point;
import android.view.View;
import java.io.IOException;
import java.io.InputStream;

class cp extends View
{
  private Bitmap a;
  private Bitmap b;
  private Paint c = new Paint();
  private boolean d = false;
  private int e = 0;
  private b f;
  private int g = 0;
  private int h = 10;

  public cp(Context paramContext, b paramb)
  {
    super(paramContext);
    this.f = paramb;
    paramb = paramContext.getResources().getAssets();
    try
    {
      if (v.e == v.a.b)
      {
        paramContext = paramb.open("apl2d.data");
        this.a = BitmapFactory.decodeStream(paramContext);
        this.a = cz.a(this.a, v.a);
        paramContext.close();
        if (v.e != v.a.b)
          break label183;
      }
      label183: for (paramContext = paramb.open("apl12d.data"); ; paramContext = paramb.open("ap12d.data"))
      {
        this.b = BitmapFactory.decodeStream(paramContext);
        this.b = cz.a(this.b, v.a);
        paramContext.close();
        this.e = this.b.getHeight();
        this.c.setAntiAlias(true);
        this.c.setColor(-16777216);
        this.c.setStyle(Paint.Style.STROKE);
        return;
        paramContext = paramb.open("ap2d.data");
        break;
      }
    }
    catch (IOException paramContext)
    {
      while (true)
        cz.a(paramContext, "WaterMarkerView", "WaterMarkerView");
    }
  }

  public void a()
  {
    try
    {
      if (this.a != null)
        this.a.recycle();
      if (this.b != null)
        this.b.recycle();
      this.a = null;
      this.b = null;
      this.c = null;
      return;
    }
    catch (Exception localException)
    {
      cz.a(localException, "WaterMarkerView", "destory");
    }
  }

  public void a(int paramInt)
  {
    this.g = paramInt;
  }

  public void a(boolean paramBoolean)
  {
    this.d = paramBoolean;
    invalidate();
  }

  public Bitmap b()
  {
    if (this.d)
      return this.b;
    return this.a;
  }

  public Point c()
  {
    return new Point(this.h, getHeight() - this.e - 10);
  }

  public void onDraw(Canvas paramCanvas)
  {
    if (this.b == null)
      return;
    int i = this.b.getWidth() + 3;
    if (this.g == 1)
      this.h = ((this.f.getWidth() - i) / 2);
    while (v.e == v.a.b)
    {
      paramCanvas.drawBitmap(b(), this.h + 15, getHeight() - this.e - 8, this.c);
      return;
      if (this.g == 2)
        this.h = (this.f.getWidth() - i - 10);
      else
        this.h = 10;
    }
    paramCanvas.drawBitmap(b(), this.h, getHeight() - this.e - 8, this.c);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.cp
 * JD-Core Version:    0.6.2
 */