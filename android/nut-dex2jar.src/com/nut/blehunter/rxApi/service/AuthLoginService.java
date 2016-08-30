package com.nut.blehunter.rxApi.service;

import com.nut.blehunter.rxApi.model.GetCaptchaRequestBody;
import com.nut.blehunter.rxApi.model.LoginRequestBody;
import com.nut.blehunter.rxApi.model.RegisterRequestBody;
import com.nut.blehunter.rxApi.model.ResetPasswordRequestBody;
import com.nut.blehunter.rxApi.model.ValidCaptchaRequestBody;
import java.util.HashMap;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;
import rx.h;

public abstract interface AuthLoginService
{
  @POST("api/v1/captcha/{type}")
  public abstract Call<String> getCaptcha(@Path("type") String paramString, @Body GetCaptchaRequestBody paramGetCaptchaRequestBody);

  @GET("api/v1/user/profile")
  public abstract h<String> getUser(@Header("Authorization") String paramString);

  @POST("api/v1/user/login/{type}")
  public abstract h<String> login(@Path("type") String paramString, @Body LoginRequestBody paramLoginRequestBody);

  @PUT("api/v1/user/password/email")
  public abstract Call<String> modifyPasswordByEmail(@Body HashMap<String, String> paramHashMap);

  @POST("api/v1/user/register/{type}")
  public abstract h<String> register(@Path("type") String paramString, @Body RegisterRequestBody paramRegisterRequestBody);

  @POST("api/v2/user/resetPassword")
  public abstract Call<String> resetPassword(@Body ResetPasswordRequestBody paramResetPasswordRequestBody);

  @POST("api/v2/captcha/validCaptcha")
  public abstract Call<String> validCaptcha(@Body ValidCaptchaRequestBody paramValidCaptchaRequestBody);

  @POST("api/v1/android/version")
  public abstract Call<String> version();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.service.AuthLoginService
 * JD-Core Version:    0.6.2
 */