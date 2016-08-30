package com.amap.api.services.cloud;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class CloudItem
  implements Parcelable
{
  public static final Parcelable.Creator<CloudItem> CREATOR = new b();
  private String a;
  private int b = -1;
  private String c;
  private String d;
  private HashMap<String, String> e;
  private List<CloudImage> f;
  protected final LatLonPoint mPoint;
  protected final String mSnippet;
  protected final String mTitle;

  protected CloudItem(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readInt();
    this.mPoint = ((LatLonPoint)paramParcel.readValue(LatLonPoint.class.getClassLoader()));
    this.mTitle = paramParcel.readString();
    this.mSnippet = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = new HashMap();
    paramParcel.readMap(this.e, HashMap.class.getClassLoader());
    this.f = new ArrayList();
    paramParcel.readList(this.f, getClass().getClassLoader());
  }

  public CloudItem(String paramString1, LatLonPoint paramLatLonPoint, String paramString2, String paramString3)
  {
    this.a = paramString1;
    this.mPoint = paramLatLonPoint;
    this.mTitle = paramString2;
    this.mSnippet = paramString3;
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
      do
      {
        return true;
        if (paramObject == null)
          return false;
        if ((getClass() != paramObject.getClass()) && (CloudItem.class != paramObject.getClass()) && (CloudItemDetail.class != paramObject.getClass()))
          return false;
        paramObject = (CloudItem)paramObject;
        if (this.a != null)
          break;
      }
      while (paramObject.a == null);
      return false;
    }
    while (this.a.equals(paramObject.a));
    return false;
  }

  public List<CloudImage> getCloudImage()
  {
    return this.f;
  }

  public String getCreatetime()
  {
    return this.c;
  }

  public HashMap<String, String> getCustomfield()
  {
    return this.e;
  }

  public int getDistance()
  {
    return this.b;
  }

  public String getID()
  {
    return this.a;
  }

  public LatLonPoint getLatLonPoint()
  {
    return this.mPoint;
  }

  public String getSnippet()
  {
    return this.mSnippet;
  }

  public String getTitle()
  {
    return this.mTitle;
  }

  public String getUpdatetime()
  {
    return this.d;
  }

  public int hashCode()
  {
    if (this.a == null);
    for (int i = 0; ; i = this.a.hashCode())
      return i + 31;
  }

  public void setCreatetime(String paramString)
  {
    this.c = paramString;
  }

  public void setCustomfield(HashMap<String, String> paramHashMap)
  {
    this.e = paramHashMap;
  }

  public void setDistance(int paramInt)
  {
    this.b = paramInt;
  }

  public void setUpdatetime(String paramString)
  {
    this.d = paramString;
  }

  public void setmCloudImage(List<CloudImage> paramList)
  {
    this.f = paramList;
  }

  public String toString()
  {
    return this.mTitle;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeInt(this.b);
    paramParcel.writeValue(this.mPoint);
    paramParcel.writeString(this.mTitle);
    paramParcel.writeString(this.mSnippet);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeMap(this.e);
    paramParcel.writeList(this.f);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.cloud.CloudItem
 * JD-Core Version:    0.6.2
 */