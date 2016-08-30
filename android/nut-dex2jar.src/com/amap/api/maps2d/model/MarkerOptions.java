package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

public final class MarkerOptions
  implements Parcelable
{
  public static final g CREATOR = new g();
  String a;
  private LatLng b;
  private String c;
  private String d;
  private float e = 0.5F;
  private float f = 1.0F;
  private boolean g = false;
  private boolean h = true;
  private boolean i = false;
  private float j;
  private ArrayList<BitmapDescriptor> k = new ArrayList();
  private int l = 20;

  private void a()
  {
    if (this.k == null)
      this.k = new ArrayList();
  }

  public final MarkerOptions anchor(float paramFloat1, float paramFloat2)
  {
    this.e = paramFloat1;
    this.f = paramFloat2;
    return this;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final MarkerOptions draggable(boolean paramBoolean)
  {
    this.g = paramBoolean;
    return this;
  }

  public final float getAnchorU()
  {
    return this.e;
  }

  public final float getAnchorV()
  {
    return this.f;
  }

  public final BitmapDescriptor getIcon()
  {
    if ((this.k != null) && (this.k.size() != 0))
      return (BitmapDescriptor)this.k.get(0);
    return null;
  }

  public final ArrayList<BitmapDescriptor> getIcons()
  {
    return this.k;
  }

  public final int getPeriod()
  {
    return this.l;
  }

  public final LatLng getPosition()
  {
    return this.b;
  }

  public final String getSnippet()
  {
    return this.d;
  }

  public final String getTitle()
  {
    return this.c;
  }

  public final float getZIndex()
  {
    return this.j;
  }

  public final MarkerOptions icon(BitmapDescriptor paramBitmapDescriptor)
  {
    a();
    this.k.clear();
    this.k.add(paramBitmapDescriptor);
    return this;
  }

  public final MarkerOptions icons(ArrayList<BitmapDescriptor> paramArrayList)
  {
    this.k = paramArrayList;
    return this;
  }

  public final boolean isDraggable()
  {
    return this.g;
  }

  public final boolean isGps()
  {
    return this.i;
  }

  public final boolean isVisible()
  {
    return this.h;
  }

  public final MarkerOptions period(int paramInt)
  {
    if (paramInt <= 1)
    {
      this.l = 1;
      return this;
    }
    this.l = paramInt;
    return this;
  }

  public final MarkerOptions position(LatLng paramLatLng)
  {
    this.b = paramLatLng;
    return this;
  }

  public final MarkerOptions setGps(boolean paramBoolean)
  {
    this.i = paramBoolean;
    return this;
  }

  public final MarkerOptions snippet(String paramString)
  {
    this.d = paramString;
    return this;
  }

  public final MarkerOptions title(String paramString)
  {
    this.c = paramString;
    return this;
  }

  public final MarkerOptions visible(boolean paramBoolean)
  {
    this.h = paramBoolean;
    return this;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int m = 1;
    paramParcel.writeParcelable(this.b, paramInt);
    if ((this.k != null) && (this.k.size() != 0))
      paramParcel.writeParcelable((Parcelable)this.k.get(0), paramInt);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeFloat(this.e);
    paramParcel.writeFloat(this.f);
    if (this.h)
    {
      paramInt = 1;
      paramParcel.writeByte((byte)paramInt);
      if (!this.g)
        break label151;
      paramInt = 1;
      label100: paramParcel.writeByte((byte)paramInt);
      if (!this.i)
        break label156;
    }
    label151: label156: for (paramInt = m; ; paramInt = 0)
    {
      paramParcel.writeByte((byte)paramInt);
      paramParcel.writeString(this.a);
      paramParcel.writeFloat(this.j);
      paramParcel.writeList(this.k);
      return;
      paramInt = 0;
      break;
      paramInt = 0;
      break label100;
    }
  }

  public final MarkerOptions zIndex(float paramFloat)
  {
    this.j = paramFloat;
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.MarkerOptions
 * JD-Core Version:    0.6.2
 */