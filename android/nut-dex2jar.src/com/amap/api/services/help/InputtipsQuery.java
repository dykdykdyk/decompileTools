package com.amap.api.services.help;

public class InputtipsQuery
  implements Cloneable
{
  private String a;
  private String b;
  private boolean c = false;
  private String d = null;

  public InputtipsQuery(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = paramString2;
  }

  public String getCity()
  {
    return this.b;
  }

  public boolean getCityLimit()
  {
    return this.c;
  }

  public String getKeyword()
  {
    return this.a;
  }

  public String getType()
  {
    return this.d;
  }

  public void setCityLimit(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }

  public void setType(String paramString)
  {
    this.d = paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.help.InputtipsQuery
 * JD-Core Version:    0.6.2
 */