package com.google.zxing.common.reedsolomon;

import java.util.ArrayList;
import java.util.List;

public final class d
{
  private final a a;
  private final List<b> b;

  public d(a parama)
  {
    this.a = parama;
    this.b = new ArrayList();
    this.b.add(new b(parama, new int[] { 1 }));
  }

  private b a(int paramInt)
  {
    if (paramInt >= this.b.size())
    {
      b localb = (b)this.b.get(this.b.size() - 1);
      int i = this.b.size();
      while (i <= paramInt)
      {
        a locala1 = this.a;
        a locala2 = this.a;
        int j = this.a.m;
        localb = localb.b(new b(locala1, new int[] { 1, locala2.i[(i - 1 + j)] }));
        this.b.add(localb);
        i += 1;
      }
    }
    return (b)this.b.get(paramInt);
  }

  public final void a(int[] paramArrayOfInt, int paramInt)
  {
    if (paramInt == 0)
      throw new IllegalArgumentException("No error correction bytes");
    int i = paramArrayOfInt.length - paramInt;
    if (i <= 0)
      throw new IllegalArgumentException("No data bytes provided");
    Object localObject = a(paramInt);
    int[] arrayOfInt = new int[i];
    System.arraycopy(paramArrayOfInt, 0, arrayOfInt, 0, i);
    localObject = new b(this.a, arrayOfInt).a(paramInt, 1).c(localObject)[1].a;
    int j = paramInt - localObject.length;
    paramInt = 0;
    while (paramInt < j)
    {
      paramArrayOfInt[(i + paramInt)] = 0;
      paramInt += 1;
    }
    System.arraycopy(localObject, 0, paramArrayOfInt, i + j, localObject.length);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.reedsolomon.d
 * JD-Core Version:    0.6.2
 */