package com.amap.api.services.core;

public class h
{
  public static final String[] a = { "com.amap.api.services" };

  public static ar a(boolean paramBoolean)
  {
    try
    {
      ar localar = new ar.a("sea", "3.2.1", "AMAP SDK Android Search 3.2.1").a(a).a(paramBoolean).a();
      return localar;
    }
    catch (ai localai)
    {
      i.a(localai, "ConfigableConst", "getSDKInfo");
    }
    return null;
  }

  public static String a()
  {
    if (ServiceSettings.getInstance().getProtocol() == 1)
      return "http://restapi.amap.com/v3";
    return "https://restapi.amap.com/v3";
  }

  public static ar b(boolean paramBoolean)
  {
    try
    {
      ar localar = new ar.a("cloud", "3.2.1", "AMAP SDK Android Search 3.2.1").a(a).a(paramBoolean).a();
      return localar;
    }
    catch (ai localai)
    {
      i.a(localai, "ConfigableConst", "getCloudSDKInfo");
    }
    return null;
  }

  public static String b()
  {
    if (ServiceSettings.getInstance().getProtocol() == 1)
      return "http://yuntuapi.amap.com";
    return "https://yuntuapi.amap.com";
  }

  public static String c()
  {
    return ServiceSettings.getInstance().getLanguage();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.h
 * JD-Core Version:    0.6.2
 */