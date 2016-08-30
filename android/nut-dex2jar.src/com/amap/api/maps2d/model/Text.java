package com.amap.api.maps2d.model;

import android.graphics.Typeface;
import com.amap.api.mapcore2d.ap;

public final class Text
{
  public static final int ALIGN_BOTTOM = 5;
  public static final int ALIGN_CENTER_HORIZONTAL = 3;
  public static final int ALIGN_CENTER_VERTICAL = 6;
  public static final int ALIGN_LEFT = 1;
  public static final int ALIGN_RIGHT = 2;
  public static final int ALIGN_TOP = 4;
  private ap a;

  public Text(ap paramap)
  {
    this.a = paramap;
  }

  public final int getAlignX()
  {
    return this.a.g();
  }

  public final int getAlignY()
  {
    return this.a.h();
  }

  public final int getBackgroundColor()
  {
    return this.a.e();
  }

  public final int getFontColor()
  {
    return this.a.c();
  }

  public final int getFontSize()
  {
    return this.a.b();
  }

  public final Object getObject()
  {
    return this.a.u();
  }

  public final LatLng getPosition()
  {
    return this.a.t();
  }

  public final float getRotate()
  {
    return this.a.d();
  }

  public final String getText()
  {
    return this.a.a();
  }

  public final Typeface getTypeface()
  {
    return this.a.f();
  }

  public final float getZIndex()
  {
    return this.a.r();
  }

  public final void remove()
  {
    this.a.i();
  }

  public final void setAlign(int paramInt1, int paramInt2)
  {
    this.a.a(paramInt1, paramInt2);
  }

  public final void setBackgroundColor(int paramInt)
  {
    this.a.d(paramInt);
  }

  public final void setFontColor(int paramInt)
  {
    this.a.c(paramInt);
  }

  public final void setFontSize(int paramInt)
  {
    this.a.a(paramInt);
  }

  public final void setObject(Object paramObject)
  {
    this.a.a(paramObject);
  }

  public final void setPosition(LatLng paramLatLng)
  {
    this.a.b(paramLatLng);
  }

  public final void setRotate(float paramFloat)
  {
    this.a.a(paramFloat);
  }

  public final void setText(String paramString)
  {
    this.a.a(paramString);
  }

  public final void setTypeface(Typeface paramTypeface)
  {
    this.a.a(paramTypeface);
  }

  public final void setZIndex(float paramFloat)
  {
    this.a.b(paramFloat);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.Text
 * JD-Core Version:    0.6.2
 */