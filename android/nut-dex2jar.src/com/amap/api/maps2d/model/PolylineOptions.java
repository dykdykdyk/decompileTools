package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class PolylineOptions
  implements Parcelable
{
  public static final i CREATOR = new i();
  String a;
  private final List<LatLng> b = new ArrayList();
  private float c = 10.0F;
  private int d = -16777216;
  private float e = 0.0F;
  private boolean f = true;
  private boolean g = false;
  private boolean h = false;

  public final PolylineOptions add(LatLng paramLatLng)
  {
    this.b.add(paramLatLng);
    return this;
  }

  public final PolylineOptions add(LatLng[] paramArrayOfLatLng)
  {
    this.b.addAll(Arrays.asList(paramArrayOfLatLng));
    return this;
  }

  public final PolylineOptions addAll(Iterable<LatLng> paramIterable)
  {
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      LatLng localLatLng = (LatLng)paramIterable.next();
      this.b.add(localLatLng);
    }
    return this;
  }

  public final PolylineOptions color(int paramInt)
  {
    this.d = paramInt;
    return this;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final PolylineOptions geodesic(boolean paramBoolean)
  {
    this.g = paramBoolean;
    return this;
  }

  public final int getColor()
  {
    return this.d;
  }

  public final List<LatLng> getPoints()
  {
    return this.b;
  }

  public final float getWidth()
  {
    return this.c;
  }

  public final float getZIndex()
  {
    return this.e;
  }

  public final boolean isDottedLine()
  {
    return this.h;
  }

  public final boolean isGeodesic()
  {
    return this.g;
  }

  public final boolean isVisible()
  {
    return this.f;
  }

  public final PolylineOptions setDottedLine(boolean paramBoolean)
  {
    this.h = paramBoolean;
    return this;
  }

  public final PolylineOptions visible(boolean paramBoolean)
  {
    this.f = paramBoolean;
    return this;
  }

  public final PolylineOptions width(float paramFloat)
  {
    this.c = paramFloat;
    return this;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeTypedList(getPoints());
    paramParcel.writeFloat(getWidth());
    paramParcel.writeInt(getColor());
    paramParcel.writeFloat(getZIndex());
    if (isVisible())
    {
      paramInt = 1;
      paramParcel.writeByte((byte)paramInt);
      paramParcel.writeString(this.a);
      if (!isGeodesic())
        break label93;
      paramInt = 1;
      label66: paramParcel.writeByte((byte)paramInt);
      if (!isDottedLine())
        break label98;
    }
    label93: label98: for (paramInt = i; ; paramInt = 0)
    {
      paramParcel.writeByte((byte)paramInt);
      return;
      paramInt = 0;
      break;
      paramInt = 0;
      break label66;
    }
  }

  public final PolylineOptions zIndex(float paramFloat)
  {
    this.e = paramFloat;
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.PolylineOptions
 * JD-Core Version:    0.6.2
 */