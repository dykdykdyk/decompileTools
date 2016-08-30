package com.sina.weibo.sdk.api.a;

import android.os.Bundle;

public final class h extends c
{
  public h()
  {
  }

  public h(Bundle paramBundle)
  {
    this.b = paramBundle.getInt("_weibo_resp_errcode");
    this.c = paramBundle.getString("_weibo_resp_errstr");
    this.a = paramBundle.getString("_weibo_transaction");
    this.d = paramBundle.getString("_weibo_appPackage");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.api.a.h
 * JD-Core Version:    0.6.2
 */