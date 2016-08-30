package com.google.android.gms.internal;

import android.os.DeadObjectException;
import android.util.SparseArray;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.u;
import java.util.Set;

public final class h extends g
{
  public final l<? extends u, com.google.android.gms.common.api.g> c;

  public final void a()
    throws DeadObjectException
  {
    l.a();
  }

  public final void a(SparseArray<z> paramSparseArray)
  {
    paramSparseArray = (z)paramSparseArray.get(this.a);
    if (paramSparseArray != null)
    {
      l locall = this.c;
      paramSparseArray.b.add(locall);
      locall.a(paramSparseArray.c);
    }
  }

  public final void a(Status paramStatus)
  {
    this.c.b(paramStatus);
  }

  public final boolean b()
  {
    return this.c.d();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.h
 * JD-Core Version:    0.6.2
 */