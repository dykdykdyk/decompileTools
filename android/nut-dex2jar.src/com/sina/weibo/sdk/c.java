package com.sina.weibo.sdk;

import android.text.TextUtils;

public final class c
{
  public String a;
  public int b;

  public final boolean a()
  {
    return (!TextUtils.isEmpty(this.a)) && (this.b > 0);
  }

  public final String toString()
  {
    return "WeiboInfo: PackageName = " + this.a + ", supportApi = " + this.b;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.c
 * JD-Core Version:    0.6.2
 */