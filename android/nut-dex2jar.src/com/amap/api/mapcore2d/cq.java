package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import android.widget.LinearLayout;

class cq extends LinearLayout
{
  private Bitmap a;
  private Bitmap b;
  private Bitmap c;
  private Bitmap d;
  private Bitmap e;
  private Bitmap f;
  private ImageView g;
  private ImageView h;
  private ay i;
  private ad j;
  private int k = 0;

  public cq(Context paramContext, ay paramay, ad paramad)
  {
    super(paramContext);
    setWillNotDraw(false);
    this.i = paramay;
    this.j = paramad;
    try
    {
      this.a = cz.a("zoomin_selected2d.png");
      this.a = cz.a(this.a, v.a);
      this.b = cz.a("zoomin_unselected2d.png");
      this.b = cz.a(this.b, v.a);
      this.c = cz.a("zoomout_selected2d.png");
      this.c = cz.a(this.c, v.a);
      this.d = cz.a("zoomout_unselected2d.png");
      this.d = cz.a(this.d, v.a);
      this.e = cz.a("zoomin_pressed2d.png");
      this.f = cz.a("zoomout_pressed2d.png");
      this.e = cz.a(this.e, v.a);
      this.f = cz.a(this.f, v.a);
      this.g = new ImageView(paramContext);
      this.g.setImageBitmap(this.a);
      this.g.setOnClickListener(new cq.1(this));
      this.h = new ImageView(paramContext);
      this.h.setImageBitmap(this.c);
      this.h.setOnClickListener(new cq.2(this));
      this.g.setOnTouchListener(new cq.3(this));
      this.h.setOnTouchListener(new cq.4(this));
      this.g.setPadding(0, 0, 20, -2);
      this.h.setPadding(0, 0, 20, 20);
      setOrientation(1);
      addView(this.g);
      addView(this.h);
      return;
    }
    catch (Exception paramay)
    {
      while (true)
        cz.a(paramay, "ZoomControllerView", "ZoomControllerView");
    }
  }

  public void a()
  {
    try
    {
      this.a.recycle();
      this.b.recycle();
      this.c.recycle();
      this.d.recycle();
      this.e.recycle();
      this.f.recycle();
      this.a = null;
      this.b = null;
      this.c = null;
      this.d = null;
      this.e = null;
      this.f = null;
      return;
    }
    catch (Exception localException)
    {
      cz.a(localException, "ZoomControllerView", "destory");
    }
  }

  public void a(float paramFloat)
  {
    if ((paramFloat < this.j.g()) && (paramFloat > this.j.h()))
    {
      this.g.setImageBitmap(this.a);
      this.h.setImageBitmap(this.c);
    }
    do
    {
      return;
      if (paramFloat <= this.j.h())
      {
        this.h.setImageBitmap(this.d);
        this.g.setImageBitmap(this.a);
        return;
      }
    }
    while (paramFloat < this.j.g());
    this.g.setImageBitmap(this.b);
    this.h.setImageBitmap(this.c);
  }

  public void a(int paramInt)
  {
    this.k = paramInt;
    removeView(this.g);
    removeView(this.h);
    addView(this.g);
    addView(this.h);
  }

  public int b()
  {
    return this.k;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.cq
 * JD-Core Version:    0.6.2
 */