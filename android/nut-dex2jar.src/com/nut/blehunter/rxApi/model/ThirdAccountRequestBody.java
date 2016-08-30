package com.nut.blehunter.rxApi.model;

public class ThirdAccountRequestBody
{
  public static final int TYPE_WECHAT = 0;
  public static final int TYPE_YIXIN = 1;
  public final String data;
  public final String openId;
  public final String type;

  private ThirdAccountRequestBody(String paramString1, String paramString2, String paramString3)
  {
    this.type = paramString1;
    this.data = paramString2;
    this.openId = paramString3;
  }

  public static ThirdAccountRequestBody createBindThirdAccountRequestBody(String paramString1, String paramString2)
  {
    return new ThirdAccountRequestBody(paramString1, paramString2, null);
  }

  public static ThirdAccountRequestBody createUnBindThirdAccountRequestBody(String paramString1, String paramString2)
  {
    return new ThirdAccountRequestBody(paramString1, null, paramString2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.model.ThirdAccountRequestBody
 * JD-Core Version:    0.6.2
 */