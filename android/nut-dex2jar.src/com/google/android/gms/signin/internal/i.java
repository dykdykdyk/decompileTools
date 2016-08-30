package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class i
  implements Parcelable.Creator<RecordConsentRequest>
{
  static void a(RecordConsentRequest paramRecordConsentRequest, Parcel paramParcel, int paramInt)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramRecordConsentRequest.a);
    a.a(paramParcel, 2, paramRecordConsentRequest.b, paramInt);
    a.a(paramParcel, 3, paramRecordConsentRequest.c, paramInt);
    a.a(paramParcel, 4, paramRecordConsentRequest.d);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.signin.internal.i
 * JD-Core Version:    0.6.2
 */