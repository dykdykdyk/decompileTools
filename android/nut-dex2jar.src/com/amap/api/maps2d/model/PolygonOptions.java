package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class PolygonOptions
  implements Parcelable
{
  public static final h CREATOR = new h();
  String a;
  private final List<LatLng> b = new ArrayList();
  private float c = 10.0F;
  private int d = -16777216;
  private int e = -16777216;
  private float f = 0.0F;
  private boolean g = true;

  public final PolygonOptions add(LatLng paramLatLng)
  {
    this.b.add(paramLatLng);
    return this;
  }

  public final PolygonOptions add(LatLng[] paramArrayOfLatLng)
  {
    this.b.addAll(Arrays.asList(paramArrayOfLatLng));
    return this;
  }

  public final PolygonOptions addAll(Iterable<LatLng> paramIterable)
  {
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      LatLng localLatLng = (LatLng)paramIterable.next();
      this.b.add(localLatLng);
    }
    return this;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final PolygonOptions fillColor(int paramInt)
  {
    this.e = paramInt;
    return this;
  }

  public final int getFillColor()
  {
    return this.e;
  }

  public final List<LatLng> getPoints()
  {
    return this.b;
  }

  public final int getStrokeColor()
  {
    return this.d;
  }

  public final float getStrokeWidth()
  {
    return this.c;
  }

  public final float getZIndex()
  {
    return this.f;
  }

  public final boolean isVisible()
  {
    return this.g;
  }

  public final PolygonOptions strokeColor(int paramInt)
  {
    this.d = paramInt;
    return this;
  }

  public final PolygonOptions strokeWidth(float paramFloat)
  {
    this.c = paramFloat;
    return this;
  }

  public final PolygonOptions visible(boolean paramBoolean)
  {
    this.g = paramBoolean;
    return this;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(this.b);
    paramParcel.writeFloat(this.c);
    paramParcel.writeInt(this.d);
    paramParcel.writeInt(this.e);
    paramParcel.writeFloat(this.f);
    if (this.g);
    for (paramInt = 0; ; paramInt = 1)
    {
      paramParcel.writeByte((byte)paramInt);
      paramParcel.writeString(this.a);
      return;
    }
  }

  public final PolygonOptions zIndex(float paramFloat)
  {
    this.f = paramFloat;
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.PolygonOptions
 * JD-Core Version:    0.6.2
 */