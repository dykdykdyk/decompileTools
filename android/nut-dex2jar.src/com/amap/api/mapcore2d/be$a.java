package com.amap.api.mapcore2d;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import com.amap.api.maps2d.model.LatLng;

public class be$a extends ViewGroup.LayoutParams
{
  public int a = 1;
  public LatLng b = null;
  public int c = 0;
  public int d = 0;
  public int e = 51;

  public be$a(int paramInt1, int paramInt2, LatLng paramLatLng, int paramInt3, int paramInt4, int paramInt5)
  {
    super(paramInt1, paramInt2);
    this.a = 0;
    this.b = paramLatLng;
    this.c = paramInt3;
    this.d = paramInt4;
    this.e = paramInt5;
  }

  public be$a(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public be$a(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.be.a
 * JD-Core Version:    0.6.2
 */