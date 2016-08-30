package com.amap.api.services.geocoder;

public class GeocodeQuery
{
  private String a;
  private String b;

  public GeocodeQuery(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = paramString2;
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
        if (getClass() != paramObject.getClass())
          return false;
        paramObject = (GeocodeQuery)paramObject;
        if (this.b == null)
        {
          if (paramObject.b != null)
            return false;
        }
        else if (!this.b.equals(paramObject.b))
          return false;
        if (this.a != null)
          break;
      }
      while (paramObject.a == null);
      return false;
    }
    while (this.a.equals(paramObject.a));
    return false;
  }

  public String getCity()
  {
    return this.b;
  }

  public String getLocationName()
  {
    return this.a;
  }

  public int hashCode()
  {
    int j = 0;
    int i;
    if (this.b == null)
    {
      i = 0;
      if (this.a != null)
        break label39;
    }
    while (true)
    {
      return (i + 31) * 31 + j;
      i = this.b.hashCode();
      break;
      label39: j = this.a.hashCode();
    }
  }

  public void setCity(String paramString)
  {
    this.b = paramString;
  }

  public void setLocationName(String paramString)
  {
    this.a = paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.geocoder.GeocodeQuery
 * JD-Core Version:    0.6.2
 */