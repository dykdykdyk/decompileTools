package com.google.android.gms.maps.model;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.bn;
import com.google.android.gms.common.internal.bo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.d;
import java.util.Arrays;

public final class CameraPosition extends AbstractSafeParcelable
{
  public static final j CREATOR = new j();
  final int a;
  public final LatLng b;
  public final float c;
  public final float d;
  public final float e;

  CameraPosition(int paramInt, LatLng paramLatLng, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    b.a(paramLatLng, "null camera target");
    if ((0.0F <= paramFloat2) && (paramFloat2 <= 90.0F));
    for (boolean bool = true; ; bool = false)
    {
      b.a(bool, "Tilt needs to be between 0 and 90 inclusive: %s", new Object[] { Float.valueOf(paramFloat2) });
      this.a = paramInt;
      this.b = paramLatLng;
      this.c = paramFloat1;
      this.d = (paramFloat2 + 0.0F);
      paramFloat1 = paramFloat3;
      if (paramFloat3 <= 0.0D)
        paramFloat1 = paramFloat3 % 360.0F + 360.0F;
      this.e = (paramFloat1 % 360.0F);
      return;
    }
  }

  public CameraPosition(LatLng paramLatLng, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this(1, paramLatLng, paramFloat1, paramFloat2, paramFloat3);
  }

  public static CameraPosition a(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null)
      return null;
    paramContext = paramContext.getResources().obtainAttributes(paramAttributeSet, d.MapAttrs);
    if (paramContext.hasValue(d.MapAttrs_cameraTargetLat));
    for (float f1 = paramContext.getFloat(d.MapAttrs_cameraTargetLat, 0.0F); ; f1 = 0.0F)
    {
      if (paramContext.hasValue(d.MapAttrs_cameraTargetLng));
      for (float f2 = paramContext.getFloat(d.MapAttrs_cameraTargetLng, 0.0F); ; f2 = 0.0F)
      {
        paramAttributeSet = new LatLng(f1, f2);
        c localc = new c();
        localc.a = paramAttributeSet;
        if (paramContext.hasValue(d.MapAttrs_cameraZoom))
          localc.b = paramContext.getFloat(d.MapAttrs_cameraZoom, 0.0F);
        if (paramContext.hasValue(d.MapAttrs_cameraBearing))
          localc.d = paramContext.getFloat(d.MapAttrs_cameraBearing, 0.0F);
        if (paramContext.hasValue(d.MapAttrs_cameraTilt))
          localc.c = paramContext.getFloat(d.MapAttrs_cameraTilt, 0.0F);
        return new CameraPosition(localc.a, localc.b, localc.c, localc.d);
      }
    }
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      return true;
      if (!(paramObject instanceof CameraPosition))
        return false;
      paramObject = (CameraPosition)paramObject;
    }
    while ((this.b.equals(paramObject.b)) && (Float.floatToIntBits(this.c) == Float.floatToIntBits(paramObject.c)) && (Float.floatToIntBits(this.d) == Float.floatToIntBits(paramObject.d)) && (Float.floatToIntBits(this.e) == Float.floatToIntBits(paramObject.e)));
    return false;
  }

  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { this.b, Float.valueOf(this.c), Float.valueOf(this.d), Float.valueOf(this.e) });
  }

  public final String toString()
  {
    return bn.a(this).a("target", this.b).a("zoom", Float.valueOf(this.c)).a("tilt", Float.valueOf(this.d)).a("bearing", Float.valueOf(this.e)).toString();
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    j.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.CameraPosition
 * JD-Core Version:    0.6.2
 */