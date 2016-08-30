package com.nut.blehunter.rxApi.model;

public class DeleteSharedRequestBody
{
  public final String articleUUID;
  public final String userUUID;

  public DeleteSharedRequestBody(String paramString1, String paramString2)
  {
    this.articleUUID = paramString1;
    this.userUUID = paramString2;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.model.DeleteSharedRequestBody
 * JD-Core Version:    0.6.2
 */