package com.nut.blehunter.rxApi.model;

public class CheckFirmwareVersionRequestBody
{
  public final String deviceName;
  public final String firmwareVersion;

  public CheckFirmwareVersionRequestBody(String paramString1, String paramString2)
  {
    this.deviceName = paramString1;
    this.firmwareVersion = paramString2;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.model.CheckFirmwareVersionRequestBody
 * JD-Core Version:    0.6.2
 */