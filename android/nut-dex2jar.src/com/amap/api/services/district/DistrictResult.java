package com.amap.api.services.district;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.AMapException;
import java.util.ArrayList;

public final class DistrictResult
  implements Parcelable
{
  public Parcelable.Creator<DistrictResult> CREATOR = new b(this);
  private DistrictSearchQuery a;
  private ArrayList<DistrictItem> b = new ArrayList();
  private int c;
  private AMapException d;

  public DistrictResult()
  {
  }

  protected DistrictResult(Parcel paramParcel)
  {
    this.a = ((DistrictSearchQuery)paramParcel.readParcelable(DistrictSearchQuery.class.getClassLoader()));
    this.b = paramParcel.createTypedArrayList(DistrictItem.CREATOR);
  }

  public DistrictResult(DistrictSearchQuery paramDistrictSearchQuery, ArrayList<DistrictItem> paramArrayList)
  {
    this.a = paramDistrictSearchQuery;
    this.b = paramArrayList;
  }

  public final int describeContents()
  {
    return 0;
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
        paramObject = (DistrictResult)paramObject;
        if (this.a == null)
        {
          if (paramObject.a != null)
            return false;
        }
        else if (!this.a.equals(paramObject.a))
          return false;
        if (this.b != null)
          break;
      }
      while (paramObject.b == null);
      return false;
    }
    while (this.b.equals(paramObject.b));
    return false;
  }

  public final AMapException getAMapException()
  {
    return this.d;
  }

  public final ArrayList<DistrictItem> getDistrict()
  {
    return this.b;
  }

  public final int getPageCount()
  {
    return this.c;
  }

  public final DistrictSearchQuery getQuery()
  {
    return this.a;
  }

  public final int hashCode()
  {
    int j = 0;
    int i;
    if (this.a == null)
    {
      i = 0;
      if (this.b != null)
        break label39;
    }
    while (true)
    {
      return (i + 31) * 31 + j;
      i = this.a.hashCode();
      break;
      label39: j = this.b.hashCode();
    }
  }

  public final void setAMapException(AMapException paramAMapException)
  {
    this.d = paramAMapException;
  }

  public final void setDistrict(ArrayList<DistrictItem> paramArrayList)
  {
    this.b = paramArrayList;
  }

  public final void setPageCount(int paramInt)
  {
    this.c = paramInt;
  }

  public final void setQuery(DistrictSearchQuery paramDistrictSearchQuery)
  {
    this.a = paramDistrictSearchQuery;
  }

  public final String toString()
  {
    return "DistrictResult [mDisQuery=" + this.a + ", mDistricts=" + this.b + "]";
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.a, paramInt);
    paramParcel.writeTypedList(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.district.DistrictResult
 * JD-Core Version:    0.6.2
 */