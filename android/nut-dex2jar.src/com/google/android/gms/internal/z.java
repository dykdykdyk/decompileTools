package com.google.android.gms.internal;

import android.support.v4.f.a;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.j;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

public final class z
{
  static final l<?, ?>[] a = new l[0];
  final Set<l<?, ?>> b = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));
  final ab c = new aa(this);
  private final Map<h<?>, j> d = new a();

  public z(h<?> paramh, j paramj)
  {
    this.d.put(paramh, paramj);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.z
 * JD-Core Version:    0.6.2
 */