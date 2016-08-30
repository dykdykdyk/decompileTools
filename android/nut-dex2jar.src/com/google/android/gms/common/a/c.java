package com.google.android.gms.common.a;

import com.google.android.gms.internal.ac;

public final class c
{
  public static ac<Integer> a = ac.a("gms:common:stats:connections:level", Integer.valueOf(d.b));
  public static ac<String> b = ac.a("gms:common:stats:connections:ignored_calling_processes", "");
  public static ac<String> c = ac.a("gms:common:stats:connections:ignored_calling_services", "");
  public static ac<String> d = ac.a("gms:common:stats:connections:ignored_target_processes", "");
  public static ac<String> e = ac.a("gms:common:stats:connections:ignored_target_services", "com.google.android.gms.auth.GetToken");
  public static ac<Long> f = ac.a("gms:common:stats:connections:time_out_duration", Long.valueOf(600000L));
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.a.c
 * JD-Core Version:    0.6.2
 */