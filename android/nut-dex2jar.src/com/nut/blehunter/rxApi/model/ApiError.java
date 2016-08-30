package com.nut.blehunter.rxApi.model;

public class ApiError
{
  public int errorCode;
  public String errorMsg;

  public ApiError(int paramInt, String paramString)
  {
    this.errorCode = paramInt;
    this.errorMsg = paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.model.ApiError
 * JD-Core Version:    0.6.2
 */