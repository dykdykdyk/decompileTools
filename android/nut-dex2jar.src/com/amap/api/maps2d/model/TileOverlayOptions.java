package com.amap.api.maps2d.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

public final class TileOverlayOptions
  implements Parcelable
{
  public static final k CREATOR = new k();
  private final int a;
  private TileProvider b;
  private boolean c = true;
  private float d;
  private int e = 5120;
  private int f = 20480;
  private String g = null;
  private boolean h = true;
  private boolean i = true;

  public TileOverlayOptions()
  {
    this.a = 1;
  }

  TileOverlayOptions(int paramInt, IBinder paramIBinder, boolean paramBoolean, float paramFloat)
  {
    this.a = paramInt;
    this.c = paramBoolean;
    this.d = paramFloat;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final TileOverlayOptions diskCacheDir(String paramString)
  {
    this.g = paramString;
    return this;
  }

  public final TileOverlayOptions diskCacheEnabled(boolean paramBoolean)
  {
    this.i = paramBoolean;
    return this;
  }

  public final TileOverlayOptions diskCacheSize(int paramInt)
  {
    this.f = (paramInt * 1024);
    return this;
  }

  public final String getDiskCacheDir()
  {
    return this.g;
  }

  public final boolean getDiskCacheEnabled()
  {
    return this.i;
  }

  public final int getDiskCacheSize()
  {
    return this.f;
  }

  public final int getMemCacheSize()
  {
    return this.e;
  }

  public final boolean getMemoryCacheEnabled()
  {
    return this.h;
  }

  public final TileProvider getTileProvider()
  {
    return this.b;
  }

  public final float getZIndex()
  {
    return this.d;
  }

  public final boolean isVisible()
  {
    return this.c;
  }

  public final TileOverlayOptions memCacheSize(int paramInt)
  {
    this.e = paramInt;
    return this;
  }

  public final TileOverlayOptions memoryCacheEnabled(boolean paramBoolean)
  {
    this.h = paramBoolean;
    return this;
  }

  public final TileOverlayOptions tileProvider(TileProvider paramTileProvider)
  {
    this.b = paramTileProvider;
    return this;
  }

  public final TileOverlayOptions visible(boolean paramBoolean)
  {
    this.c = paramBoolean;
    return this;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int j = 1;
    paramParcel.writeInt(this.a);
    paramParcel.writeValue(this.b);
    if (this.c)
    {
      paramInt = 1;
      paramParcel.writeByte((byte)paramInt);
      paramParcel.writeFloat(this.d);
      paramParcel.writeInt(this.e);
      paramParcel.writeInt(this.f);
      paramParcel.writeString(this.g);
      if (!this.h)
        break label101;
      paramInt = 1;
      label74: paramParcel.writeByte((byte)paramInt);
      if (!this.i)
        break label106;
    }
    label101: label106: for (paramInt = j; ; paramInt = 0)
    {
      paramParcel.writeByte((byte)paramInt);
      return;
      paramInt = 0;
      break;
      paramInt = 0;
      break label74;
    }
  }

  public final TileOverlayOptions zIndex(float paramFloat)
  {
    this.d = paramFloat;
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.TileOverlayOptions
 * JD-Core Version:    0.6.2
 */