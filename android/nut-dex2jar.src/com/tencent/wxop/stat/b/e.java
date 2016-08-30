package com.tencent.wxop.stat.b;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import com.tencent.wxop.stat.t;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONObject;

final class e
{
  String a;
  String b = "2.0.3";
  DisplayMetrics c;
  int d = Build.VERSION.SDK_INT;
  String e = Build.MODEL;
  String f = Build.MANUFACTURER;
  String g = Locale.getDefault().getLanguage();
  String h;
  String i;
  String j;
  String k;
  int l = 0;
  String m = null;
  String n = null;
  Context o = null;
  String p = null;
  String q = null;
  String r = null;
  String s = null;

  private e(Context paramContext)
  {
    this.o = paramContext.getApplicationContext();
    this.c = l.d(this.o);
    this.a = l.i(this.o);
    this.h = t.b(this.o);
    this.i = l.h(this.o);
    this.j = TimeZone.getDefault().getID();
    this.l = l.b();
    this.k = l.m(this.o);
    this.m = this.o.getPackageName();
    if (this.d >= 14)
      this.p = l.r(this.o);
    this.q = l.g().toString();
    this.r = l.q(this.o);
    this.s = l.f();
    this.n = l.w(this.o);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.b.e
 * JD-Core Version:    0.6.2
 */