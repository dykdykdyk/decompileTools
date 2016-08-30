package com.baidu.android.pushservice.e;

import android.app.PendingIntent;
import android.content.Intent;
import android.text.TextUtils;

public class l
{
  public String a = "";
  public String b = "";
  public String c = "";
  public String d = "";
  public String e = "";
  public String f = "";
  public String g = "";
  public String h = "";
  public String i = "";
  public String j = "";

  public l()
  {
  }

  public l(Intent paramIntent)
  {
    PendingIntent localPendingIntent = (PendingIntent)paramIntent.getParcelableExtra("app");
    if (localPendingIntent != null)
      this.e = localPendingIntent.getTargetPackage();
    if (TextUtils.isEmpty(this.e))
      this.e = paramIntent.getStringExtra("pkg_name");
    this.d = paramIntent.getStringExtra("access_token");
    this.i = paramIntent.getStringExtra("secret_key");
    this.a = paramIntent.getStringExtra("method");
    this.b = paramIntent.getStringExtra("method_type");
    this.c = paramIntent.getStringExtra("method_version");
    this.h = paramIntent.getStringExtra("bduss");
    this.f = paramIntent.getStringExtra("appid");
    this.j = paramIntent.getStringExtra("is_baidu_internal_bind");
  }

  public l(String paramString1, String paramString2, String paramString3)
  {
    this.i = paramString2;
    this.f = paramString3;
    this.a = paramString1;
  }

  public String toString()
  {
    return "method=" + this.a + ", rsarsaAccessToken=" + this.d + ", packageName=" + this.e + ", appId=" + this.f + ", userId=" + this.g + ", rsaBduss=" + this.h + ", isInternalBind=" + this.j;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e.l
 * JD-Core Version:    0.6.2
 */