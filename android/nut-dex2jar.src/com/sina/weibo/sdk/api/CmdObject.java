package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class CmdObject extends BaseMediaObject
{
  public static final Parcelable.Creator<CmdObject> CREATOR = new a();
  public String g;

  public CmdObject()
  {
  }

  public CmdObject(Parcel paramParcel)
  {
    this.g = paramParcel.readString();
  }

  protected final BaseMediaObject a(String paramString)
  {
    return this;
  }

  public final boolean a()
  {
    return (this.g != null) && (this.g.length() != 0) && (this.g.length() <= 1024);
  }

  protected final String b()
  {
    return "";
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.g);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.api.CmdObject
 * JD-Core Version:    0.6.2
 */