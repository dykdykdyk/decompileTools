package com.sina.weibo.sdk.a;

import android.content.Context;
import android.os.Bundle;
import com.sina.weibo.sdk.d.p;

public final class a
{
  public String a = "";
  public String b = "";
  public String c = "";
  public String d = "";
  public String e = "";

  public a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramContext.getPackageName();
    this.e = p.a(paramContext, this.d);
  }

  public final Bundle a()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("appKey", this.a);
    localBundle.putString("redirectUri", this.b);
    localBundle.putString("scope", this.c);
    localBundle.putString("packagename", this.d);
    localBundle.putString("key_hash", this.e);
    return localBundle;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.a.a
 * JD-Core Version:    0.6.2
 */