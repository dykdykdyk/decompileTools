package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Intent;
import java.util.Arrays;

final class at
{
  private final String a;
  private final String b;
  private final ComponentName c;

  public at(String paramString1, String paramString2)
  {
    this.a = b.a(paramString1);
    this.b = b.a(paramString2);
    this.c = null;
  }

  public final Intent a()
  {
    if (this.a != null)
      return new Intent(this.a).setPackage(this.b);
    return new Intent().setComponent(this.c);
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      return true;
      if (!(paramObject instanceof at))
        return false;
      paramObject = (at)paramObject;
    }
    while ((bn.a(this.a, paramObject.a)) && (bn.a(this.c, paramObject.c)));
    return false;
  }

  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { this.a, this.c });
  }

  public final String toString()
  {
    if (this.a == null)
      return this.c.flattenToString();
    return this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.at
 * JD-Core Version:    0.6.2
 */