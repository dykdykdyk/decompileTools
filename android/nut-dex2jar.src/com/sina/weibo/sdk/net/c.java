package com.sina.weibo.sdk.net;

import android.content.Context;
import android.os.AsyncTask;
import com.sina.weibo.sdk.exception.WeiboException;

public final class c extends AsyncTask<Void, Void, b<String>>
{
  private final Context a;
  private final String b;
  private final k c;
  private final String d;
  private final h e;

  public c(Context paramContext, String paramString1, k paramk, String paramString2, h paramh)
  {
    this.a = paramContext;
    this.b = paramString1;
    this.c = paramk;
    this.d = paramString2;
    this.e = paramh;
  }

  private b<String> a()
  {
    try
    {
      b localb = new b(HttpManager.a(this.a, this.b, this.d, this.c));
      return localb;
    }
    catch (WeiboException localWeiboException)
    {
      return new b(localWeiboException);
    }
  }

  protected final void onPreExecute()
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.net.c
 * JD-Core Version:    0.6.2
 */