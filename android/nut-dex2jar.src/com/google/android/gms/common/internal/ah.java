package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.internal.av;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class ah
{
  public final Account a;
  final Set<Scope> b;
  public final String c;
  final String d;
  public final av e;
  public Integer f;
  private final Set<Scope> g;
  private final Map<a<?>, ai> h;
  private final int i;
  private final View j;

  public ah(Account paramAccount, Set<Scope> paramSet, Map<a<?>, ai> paramMap, int paramInt, View paramView, String paramString1, String paramString2, av paramav)
  {
    this.a = paramAccount;
    if (paramSet == null);
    for (paramAccount = Collections.EMPTY_SET; ; paramAccount = Collections.unmodifiableSet(paramSet))
    {
      this.g = paramAccount;
      paramAccount = paramMap;
      if (paramMap == null)
        paramAccount = Collections.EMPTY_MAP;
      this.h = paramAccount;
      this.j = paramView;
      this.i = paramInt;
      this.c = paramString1;
      this.d = paramString2;
      this.e = paramav;
      paramAccount = new HashSet(this.g);
      paramSet = this.h.values().iterator();
      while (paramSet.hasNext())
        paramAccount.addAll(((ai)paramSet.next()).a);
    }
    this.b = Collections.unmodifiableSet(paramAccount);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.ah
 * JD-Core Version:    0.6.2
 */