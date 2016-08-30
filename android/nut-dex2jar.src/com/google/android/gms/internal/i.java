package com.google.android.gms.internal;

import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.internal.bn;
import java.util.Arrays;

public final class i<O extends b>
{
  final a<O> a;
  private final O b;

  public final boolean equals(Object paramObject)
  {
    if (paramObject == this);
    do
    {
      return true;
      if (!(paramObject instanceof i))
        return false;
      paramObject = (i)paramObject;
    }
    while ((bn.a(this.a, paramObject.a)) && (bn.a(this.b, paramObject.b)));
    return false;
  }

  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { this.a, this.b });
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.i
 * JD-Core Version:    0.6.2
 */