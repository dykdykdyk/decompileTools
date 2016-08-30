package com.amap.api.services.district;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.i;

public class DistrictSearchQuery
  implements Parcelable, Cloneable
{
  public static final Parcelable.Creator<DistrictSearchQuery> CREATOR = new c();
  public static final String KEYWORDS_BUSINESS = "biz_area";
  public static final String KEYWORDS_CITY = "city";
  public static final String KEYWORDS_COUNTRY = "country";
  public static final String KEYWORDS_DISTRICT = "district";
  public static final String KEYWORDS_PROVINCE = "province";
  private int a = 0;
  private int b = 20;
  private String c;
  private String d;
  private boolean e = true;
  private boolean f = false;

  public DistrictSearchQuery()
  {
  }

  public DistrictSearchQuery(String paramString1, String paramString2, int paramInt)
  {
    this.c = paramString1;
    this.d = paramString2;
    this.a = paramInt;
  }

  public DistrictSearchQuery(String paramString1, String paramString2, int paramInt1, boolean paramBoolean, int paramInt2)
  {
    this(paramString1, paramString2, paramInt1);
    this.e = paramBoolean;
    this.b = paramInt2;
  }

  public boolean checkKeyWords()
  {
    if (this.c == null);
    while (this.c.trim().equalsIgnoreCase(""))
      return false;
    return true;
  }

  public boolean checkLevels()
  {
    if (this.d == null);
    while ((!this.d.trim().equals("country")) && (!this.d.trim().equals("province")) && (!this.d.trim().equals("city")) && (!this.d.trim().equals("district")) && (!this.d.trim().equals("biz_area")))
      return false;
    return true;
  }

  public DistrictSearchQuery clone()
  {
    try
    {
      super.clone();
      DistrictSearchQuery localDistrictSearchQuery = new DistrictSearchQuery(this.c, this.d, this.a, this.e, this.b);
      localDistrictSearchQuery.setShowBoundary(this.f);
      return localDistrictSearchQuery;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      while (true)
        i.a(localCloneNotSupportedException, "DistrictSearchQuery", "clone");
    }
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
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      paramObject = (DistrictSearchQuery)paramObject;
      if (this.f != paramObject.f)
        return false;
      if (this.c == null)
      {
        if (paramObject.c != null)
          return false;
      }
      else if (!this.c.equals(paramObject.c))
        return false;
      if (this.d == null)
      {
        if (paramObject.d != null)
          return false;
      }
      else if (!this.d.equals(paramObject.d))
        return false;
      if (this.a != paramObject.a)
        return false;
      if (this.b != paramObject.b)
        return false;
    }
    while (this.e == paramObject.e);
    return false;
  }

  public String getKeywords()
  {
    return this.c;
  }

  public String getKeywordsLevel()
  {
    return this.d;
  }

  public int getPageNum()
  {
    return this.a;
  }

  public int getPageSize()
  {
    return this.b;
  }

  public int hashCode()
  {
    int m = 1231;
    int k = 0;
    int i;
    int j;
    label27: label34: int n;
    int i1;
    if (this.f)
    {
      i = 1231;
      if (this.c != null)
        break label93;
      j = 0;
      if (this.d != null)
        break label104;
      n = this.a;
      i1 = this.b;
      if (!this.e)
        break label115;
    }
    while (true)
    {
      return ((((j + (i + 31) * 31) * 31 + k) * 31 + n) * 31 + i1) * 31 + m;
      i = 1237;
      break;
      label93: j = this.c.hashCode();
      break label27;
      label104: k = this.d.hashCode();
      break label34;
      label115: m = 1237;
    }
  }

  public boolean isShowBoundary()
  {
    return this.f;
  }

  public boolean isShowChild()
  {
    return this.e;
  }

  public void setKeywords(String paramString)
  {
    this.c = paramString;
  }

  public void setKeywordsLevel(String paramString)
  {
    this.d = paramString;
  }

  public void setPageNum(int paramInt)
  {
    this.a = paramInt;
  }

  public void setPageSize(int paramInt)
  {
    this.b = paramInt;
  }

  public void setShowBoundary(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }

  public void setShowChild(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }

  protected boolean weakEquals(DistrictSearchQuery paramDistrictSearchQuery)
  {
    if (this == paramDistrictSearchQuery);
    do
    {
      return true;
      if (paramDistrictSearchQuery == null)
        return false;
      if (this.c == null)
      {
        if (paramDistrictSearchQuery.c != null)
          return false;
      }
      else if (!this.c.equals(paramDistrictSearchQuery.c))
        return false;
      if (this.d == null)
      {
        if (paramDistrictSearchQuery.d != null)
          return false;
      }
      else if (!this.d.equals(paramDistrictSearchQuery.d))
        return false;
      if (this.b != paramDistrictSearchQuery.b)
        return false;
      if (this.e != paramDistrictSearchQuery.e)
        return false;
    }
    while (this.f == paramDistrictSearchQuery.f);
    return false;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeInt(this.a);
    paramParcel.writeInt(this.b);
    if (this.e)
    {
      paramInt = 1;
      paramParcel.writeByte((byte)paramInt);
      if (!this.f)
        break label70;
    }
    label70: for (paramInt = i; ; paramInt = 0)
    {
      paramParcel.writeByte((byte)paramInt);
      return;
      paramInt = 0;
      break;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.district.DistrictSearchQuery
 * JD-Core Version:    0.6.2
 */