package com.facebook.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class FacebookDialog$PendingCall$1
  implements Parcelable.Creator<FacebookDialog.PendingCall>
{
  public final FacebookDialog.PendingCall createFromParcel(Parcel paramParcel)
  {
    return new FacebookDialog.PendingCall(paramParcel, null);
  }

  public final FacebookDialog.PendingCall[] newArray(int paramInt)
  {
    return new FacebookDialog.PendingCall[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.FacebookDialog.PendingCall.1
 * JD-Core Version:    0.6.2
 */