package com.nut.blehunter.rxApi.model;

public class FindRequestBody
{
  public final String deviceId;
  public final String latitude;
  public final String longitude;

  public FindRequestBody(String paramString1, String paramString2, String paramString3)
  {
    this.deviceId = paramString1;
    this.longitude = paramString2;
    this.latitude = paramString3;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.model.FindRequestBody
 * JD-Core Version:    0.6.2
 */