package com.nut.blehunter.rxApi.model;

import com.nut.blehunter.d.i;

public class BindMobileRequestBody
{
  public final String captcha;
  public final String countryCode;
  public final String originalCaptcha;
  public final String originalCountryCode;
  public final String originalMobile;
  public final String phoneNumber;

  private BindMobileRequestBody(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    this.originalCountryCode = paramString1;
    this.originalMobile = paramString2;
    this.originalCaptcha = paramString3;
    this.countryCode = paramString4;
    this.phoneNumber = paramString5;
    this.captcha = paramString6;
  }

  public static BindMobileRequestBody createBindMobileRequestBody(String paramString1, String paramString2, String paramString3)
  {
    return new BindMobileRequestBody(null, null, null, i.a(paramString1), paramString2, paramString3);
  }

  public static BindMobileRequestBody createModifyMobileRequestBody(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    return new BindMobileRequestBody(i.a(paramString1), paramString2, paramString3, i.a(paramString4), paramString5, paramString6);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.model.BindMobileRequestBody
 * JD-Core Version:    0.6.2
 */