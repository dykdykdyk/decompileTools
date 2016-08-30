package com.amap.api.mapcore2d;

import android.graphics.PointF;

class cc
  implements Cloneable
{
  public int a = 0;
  public final int b;
  public final int c;
  public final int d;
  public final int e;
  public PointF f;
  public int g = -1;
  public boolean h = false;

  public cc(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.b = paramInt1;
    this.c = paramInt2;
    this.d = paramInt3;
    this.e = paramInt4;
  }

  public cc(cc paramcc)
  {
    this.b = paramcc.b;
    this.c = paramcc.c;
    this.d = paramcc.d;
    this.e = paramcc.e;
    this.f = paramcc.f;
    this.a = paramcc.a;
  }

  public cc a()
  {
    return new cc(this);
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      return true;
      if (!(paramObject instanceof cc))
        return false;
      paramObject = (cc)paramObject;
    }
    while ((this.b == paramObject.b) && (this.c == paramObject.c) && (this.d == paramObject.d) && (this.e == paramObject.e));
    return false;
  }

  public int hashCode()
  {
    return this.b * 7 + this.c * 11 + this.d * 13 + this.e;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.b);
    localStringBuilder.append("-");
    localStringBuilder.append(this.c);
    localStringBuilder.append("-");
    localStringBuilder.append(this.d);
    localStringBuilder.append("-");
    localStringBuilder.append(this.e);
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.cc
 * JD-Core Version:    0.6.2
 */