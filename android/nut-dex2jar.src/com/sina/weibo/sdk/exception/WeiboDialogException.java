package com.sina.weibo.sdk.exception;

public class WeiboDialogException extends WeiboException
{
  private int a;
  private String b;

  public WeiboDialogException(String paramString1, int paramInt, String paramString2)
  {
    super(paramString1);
    this.a = paramInt;
    this.b = paramString2;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.exception.WeiboDialogException
 * JD-Core Version:    0.6.2
 */