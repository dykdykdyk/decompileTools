package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.bn;
import com.google.android.gms.common.internal.bo;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

public class StreetViewPanoramaOrientation
  implements SafeParcelable
{
  public static final v CREATOR = new v();
  final int a;
  public final float b;
  public final float c;

  public StreetViewPanoramaOrientation(float paramFloat1, float paramFloat2)
  {
    this(1, paramFloat1, paramFloat2);
  }

  StreetViewPanoramaOrientation(int paramInt, float paramFloat1, float paramFloat2)
  {
    if ((-90.0F <= paramFloat1) && (paramFloat1 <= 90.0F));
    for (boolean bool = true; ; bool = false)
    {
      b.b(bool, "Tilt needs to be between -90 and 90 inclusive");
      this.a = paramInt;
      this.b = (0.0F + paramFloat1);
      paramFloat1 = paramFloat2;
      if (paramFloat2 <= 0.0D)
        paramFloat1 = paramFloat2 % 360.0F + 360.0F;
      this.c = (paramFloat1 % 360.0F);
      return;
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
      if (!(paramObject instanceof StreetViewPanoramaOrientation))
        return false;
      paramObject = (StreetViewPanoramaOrientation)paramObject;
    }
    while ((Float.floatToIntBits(this.b) == Float.floatToIntBits(paramObject.b)) && (Float.floatToIntBits(this.c) == Float.floatToIntBits(paramObject.c)));
    return false;
  }

  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Float.valueOf(this.b), Float.valueOf(this.c) });
  }

  public String toString()
  {
    return bn.a(this).a("tilt", Float.valueOf(this.b)).a("bearing", Float.valueOf(this.c)).toString();
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    v.a(this, paramParcel);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.StreetViewPanoramaOrientation
 * JD-Core Version:    0.6.2
 */