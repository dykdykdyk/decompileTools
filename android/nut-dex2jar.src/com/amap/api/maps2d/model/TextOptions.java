package com.amap.api.maps2d.model;

import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

public class TextOptions
  implements Parcelable
{
  public static final TextOptionsCreator CREATOR = new TextOptionsCreator();
  private String a;
  private Typeface b = Typeface.DEFAULT;
  private boolean c = true;
  private float d;
  private LatLng e;
  private float f = 0.0F;
  private int g = 0;
  private Object h;
  private int i = -16777216;
  private int j = 20;
  private int k = 3;
  private int l = 6;

  public TextOptions align(int paramInt1, int paramInt2)
  {
    this.k = paramInt1;
    this.l = paramInt2;
    return this;
  }

  public TextOptions backgroundColor(int paramInt)
  {
    this.g = paramInt;
    return this;
  }

  public int describeContents()
  {
    return 0;
  }

  public TextOptions fontColor(int paramInt)
  {
    this.i = paramInt;
    return this;
  }

  public TextOptions fontSize(int paramInt)
  {
    this.j = paramInt;
    return this;
  }

  public int getAlignX()
  {
    return this.k;
  }

  public int getAlignY()
  {
    return this.l;
  }

  public int getBackgroundColor()
  {
    return this.g;
  }

  public int getFontColor()
  {
    return this.i;
  }

  public int getFontSize()
  {
    return this.j;
  }

  public Object getObject()
  {
    return this.h;
  }

  public LatLng getPosition()
  {
    return this.e;
  }

  public float getRotate()
  {
    return this.f;
  }

  public String getText()
  {
    return this.a;
  }

  public Typeface getTypeface()
  {
    return this.b;
  }

  public float getZIndex()
  {
    return this.d;
  }

  public boolean isVisible()
  {
    return this.c;
  }

  public TextOptions position(LatLng paramLatLng)
  {
    this.e = paramLatLng;
    return this;
  }

  public TextOptions rotate(float paramFloat)
  {
    this.f = paramFloat;
    return this;
  }

  public TextOptions setObject(Object paramObject)
  {
    this.h = paramObject;
    return this;
  }

  public TextOptions text(String paramString)
  {
    this.a = paramString;
    return this;
  }

  public TextOptions typeface(Typeface paramTypeface)
  {
    this.b = paramTypeface;
    return this;
  }

  public TextOptions visible(boolean paramBoolean)
  {
    this.c = paramBoolean;
    return this;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Bundle localBundle = new Bundle();
    if (this.e != null)
    {
      localBundle.putDouble("lat", this.e.latitude);
      localBundle.putDouble("lng", this.e.longitude);
    }
    paramParcel.writeBundle(localBundle);
    paramParcel.writeString(this.a);
    paramParcel.writeInt(this.b.getStyle());
    paramParcel.writeFloat(this.f);
    paramParcel.writeInt(this.k);
    paramParcel.writeInt(this.l);
    paramParcel.writeInt(this.g);
    paramParcel.writeInt(this.i);
    paramParcel.writeInt(this.j);
    paramParcel.writeFloat(this.d);
    if (this.c);
    for (paramInt = 1; ; paramInt = 0)
    {
      paramParcel.writeByte((byte)paramInt);
      if ((this.h instanceof Parcelable))
      {
        localBundle = new Bundle();
        localBundle.putParcelable("obj", (Parcelable)this.h);
        paramParcel.writeBundle(localBundle);
      }
      return;
    }
  }

  public TextOptions zIndex(float paramFloat)
  {
    this.d = paramFloat;
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.TextOptions
 * JD-Core Version:    0.6.2
 */