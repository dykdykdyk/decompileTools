package com.nut.blehunter.rxApi.service;

import com.nut.blehunter.rxApi.model.CheckFirmwareVersionRequestBody;
import com.nut.blehunter.rxApi.model.DeclareLosingRequestBody;
import com.nut.blehunter.rxApi.model.FindRequestBody;
import com.nut.blehunter.rxApi.model.UpdateNutRequestBody;
import java.util.HashMap;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;
import rx.h;

public abstract interface NutService
{
  @POST("api/{v}/nut/secure/{type}")
  public abstract h<String> bindNut(@Path("v") String paramString1, @Path("type") String paramString2, @Body UpdateNutRequestBody paramUpdateNutRequestBody);

  @POST("api/v1/firmwareRecords/secure/last")
  public abstract Call<String> checkFirmwareVersion(@Body CheckFirmwareVersionRequestBody paramCheckFirmwareVersionRequestBody);

  @POST("api/v1/losingRecord/secure/{type}")
  public abstract Call<String> declareLosing(@Path("type") String paramString, @Body DeclareLosingRequestBody paramDeclareLosingRequestBody);

  @POST("api/v1/nut/secure/delete")
  public abstract Call<String> deleteNut(@Body HashMap<String, String> paramHashMap);

  @POST("api/v1/nut/secure/find")
  public abstract Call<String> findNut(@Body FindRequestBody paramFindRequestBody);

  @POST("api/v2/nut/secure/positionRecord")
  public abstract h<String> getFoundPositionRecords(@Body HashMap<String, String> paramHashMap);

  @GET("api/v1/nut/secure/list")
  public abstract h<String> getNuts();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.service.NutService
 * JD-Core Version:    0.6.2
 */