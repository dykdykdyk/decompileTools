package com.amap.api.location;

import android.content.Context;
import com.loc.dp;
import com.loc.du;

public class CoordinateConverter
{
  DPoint a = null;
  private Context b;
  private CoordinateConverter.CoordType c = null;
  private DPoint d = null;

  public CoordinateConverter(Context paramContext)
  {
    this.b = paramContext;
  }

  public DPoint convert()
    throws Exception
  {
    try
    {
      if (this.c == null)
        throw new IllegalArgumentException("转换坐标类型不能为空");
    }
    finally
    {
    }
    if (this.d == null)
      throw new IllegalArgumentException("转换坐标源不能为空");
    if ((this.d.getLongitude() > 180.0D) || (this.d.getLongitude() < -180.0D))
      throw new IllegalArgumentException("请传入合理经度");
    if ((this.d.getLatitude() > 90.0D) || (this.d.getLatitude() < -90.0D))
      throw new IllegalArgumentException("请传入合理纬度");
    switch (a.a[this.c.ordinal()])
    {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    }
    while (true)
    {
      DPoint localDPoint = this.a;
      return localDPoint;
      this.a = du.a(this.d);
      continue;
      this.a = du.b(this.b, this.d);
      continue;
      this.a = this.d;
      continue;
      this.a = du.a(this.b, this.d);
    }
  }

  public CoordinateConverter coord(DPoint paramDPoint)
    throws Exception
  {
    if (paramDPoint == null)
      try
      {
        throw new IllegalArgumentException("传入经纬度对象为空");
      }
      finally
      {
      }
    if ((paramDPoint.getLongitude() > 180.0D) || (paramDPoint.getLongitude() < -180.0D))
      throw new IllegalArgumentException("请传入合理经度");
    if ((paramDPoint.getLatitude() > 90.0D) || (paramDPoint.getLatitude() < -90.0D))
      throw new IllegalArgumentException("请传入合理纬度");
    this.d = paramDPoint;
    return this;
  }

  public CoordinateConverter from(CoordinateConverter.CoordType paramCoordType)
  {
    try
    {
      this.c = paramCoordType;
      return this;
    }
    finally
    {
      paramCoordType = finally;
    }
    throw paramCoordType;
  }

  public boolean isAMapDataAvailable(double paramDouble1, double paramDouble2)
  {
    return dp.a(paramDouble1, paramDouble2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.location.CoordinateConverter
 * JD-Core Version:    0.6.2
 */