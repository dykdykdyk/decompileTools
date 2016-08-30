package com.amap.api.services.district;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class DistrictItem
  implements Parcelable
{
  public static final Parcelable.Creator<DistrictItem> CREATOR = new a();
  private String a;
  private String b;
  private String c;
  private LatLonPoint d;
  private String e;
  private List<DistrictItem> f = new ArrayList();
  private String[] g = new String[0];

  public DistrictItem()
  {
  }

  public DistrictItem(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = ((LatLonPoint)paramParcel.readParcelable(LatLonPoint.class.getClassLoader()));
    this.e = paramParcel.readString();
    this.f = paramParcel.createTypedArrayList(CREATOR);
    this.g = new String[paramParcel.readInt()];
    paramParcel.readStringArray(this.g);
  }

  public DistrictItem(String paramString1, String paramString2, String paramString3, LatLonPoint paramLatLonPoint, String paramString4)
  {
    this.c = paramString1;
    this.a = paramString2;
    this.b = paramString3;
    this.d = paramLatLonPoint;
    this.e = paramString4;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final String[] districtBoundary()
  {
    return this.g;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      do
      {
        return true;
        if (paramObject == null)
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        paramObject = (DistrictItem)paramObject;
        if (this.b == null)
        {
          if (paramObject.b != null)
            return false;
        }
        else if (!this.b.equals(paramObject.b))
          return false;
        if (this.d == null)
        {
          if (paramObject.d != null)
            return false;
        }
        else if (!this.d.equals(paramObject.d))
          return false;
        if (this.a == null)
        {
          if (paramObject.a != null)
            return false;
        }
        else if (!this.a.equals(paramObject.a))
          return false;
        if (!Arrays.equals(this.g, paramObject.g))
          return false;
        if (this.f == null)
        {
          if (paramObject.f != null)
            return false;
        }
        else if (!this.f.equals(paramObject.f))
          return false;
        if (this.e == null)
        {
          if (paramObject.e != null)
            return false;
        }
        else if (!this.e.equals(paramObject.e))
          return false;
        if (this.c != null)
          break;
      }
      while (paramObject.c == null);
      return false;
    }
    while (this.c.equals(paramObject.c));
    return false;
  }

  public final String getAdcode()
  {
    return this.b;
  }

  public final LatLonPoint getCenter()
  {
    return this.d;
  }

  public final String getCitycode()
  {
    return this.a;
  }

  public final String getLevel()
  {
    return this.e;
  }

  public final String getName()
  {
    return this.c;
  }

  public final List<DistrictItem> getSubDistrict()
  {
    return this.f;
  }

  public final int hashCode()
  {
    int i1 = 0;
    int i;
    int j;
    label21: int k;
    label30: int i2;
    int m;
    label49: int n;
    if (this.b == null)
    {
      i = 0;
      if (this.d != null)
        break label116;
      j = 0;
      if (this.a != null)
        break label127;
      k = 0;
      i2 = Arrays.hashCode(this.g);
      if (this.f != null)
        break label138;
      m = 0;
      if (this.e != null)
        break label152;
      n = 0;
      label59: if (this.c != null)
        break label164;
    }
    while (true)
    {
      return (n + (m + ((k + (j + (i + 31) * 31) * 31) * 31 + i2) * 31) * 31) * 31 + i1;
      i = this.b.hashCode();
      break;
      label116: j = this.d.hashCode();
      break label21;
      label127: k = this.a.hashCode();
      break label30;
      label138: m = this.f.hashCode();
      break label49;
      label152: n = this.e.hashCode();
      break label59;
      label164: i1 = this.c.hashCode();
    }
  }

  public final void setAdcode(String paramString)
  {
    this.b = paramString;
  }

  public final void setCenter(LatLonPoint paramLatLonPoint)
  {
    this.d = paramLatLonPoint;
  }

  public final void setCitycode(String paramString)
  {
    this.a = paramString;
  }

  public final void setDistrictBoundary(String[] paramArrayOfString)
  {
    this.g = paramArrayOfString;
  }

  public final void setLevel(String paramString)
  {
    this.e = paramString;
  }

  public final void setName(String paramString)
  {
    this.c = paramString;
  }

  public final void setSubDistrict(ArrayList<DistrictItem> paramArrayList)
  {
    this.f = paramArrayList;
  }

  public final String toString()
  {
    return "DistrictItem [mCitycode=" + this.a + ", mAdcode=" + this.b + ", mName=" + this.c + ", mCenter=" + this.d + ", mLevel=" + this.e + ", mDistricts=" + this.f + "]";
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeParcelable(this.d, paramInt);
    paramParcel.writeString(this.e);
    paramParcel.writeTypedList(this.f);
    paramParcel.writeInt(this.g.length);
    paramParcel.writeStringArray(this.g);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.district.DistrictItem
 * JD-Core Version:    0.6.2
 */