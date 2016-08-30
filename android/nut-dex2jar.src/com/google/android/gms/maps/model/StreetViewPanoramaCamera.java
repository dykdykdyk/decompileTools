package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.bn;
import com.google.android.gms.common.internal.bo;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

public class StreetViewPanoramaCamera
  implements SafeParcelable
{
  public static final s CREATOR = new s();
  final int a;
  public final float b;
  public final float c;
  public final float d;
  private StreetViewPanoramaOrientation e;

  StreetViewPanoramaCamera(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    boolean bool;
    if ((-90.0F <= paramFloat2) && (paramFloat2 <= 90.0F))
    {
      bool = true;
      b.b(bool, "Tilt needs to be between -90 and 90 inclusive");
      this.a = paramInt;
      float f = paramFloat1;
      if (paramFloat1 <= 0.0D)
        f = 0.0F;
      this.b = f;
      this.c = (paramFloat2 + 0.0F);
      if (paramFloat3 > 0.0D)
        break label134;
    }
    label134: for (paramFloat1 = paramFloat3 % 360.0F + 360.0F; ; paramFloat1 = paramFloat3)
    {
      this.d = (paramFloat1 % 360.0F);
      g localg = new g();
      localg.b = paramFloat2;
      localg.a = paramFloat3;
      this.e = new StreetViewPanoramaOrientation(localg.b, localg.a);
      return;
      bool = false;
      break;
    }
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      return true;
      if (!(paramObject instanceof StreetViewPanoramaCamera))
        return false;
      paramObject = (StreetViewPanoramaCamera)paramObject;
    }
    while ((Float.floatToIntBits(this.b) == Float.floatToIntBits(paramObject.b)) && (Float.floatToIntBits(this.c) == Float.floatToIntBits(paramObject.c)) && (Float.floatToIntBits(this.d) == Float.floatToIntBits(paramObject.d)));
    return false;
  }

  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Float.valueOf(this.b), Float.valueOf(this.c), Float.valueOf(this.d) });
  }

  public String toString()
  {
    return bn.a(this).a("zoom", Float.valueOf(this.b)).a("tilt", Float.valueOf(this.c)).a("bearing", Float.valueOf(this.d)).toString();
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    s.a(this, paramParcel);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.StreetViewPanoramaCamera
 * JD-Core Version:    0.6.2
 */