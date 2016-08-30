package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;

class u extends LinearLayout
{
  private Bitmap a;
  private Bitmap b;
  private ImageView c;
  private bb d;
  private ad e;

  public u(Context paramContext, bb parambb, ad paramad)
  {
    super(paramContext);
    this.d = parambb;
    this.e = paramad;
    try
    {
      parambb = cz.a("maps_dav_compass_needle_large2d.png");
      this.b = cz.a(parambb, v.a * 0.8F);
      parambb = cz.a(parambb, v.a * 0.7F);
      this.a = Bitmap.createBitmap(this.b.getWidth(), this.b.getHeight(), Bitmap.Config.ARGB_8888);
      paramad = new Canvas(this.a);
      Paint localPaint = new Paint();
      localPaint.setAntiAlias(true);
      localPaint.setFilterBitmap(true);
      paramad.drawBitmap(parambb, (this.b.getWidth() - parambb.getWidth()) / 2, (this.b.getHeight() - parambb.getHeight()) / 2, localPaint);
      this.c = new ImageView(paramContext);
      this.c.setScaleType(ImageView.ScaleType.MATRIX);
      this.c.setImageBitmap(this.a);
      this.c.setOnClickListener(new u.1(this));
      this.c.setOnTouchListener(new u.2(this));
      addView(this.c);
      return;
    }
    catch (Exception parambb)
    {
      while (true)
        cz.a(parambb, "CompassView", "CompassView");
    }
  }

  public void a()
  {
    try
    {
      this.a.recycle();
      this.b.recycle();
      this.a = null;
      this.b = null;
      return;
    }
    catch (Exception localException)
    {
      cz.a(localException, "CompassView", "destory");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.u
 * JD-Core Version:    0.6.2
 */