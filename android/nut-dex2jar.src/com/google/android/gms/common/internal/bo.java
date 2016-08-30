package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.List;

public final class bo
{
  private final List<String> a;
  private final Object b;

  private bo(Object paramObject)
  {
    this.b = b.a(paramObject);
    this.a = new ArrayList();
  }

  public final bo a(String paramString, Object paramObject)
  {
    List localList = this.a;
    paramString = (String)b.a(paramString);
    paramObject = String.valueOf(String.valueOf(paramObject));
    localList.add(String.valueOf(paramString).length() + 1 + String.valueOf(paramObject).length() + paramString + "=" + paramObject);
    return this;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(100).append(this.b.getClass().getSimpleName()).append('{');
    int j = this.a.size();
    int i = 0;
    while (i < j)
    {
      localStringBuilder.append((String)this.a.get(i));
      if (i < j - 1)
        localStringBuilder.append(", ");
      i += 1;
    }
    return '}';
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.bo
 * JD-Core Version:    0.6.2
 */