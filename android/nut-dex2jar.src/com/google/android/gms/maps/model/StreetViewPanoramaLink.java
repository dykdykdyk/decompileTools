package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.bn;
import com.google.android.gms.common.internal.bo;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

public class StreetViewPanoramaLink
  implements SafeParcelable
{
  public static final t CREATOR = new t();
  final int a;
  public final String b;
  public final float c;

  StreetViewPanoramaLink(int paramInt, String paramString, float paramFloat)
  {
    this.a = paramInt;
    this.b = paramString;
    float f = paramFloat;
    if (paramFloat <= 0.0D)
      f = paramFloat % 360.0F + 360.0F;
    this.c = (f % 360.0F);
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
      if (!(paramObject instanceof StreetViewPanoramaLink))
        return false;
      paramObject = (StreetViewPanoramaLink)paramObject;
    }
    while ((this.b.equals(paramObject.b)) && (Float.floatToIntBits(this.c) == Float.floatToIntBits(paramObject.c)));
    return false;
  }

  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { this.b, Float.valueOf(this.c) });
  }

  public String toString()
  {
    return bn.a(this).a("panoId", this.b).a("bearing", Float.valueOf(this.c)).toString();
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    t.a(this, paramParcel);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.StreetViewPanoramaLink
 * JD-Core Version:    0.6.2
 */