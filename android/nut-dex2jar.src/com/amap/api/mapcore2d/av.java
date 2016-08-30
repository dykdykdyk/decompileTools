package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import android.widget.LinearLayout;

class av extends LinearLayout
{
  private Bitmap a;
  private Bitmap b;
  private Bitmap c;
  private ImageView d;
  private ad e;
  private boolean f = false;

  public av(Context paramContext, bb parambb, ad paramad)
  {
    super(paramContext);
    this.e = paramad;
    try
    {
      this.a = cz.a("location_selected2d.png");
      this.b = cz.a("location_pressed2d.png");
      this.a = cz.a(this.a, v.a);
      this.b = cz.a(this.b, v.a);
      this.c = cz.a("location_unselected2d.png");
      this.c = cz.a(this.c, v.a);
      this.d = new ImageView(paramContext);
      this.d.setImageBitmap(this.a);
      this.d.setPadding(0, 20, 20, 0);
      this.d.setOnClickListener(new av.1(this));
      this.d.setOnTouchListener(new av.2(this));
      addView(this.d);
      return;
    }
    catch (Exception parambb)
    {
      while (true)
        cz.a(parambb, "LocationView", "LocationView");
    }
  }

  public void a()
  {
    try
    {
      this.a.recycle();
      this.b.recycle();
      this.c.recycle();
      this.a = null;
      this.b = null;
      this.c = null;
      return;
    }
    catch (Exception localException)
    {
      cz.a(localException, "LocationView", "destory");
    }
  }

  public void a(boolean paramBoolean)
  {
    this.f = paramBoolean;
    if (paramBoolean)
      this.d.setImageBitmap(this.a);
    while (true)
    {
      this.d.invalidate();
      return;
      this.d.setImageBitmap(this.c);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.av
 * JD-Core Version:    0.6.2
 */