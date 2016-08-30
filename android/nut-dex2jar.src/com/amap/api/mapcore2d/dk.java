package com.amap.api.mapcore2d;

import java.util.HashMap;
import java.util.Map;

class dk extends fb
{
  private Map<String, String> a = new HashMap();
  private String e;
  private Map<String, String> f = new HashMap();

  void a(String paramString)
  {
    this.e = paramString;
  }

  void a(Map<String, String> paramMap)
  {
    this.a.clear();
    this.a.putAll(paramMap);
  }

  public Map<String, String> b()
  {
    return this.a;
  }

  void b(Map<String, String> paramMap)
  {
    this.f.clear();
    this.f.putAll(paramMap);
  }

  public Map<String, String> c()
  {
    return this.f;
  }

  public String d()
  {
    return this.e;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.dk
 * JD-Core Version:    0.6.2
 */