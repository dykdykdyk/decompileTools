package com.nut.blehunter.rxApi.model;

import com.nut.blehunter.d.i;

public class GetCaptchaRequestBody
{
  public static final String CAPTCHA_TYPE_BIND_MOBILE = "BIND_MOBILE";
  public static final String CAPTCHA_TYPE_CHANGE_MOBILE_NEW = "MODIFY_MOBILE_NEW";
  public static final String CAPTCHA_TYPE_CHANGE_MOBILE_OLD = "MODIFY_MOBILE_OLD";
  public static final String CAPTCHA_TYPE_REGISTER = "NUT_REGISTER_ACCOUNT";
  public static final String CAPTCHA_TYPE_RRESET_PASSWORD = "NUT_RESET_PASSWORD";
  public final String captchaType;
  public final String countryCode;
  public final String email;
  public final String phoneNumber;

  protected GetCaptchaRequestBody(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.countryCode = i.a(paramString1);
    this.phoneNumber = paramString2;
    this.captchaType = paramString3;
    this.email = paramString4;
  }

  public static GetCaptchaRequestBody createGetCaptchaRequestBodyWithEmail(String paramString1, String paramString2, String paramString3)
  {
    return new GetCaptchaRequestBody(i.a(paramString1), paramString2, null, paramString3);
  }

  public static GetCaptchaRequestBody createGetCaptchaRequestBodyWithMobile(String paramString1, String paramString2, String paramString3)
  {
    return new GetCaptchaRequestBody(i.a(paramString1), paramString2, paramString3, null);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.model.GetCaptchaRequestBody
 * JD-Core Version:    0.6.2
 */