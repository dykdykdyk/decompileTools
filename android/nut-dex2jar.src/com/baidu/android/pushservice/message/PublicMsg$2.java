package com.baidu.android.pushservice.message;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class PublicMsg$2
  implements Parcelable.Creator<PublicMsg>
{
  public final PublicMsg a(Parcel paramParcel)
  {
    return new PublicMsg(paramParcel);
  }

  public final PublicMsg[] a(int paramInt)
  {
    return new PublicMsg[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.message.PublicMsg.2
 * JD-Core Version:    0.6.2
 */