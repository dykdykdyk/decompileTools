package com.amap.api.services.core;

public class ai extends Exception
{
  private String a = "未知的错误";
  private int b = -1;

  public ai(String paramString)
  {
    super(paramString);
    this.a = paramString;
    a(paramString);
  }

  private void a(String paramString)
  {
    if ("IO 操作异常 - IOException".equals(paramString))
    {
      this.b = 21;
      return;
    }
    if ("socket 连接异常 - SocketException".equals(paramString))
    {
      this.b = 22;
      return;
    }
    if ("socket 连接超时 - SocketTimeoutException".equals(paramString))
    {
      this.b = 23;
      return;
    }
    if ("无效的参数 - IllegalArgumentException".equals(paramString))
    {
      this.b = 24;
      return;
    }
    if ("空指针异常 - NullPointException".equals(paramString))
    {
      this.b = 25;
      return;
    }
    if ("url异常 - MalformedURLException".equals(paramString))
    {
      this.b = 26;
      return;
    }
    if ("未知主机 - UnKnowHostException".equals(paramString))
    {
      this.b = 27;
      return;
    }
    if ("服务器连接失败 - UnknownServiceException".equals(paramString))
    {
      this.b = 28;
      return;
    }
    if ("协议解析错误 - ProtocolException".equals(paramString))
    {
      this.b = 29;
      return;
    }
    if ("http连接失败 - ConnectionException".equals(paramString))
    {
      this.b = 30;
      return;
    }
    if ("未知的错误".equals(paramString))
    {
      this.b = 31;
      return;
    }
    if ("key鉴权失败".equals(paramString))
    {
      this.b = 32;
      return;
    }
    if ("requeust is null".equals(paramString))
    {
      this.b = 1;
      return;
    }
    if ("request url is empty".equals(paramString))
    {
      this.b = 2;
      return;
    }
    if ("response is null".equals(paramString))
    {
      this.b = 3;
      return;
    }
    if ("thread pool has exception".equals(paramString))
    {
      this.b = 4;
      return;
    }
    if ("sdk name is invalid".equals(paramString))
    {
      this.b = 5;
      return;
    }
    if ("sdk info is null".equals(paramString))
    {
      this.b = 6;
      return;
    }
    if ("sdk packages is null".equals(paramString))
    {
      this.b = 7;
      return;
    }
    if ("线程池为空".equals(paramString))
    {
      this.b = 8;
      return;
    }
    if ("获取对象错误".equals(paramString))
    {
      this.b = 101;
      return;
    }
    this.b = -1;
  }

  public String a()
  {
    return this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.ai
 * JD-Core Version:    0.6.2
 */