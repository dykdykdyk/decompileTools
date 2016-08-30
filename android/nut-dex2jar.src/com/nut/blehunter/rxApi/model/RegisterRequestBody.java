package com.nut.blehunter.rxApi.model;

import com.nut.blehunter.d.i;

public class RegisterRequestBody
{
  public final String captcha;
  public final String country_code;
  public final String email;
  public final String password;
  public final String phone_number;

  private RegisterRequestBody(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    this.email = paramString1;
    this.country_code = paramString2;
    this.phone_number = paramString3;
    this.captcha = paramString4;
    this.password = paramString5;
  }

  public static RegisterRequestBody createWithEmail(String paramString1, String paramString2)
  {
    return new RegisterRequestBody(paramString1, null, null, null, paramString2);
  }

  public static RegisterRequestBody createWithMobile(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    return new RegisterRequestBody(null, i.a(paramString1), paramString2, paramString3, paramString4);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.model.RegisterRequestBody
 * JD-Core Version:    0.6.2
 */