package com.google.android.gms.common.internal;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.a.a;
import java.util.HashSet;
import java.util.Set;

final class au
{
  final av a;
  final Set<ServiceConnection> b;
  int c;
  boolean d;
  IBinder e;
  final at f;
  ComponentName g;

  public au(as paramas, at paramat)
  {
    this.f = paramat;
    this.a = new av(this);
    this.b = new HashSet();
    this.c = 2;
  }

  @TargetApi(14)
  public final void a()
  {
    this.c = 3;
    as.c(this.h);
    this.d = a.a(as.b(this.h), this.f.a(), this.a, 129);
    if (!this.d)
      this.c = 2;
    try
    {
      as.c(this.h);
      a.a(as.b(this.h), this.a);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
  }

  public final void a(ServiceConnection paramServiceConnection)
  {
    as.c(this.h);
    as.b(this.h);
    this.f.a();
    a.a(paramServiceConnection);
    this.b.add(paramServiceConnection);
  }

  public final boolean b()
  {
    return this.b.isEmpty();
  }

  public final boolean b(ServiceConnection paramServiceConnection)
  {
    return this.b.contains(paramServiceConnection);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.au
 * JD-Core Version:    0.6.2
 */