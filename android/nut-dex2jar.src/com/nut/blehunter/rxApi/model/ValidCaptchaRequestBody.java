package com.nut.blehunter.rxApi.model;

public class ValidCaptchaRequestBody extends GetCaptchaRequestBody
{
  public final String captcha;

  private ValidCaptchaRequestBody(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    super(paramString1, paramString2, paramString3, paramString4);
    this.captcha = paramString5;
  }

  public static ValidCaptchaRequestBody createGetCaptchaRequestBodyWithMobile(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    return new ValidCaptchaRequestBody(paramString1, paramString2, paramString3, null, paramString4);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.model.ValidCaptchaRequestBody
 * JD-Core Version:    0.6.2
 */