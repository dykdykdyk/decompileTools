package com.sina.weibo.sdk.exception;

public class WeiboHttpException extends WeiboException
{
  private final int a;

  public WeiboHttpException(String paramString, int paramInt)
  {
    super(paramString);
    this.a = paramInt;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.exception.WeiboHttpException
 * JD-Core Version:    0.6.2
 */