package com.amap.api.services.core;

import android.content.Context;
import com.amap.api.services.nearby.UploadInfo;

public class w extends b<UploadInfo, Integer>
{
  private Context h;
  private UploadInfo i;

  public w(Context paramContext, UploadInfo paramUploadInfo)
  {
    super(paramContext, paramUploadInfo);
    this.h = paramContext;
    this.i = paramUploadInfo;
  }

  protected Integer d(String paramString)
    throws AMapException
  {
    return Integer.valueOf(0);
  }

  protected String e()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("key=").append(aj.f(this.h));
    localStringBuffer.append("&userid=").append(this.i.getUserID());
    LatLonPoint localLatLonPoint = this.i.getPoint();
    int j = (int)(localLatLonPoint.getLongitude() * 1000000.0D);
    int k = (int)(localLatLonPoint.getLatitude() * 1000000.0D);
    localStringBuffer.append("&location=").append(j / 1000000.0F).append(",").append(k / 1000000.0F);
    localStringBuffer.append("&coordtype=").append(this.i.getCoordType());
    return localStringBuffer.toString();
  }

  public String g()
  {
    return h.b() + "/nearby/data/create";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.w
 * JD-Core Version:    0.6.2
 */