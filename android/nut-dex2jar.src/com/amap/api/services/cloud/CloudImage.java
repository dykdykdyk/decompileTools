package com.amap.api.services.cloud;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class CloudImage
  implements Parcelable
{
  public static final Parcelable.Creator<CloudImage> CREATOR = new a();
  private String a;
  private String b;
  private String c;

  public CloudImage(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
  }

  public CloudImage(String paramString1, String paramString2, String paramString3)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
  }

  public int describeContents()
  {
    return 0;
  }

  public String getId()
  {
    return this.a;
  }

  public String getPreurl()
  {
    return this.b;
  }

  public String getUrl()
  {
    return this.c;
  }

  public void setId(String paramString)
  {
    this.a = paramString;
  }

  public void setPreurl(String paramString)
  {
    this.b = paramString;
  }

  public void setUrl(String paramString)
  {
    this.c = paramString;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.cloud.CloudImage
 * JD-Core Version:    0.6.2
 */