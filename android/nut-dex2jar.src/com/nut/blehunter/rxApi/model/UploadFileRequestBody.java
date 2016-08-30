package com.nut.blehunter.rxApi.model;

public class UploadFileRequestBody
{
  public final String fileType;
  public final String tagId;

  public UploadFileRequestBody(String paramString1, String paramString2)
  {
    this.tagId = paramString1;
    this.fileType = paramString2;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.model.UploadFileRequestBody
 * JD-Core Version:    0.6.2
 */