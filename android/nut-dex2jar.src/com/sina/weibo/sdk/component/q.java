package com.sina.weibo.sdk.component;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.text.TextUtils;
import com.sina.weibo.sdk.d.p;

public final class q extends e
{
  com.sina.weibo.sdk.a.c a;
  String b;
  r c;
  String h;
  private String i;
  private String j;
  private String k;
  private String l;
  private String m;
  private String n;
  private String o;
  private String p;

  public q(Context paramContext)
  {
    super(paramContext);
    this.f = c.c;
  }

  public final void a(Activity paramActivity)
  {
    WeiboSdkBrowser.a(paramActivity, this.b, this.h);
  }

  protected final void a(Bundle paramBundle)
  {
    this.k = paramBundle.getString("source");
    this.i = paramBundle.getString("packagename");
    this.l = paramBundle.getString("key_hash");
    this.j = paramBundle.getString("access_token");
    this.m = paramBundle.getString("fuid");
    this.o = paramBundle.getString("q");
    this.n = paramBundle.getString("content");
    this.p = paramBundle.getString("category");
    this.b = paramBundle.getString("key_listener");
    if (!TextUtils.isEmpty(this.b))
      this.a = j.a(this.d).a(this.b);
    this.h = paramBundle.getString("key_widget_callback");
    if (!TextUtils.isEmpty(this.h))
      this.c = j.a(this.d).c(this.h);
    paramBundle = Uri.parse(this.e).buildUpon();
    paramBundle.appendQueryParameter("version", "0031405000");
    if (!TextUtils.isEmpty(this.k))
      paramBundle.appendQueryParameter("source", this.k);
    if (!TextUtils.isEmpty(this.j))
      paramBundle.appendQueryParameter("access_token", this.j);
    String str = p.b(this.d, this.k);
    if (!TextUtils.isEmpty(str))
      paramBundle.appendQueryParameter("aid", str);
    if (!TextUtils.isEmpty(this.i))
      paramBundle.appendQueryParameter("packagename", this.i);
    if (!TextUtils.isEmpty(this.l))
      paramBundle.appendQueryParameter("key_hash", this.l);
    if (!TextUtils.isEmpty(this.m))
      paramBundle.appendQueryParameter("fuid", this.m);
    if (!TextUtils.isEmpty(this.o))
      paramBundle.appendQueryParameter("q", this.o);
    if (!TextUtils.isEmpty(this.n))
      paramBundle.appendQueryParameter("content", this.n);
    if (!TextUtils.isEmpty(this.p))
      paramBundle.appendQueryParameter("category", this.p);
    this.e = paramBundle.build().toString();
  }

  public final void b(Bundle paramBundle)
  {
    this.i = this.d.getPackageName();
    if (!TextUtils.isEmpty(this.i))
      this.l = com.sina.weibo.sdk.d.j.a(p.a(this.d, this.i));
    paramBundle.putString("access_token", this.j);
    paramBundle.putString("source", this.k);
    paramBundle.putString("packagename", this.i);
    paramBundle.putString("key_hash", this.l);
    paramBundle.putString("fuid", this.m);
    paramBundle.putString("q", this.o);
    paramBundle.putString("content", this.n);
    paramBundle.putString("category", this.p);
    j localj = j.a(this.d);
    if (this.a != null)
    {
      this.b = String.valueOf(System.currentTimeMillis());
      localj.a(this.b, this.a);
      paramBundle.putString("key_listener", this.b);
    }
    if (this.c != null)
    {
      this.h = String.valueOf(System.currentTimeMillis());
      localj.a(this.h, this.c);
      paramBundle.putString("key_widget_callback", this.h);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.component.q
 * JD-Core Version:    0.6.2
 */