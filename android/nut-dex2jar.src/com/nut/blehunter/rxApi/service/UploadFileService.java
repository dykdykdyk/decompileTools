package com.nut.blehunter.rxApi.service;

import okhttp3.al;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
import rx.h;

public abstract interface UploadFileService
{
  @Multipart
  @POST("api/v2/file/secure/upload")
  public abstract h<String> uploadFile(@Part("tagId") String paramString1, @Part("fileType") String paramString2, @Part al paramal);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.service.UploadFileService
 * JD-Core Version:    0.6.2
 */