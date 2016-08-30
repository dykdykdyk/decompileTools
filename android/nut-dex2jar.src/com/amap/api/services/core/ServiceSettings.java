package com.amap.api.services.core;

public class ServiceSettings
{
  public static final String CHINESE = "zh-CN";
  public static final String ENGLISH = "en";
  public static final int HTTP = 1;
  public static final int HTTPS = 2;
  private static ServiceSettings c;
  private String a = "zh-CN";
  private int b = 1;
  private int d = 20000;
  private int e = 20000;

  public static ServiceSettings getInstance()
  {
    if (c == null)
      c = new ServiceSettings();
    return c;
  }

  public int getConnectionTimeOut()
  {
    return this.d;
  }

  public String getLanguage()
  {
    return this.a;
  }

  public int getProtocol()
  {
    return this.b;
  }

  public int getSoTimeOut()
  {
    return this.e;
  }

  public void setApiKey(String paramString)
  {
    ak.a(paramString);
  }

  public void setConnectionTimeOut(int paramInt)
  {
    if (paramInt < 5000)
    {
      this.d = 5000;
      return;
    }
    if (paramInt > 30000)
    {
      this.d = 30000;
      return;
    }
    this.d = paramInt;
  }

  public void setLanguage(String paramString)
  {
    if (("en".equals(paramString)) || ("zh-CN".equals(paramString)))
      this.a = paramString;
  }

  public void setProtocol(int paramInt)
  {
    this.b = paramInt;
  }

  public void setSoTimeOut(int paramInt)
  {
    if (paramInt < 5000)
    {
      this.e = 5000;
      return;
    }
    if (paramInt > 30000)
    {
      this.e = 30000;
      return;
    }
    this.e = paramInt;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.ServiceSettings
 * JD-Core Version:    0.6.2
 */