package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import android.view.View;
import com.google.android.gms.common.internal.ai;
import com.google.android.gms.internal.ar;
import com.google.android.gms.internal.au;
import com.google.android.gms.internal.av;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class p
{
  public Account a;
  public final Set<Scope> b = new HashSet();
  public int c;
  public View d;
  public String e;
  public String f;
  public final Map<a<?>, ai> g = new android.support.v4.f.a();
  public final Map<a<?>, b> h = new android.support.v4.f.a();
  private final Set<Scope> i = new HashSet();
  private final Context j;
  private int k = -1;
  private Looper l;
  private com.google.android.gms.common.b m = com.google.android.gms.common.b.a();
  private f<? extends au, av> n = ar.c;
  private final ArrayList<q> o = new ArrayList();
  private final ArrayList<r> p = new ArrayList();

  public p(Context paramContext)
  {
    this.j = paramContext;
    this.l = paramContext.getMainLooper();
    this.e = paramContext.getPackageName();
    this.f = paramContext.getClass().getName();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.api.p
 * JD-Core Version:    0.6.2
 */