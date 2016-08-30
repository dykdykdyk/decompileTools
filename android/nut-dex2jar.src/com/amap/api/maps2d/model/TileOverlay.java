package com.amap.api.maps2d.model;

import com.amap.api.mapcore2d.aq;

public final class TileOverlay
{
  private aq a;

  public TileOverlay(aq paramaq)
  {
    this.a = paramaq;
  }

  public final void clearTileCache()
  {
    this.a.b();
  }

  public final boolean equals(Object paramObject)
  {
    return this.a.a(this.a);
  }

  public final String getId()
  {
    return this.a.c();
  }

  public final float getZIndex()
  {
    return this.a.d();
  }

  public final int hashCode()
  {
    return this.a.f();
  }

  public final boolean isVisible()
  {
    return this.a.e();
  }

  public final void remove()
  {
    this.a.a();
  }

  public final void setVisible(boolean paramBoolean)
  {
    this.a.a(paramBoolean);
  }

  public final void setZIndex(float paramFloat)
  {
    this.a.a(paramFloat);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.TileOverlay
 * JD-Core Version:    0.6.2
 */