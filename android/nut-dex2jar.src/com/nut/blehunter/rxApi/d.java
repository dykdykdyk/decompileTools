package com.nut.blehunter.rxApi;

import okhttp3.au;

public final class d extends h
{
  private final String a;

  public d(String paramString)
  {
    this.a = paramString;
  }

  protected final void a(au paramau)
  {
    paramau.b("Authorization", "Basic " + this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.d
 * JD-Core Version:    0.6.2
 */