package com.nut.blehunter.rxApi.service;

import com.nut.blehunter.rxApi.model.BindMobileRequestBody;
import com.nut.blehunter.rxApi.model.DeleteSharedRequestBody;
import com.nut.blehunter.rxApi.model.ModifyUserRequestBody;
import com.nut.blehunter.rxApi.model.ThirdAccountRequestBody;
import java.util.HashMap;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;
import rx.h;

public abstract interface AccountService
{
  @POST("api/v1/share/secure/accept")
  public abstract h<String> acceptSharedNut(@Body HashMap<String, String> paramHashMap);

  @PUT("api/v1/user/email")
  public abstract Call<String> bindEmail(@Body HashMap<String, String> paramHashMap);

  @POST("api/v2/user/secure/{type}")
  public abstract Call<String> bindMobile(@Path("type") String paramString, @Body BindMobileRequestBody paramBindMobileRequestBody);

  @POST("api/v3/user/secure/{type}")
  public abstract Call<String> bindThirdAccount(@Path("type") String paramString, @Body ThirdAccountRequestBody paramThirdAccountRequestBody);

  @POST("api/v1/share/secure/delete")
  public abstract Call<String> deleteShared(@Body DeleteSharedRequestBody paramDeleteSharedRequestBody);

  @POST("api/v1/device/secure/list")
  public abstract h<String> getDevices(@Body HashMap<String, String> paramHashMap);

  @POST("api/v1/nut/secure/getByShareRecord")
  public abstract h<String> getSharedNut(@Body HashMap<String, String> paramHashMap);

  @POST("api/v1/share/secure/list")
  public abstract Call<String> getSharedUsers(@Body HashMap<String, String> paramHashMap);

  @POST("api/v1/ios/secure/profile/modify")
  public abstract Call<String> modifyProfile(@Body HashMap<String, String> paramHashMap);

  @POST("api/v3/user/secure/profile/modify")
  public abstract h<String> modifyUser(@Body ModifyUserRequestBody paramModifyUserRequestBody);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.service.AccountService
 * JD-Core Version:    0.6.2
 */