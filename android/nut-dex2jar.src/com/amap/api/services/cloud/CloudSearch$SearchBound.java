package com.amap.api.services.cloud;

import com.amap.api.services.core.LatLonPoint;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CloudSearch$SearchBound
  implements Cloneable
{
  public static final String BOUND_SHAPE = "Bound";
  public static final String LOCAL_SHAPE = "Local";
  public static final String POLYGON_SHAPE = "Polygon";
  public static final String RECTANGLE_SHAPE = "Rectangle";
  private LatLonPoint a;
  private LatLonPoint b;
  private int c;
  private LatLonPoint d;
  private String e = "Polygon";
  private List<LatLonPoint> f;
  private String g;

  public CloudSearch$SearchBound(LatLonPoint paramLatLonPoint, int paramInt)
  {
    this.c = paramInt;
    this.d = paramLatLonPoint;
  }

  public CloudSearch$SearchBound(LatLonPoint paramLatLonPoint1, LatLonPoint paramLatLonPoint2)
  {
    a(paramLatLonPoint1, paramLatLonPoint2);
  }

  public CloudSearch$SearchBound(String paramString)
  {
    this.g = paramString;
  }

  public CloudSearch$SearchBound(List<LatLonPoint> paramList)
  {
    this.f = paramList;
  }

  private List<LatLonPoint> a()
  {
    if (this.f == null)
      return null;
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.f.iterator();
    while (localIterator.hasNext())
    {
      LatLonPoint localLatLonPoint = (LatLonPoint)localIterator.next();
      localArrayList.add(new LatLonPoint(localLatLonPoint.getLatitude(), localLatLonPoint.getLongitude()));
    }
    return localArrayList;
  }

  private void a(LatLonPoint paramLatLonPoint1, LatLonPoint paramLatLonPoint2)
  {
    this.a = paramLatLonPoint1;
    this.b = paramLatLonPoint2;
    if ((this.a.getLatitude() >= this.b.getLatitude()) || (this.a.getLongitude() >= this.b.getLongitude()))
      throw new IllegalArgumentException("invalid rect ");
  }

  private boolean a(List<LatLonPoint> paramList1, List<LatLonPoint> paramList2)
  {
    if ((paramList1 == null) && (paramList2 == null))
      return true;
    if ((paramList1 != null) && (paramList2 != null) && (paramList1.size() == paramList2.size()))
    {
      int j = paramList1.size();
      int i = 0;
      while (i < j)
      {
        if (!((LatLonPoint)paramList1.get(i)).equals(paramList2.get(i)))
          return false;
        i += 1;
      }
      return true;
    }
    return false;
  }

  public SearchBound clone()
  {
    try
    {
      super.clone();
      if (getShape().equals("Bound"))
        return new SearchBound(this.d, this.c);
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      while (true)
        localCloneNotSupportedException.printStackTrace();
      if (getShape().equals("Polygon"))
        return new SearchBound(a());
      if (getShape().equals("Local"))
        return new SearchBound(this.g);
    }
    return new SearchBound(this.a, this.b);
  }

  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof SearchBound)));
    do
    {
      do
      {
        do
        {
          return false;
          paramObject = (SearchBound)paramObject;
        }
        while (!getShape().equalsIgnoreCase(paramObject.getShape()));
        if (!getShape().equals("Bound"))
          break;
      }
      while ((!paramObject.d.equals(this.d)) || (paramObject.c != this.c));
      return true;
      if (getShape().equals("Polygon"))
        return a(paramObject.f, this.f);
      if (getShape().equals("Local"))
        return paramObject.g.equals(this.g);
    }
    while ((!paramObject.a.equals(this.a)) || (!paramObject.b.equals(this.b)));
    return true;
  }

  public LatLonPoint getCenter()
  {
    return this.d;
  }

  public String getCity()
  {
    return this.g;
  }

  public LatLonPoint getLowerLeft()
  {
    return this.a;
  }

  public List<LatLonPoint> getPolyGonList()
  {
    return this.f;
  }

  public int getRange()
  {
    return this.c;
  }

  public String getShape()
  {
    return this.e;
  }

  public LatLonPoint getUpperRight()
  {
    return this.b;
  }

  public int hashCode()
  {
    int i1 = 0;
    int i;
    int j;
    label21: int k;
    label30: int m;
    label40: int i2;
    int n;
    if (this.d == null)
    {
      i = 0;
      if (this.a != null)
        break label113;
      j = 0;
      if (this.b != null)
        break label124;
      k = 0;
      if (this.f != null)
        break label135;
      m = 0;
      i2 = this.c;
      if (this.e != null)
        break label149;
      n = 0;
      label56: if (this.g != null)
        break label161;
    }
    while (true)
    {
      return (n + ((m + (k + (j + (i + 31) * 31) * 31) * 31) * 31 + i2) * 31) * 31 + i1;
      i = this.d.hashCode();
      break;
      label113: j = this.a.hashCode();
      break label21;
      label124: k = this.b.hashCode();
      break label30;
      label135: m = this.f.hashCode();
      break label40;
      label149: n = this.e.hashCode();
      break label56;
      label161: i1 = this.g.hashCode();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.cloud.CloudSearch.SearchBound
 * JD-Core Version:    0.6.2
 */