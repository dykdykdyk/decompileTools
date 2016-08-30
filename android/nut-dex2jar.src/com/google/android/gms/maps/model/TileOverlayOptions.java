package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.a.y;
import com.google.android.gms.maps.model.a.z;

public final class TileOverlayOptions
  implements SafeParcelable
{
  public static final x CREATOR = new x();
  final int a;
  y b;
  boolean c = true;
  float d;
  boolean e = true;
  private i f;

  public TileOverlayOptions()
  {
    this.a = 1;
  }

  TileOverlayOptions(int paramInt, IBinder paramIBinder, boolean paramBoolean1, float paramFloat, boolean paramBoolean2)
  {
    this.a = paramInt;
    this.b = z.a(paramIBinder);
    if (this.b == null);
    for (paramIBinder = null; ; paramIBinder = new h(this))
    {
      this.f = paramIBinder;
      this.c = paramBoolean1;
      this.d = paramFloat;
      this.e = paramBoolean2;
      return;
    }
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    x.a(this, paramParcel);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.TileOverlayOptions
 * JD-Core Version:    0.6.2
 */