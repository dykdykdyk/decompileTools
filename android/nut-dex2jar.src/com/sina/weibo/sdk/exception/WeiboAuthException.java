package com.sina.weibo.sdk.exception;

public class WeiboAuthException extends WeiboException
{
  private final String a;
  private final String b;

  public WeiboAuthException(String paramString1, String paramString2, String paramString3)
  {
    super(paramString3);
    this.a = paramString2;
    this.b = paramString1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.exception.WeiboAuthException
 * JD-Core Version:    0.6.2
 */