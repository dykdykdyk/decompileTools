package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.d;
import com.google.android.gms.maps.a.af;
import com.google.android.gms.maps.model.CameraPosition;

public final class GoogleMapOptions
  implements SafeParcelable
{
  public static final x CREATOR = new x();
  final int a;
  Boolean b;
  Boolean c;
  int d = -1;
  CameraPosition e;
  Boolean f;
  Boolean g;
  Boolean h;
  Boolean i;
  Boolean j;
  Boolean k;
  Boolean l;
  Boolean m;
  Boolean n;

  public GoogleMapOptions()
  {
    this.a = 1;
  }

  GoogleMapOptions(int paramInt1, byte paramByte1, byte paramByte2, int paramInt2, CameraPosition paramCameraPosition, byte paramByte3, byte paramByte4, byte paramByte5, byte paramByte6, byte paramByte7, byte paramByte8, byte paramByte9, byte paramByte10, byte paramByte11)
  {
    this.a = paramInt1;
    this.b = af.a(paramByte1);
    this.c = af.a(paramByte2);
    this.d = paramInt2;
    this.e = paramCameraPosition;
    this.f = af.a(paramByte3);
    this.g = af.a(paramByte4);
    this.h = af.a(paramByte5);
    this.i = af.a(paramByte6);
    this.j = af.a(paramByte7);
    this.k = af.a(paramByte8);
    this.l = af.a(paramByte9);
    this.m = af.a(paramByte10);
    this.n = af.a(paramByte11);
  }

  public static GoogleMapOptions a(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null)
      return null;
    TypedArray localTypedArray = paramContext.getResources().obtainAttributes(paramAttributeSet, d.MapAttrs);
    GoogleMapOptions localGoogleMapOptions = new GoogleMapOptions();
    if (localTypedArray.hasValue(d.MapAttrs_mapType))
      localGoogleMapOptions.d = localTypedArray.getInt(d.MapAttrs_mapType, -1);
    if (localTypedArray.hasValue(d.MapAttrs_zOrderOnTop))
      localGoogleMapOptions.b = Boolean.valueOf(localTypedArray.getBoolean(d.MapAttrs_zOrderOnTop, false));
    if (localTypedArray.hasValue(d.MapAttrs_useViewLifecycle))
      localGoogleMapOptions.c = Boolean.valueOf(localTypedArray.getBoolean(d.MapAttrs_useViewLifecycle, false));
    if (localTypedArray.hasValue(d.MapAttrs_uiCompass))
      localGoogleMapOptions.g = Boolean.valueOf(localTypedArray.getBoolean(d.MapAttrs_uiCompass, true));
    if (localTypedArray.hasValue(d.MapAttrs_uiRotateGestures))
      localGoogleMapOptions.k = Boolean.valueOf(localTypedArray.getBoolean(d.MapAttrs_uiRotateGestures, true));
    if (localTypedArray.hasValue(d.MapAttrs_uiScrollGestures))
      localGoogleMapOptions.h = Boolean.valueOf(localTypedArray.getBoolean(d.MapAttrs_uiScrollGestures, true));
    if (localTypedArray.hasValue(d.MapAttrs_uiTiltGestures))
      localGoogleMapOptions.j = Boolean.valueOf(localTypedArray.getBoolean(d.MapAttrs_uiTiltGestures, true));
    if (localTypedArray.hasValue(d.MapAttrs_uiZoomGestures))
      localGoogleMapOptions.i = Boolean.valueOf(localTypedArray.getBoolean(d.MapAttrs_uiZoomGestures, true));
    if (localTypedArray.hasValue(d.MapAttrs_uiZoomControls))
      localGoogleMapOptions.f = Boolean.valueOf(localTypedArray.getBoolean(d.MapAttrs_uiZoomControls, true));
    if (localTypedArray.hasValue(d.MapAttrs_liteMode))
      localGoogleMapOptions.l = Boolean.valueOf(localTypedArray.getBoolean(d.MapAttrs_liteMode, false));
    if (localTypedArray.hasValue(d.MapAttrs_uiMapToolbar))
      localGoogleMapOptions.m = Boolean.valueOf(localTypedArray.getBoolean(d.MapAttrs_uiMapToolbar, true));
    if (localTypedArray.hasValue(d.MapAttrs_ambientEnabled))
      localGoogleMapOptions.n = Boolean.valueOf(localTypedArray.getBoolean(d.MapAttrs_ambientEnabled, false));
    localGoogleMapOptions.e = CameraPosition.a(paramContext, paramAttributeSet);
    localTypedArray.recycle();
    return localGoogleMapOptions;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    x.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.GoogleMapOptions
 * JD-Core Version:    0.6.2
 */