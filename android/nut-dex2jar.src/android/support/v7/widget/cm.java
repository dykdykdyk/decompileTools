package android.support.v7.widget;

import android.util.SparseIntArray;

public abstract class cm
{
  final SparseIntArray a = new SparseIntArray();
  private boolean b = false;

  public static int c(int paramInt1, int paramInt2)
  {
    int m = 0;
    int j = 0;
    int i = 0;
    if (m < paramInt1)
    {
      int n = i + 1;
      int k;
      if (n == paramInt2)
      {
        k = j + 1;
        i = 0;
      }
      while (true)
      {
        m += 1;
        j = k;
        break;
        k = j;
        i = n;
        if (n > paramInt2)
        {
          i = 1;
          k = j + 1;
        }
      }
    }
    paramInt1 = j;
    if (i + 1 > paramInt2)
      paramInt1 = j + 1;
    return paramInt1;
  }

  public int a(int paramInt1, int paramInt2)
  {
    if (1 == paramInt2)
      return 0;
    int j;
    int i;
    int k;
    if ((this.b) && (this.a.size() > 0))
    {
      j = this.a.size() - 1;
      i = 0;
      while (i <= j)
      {
        k = i + j >>> 1;
        if (this.a.keyAt(k) < paramInt1)
          i = k + 1;
        else
          j = k - 1;
      }
      i -= 1;
      if ((i >= 0) && (i < this.a.size()))
      {
        i = this.a.keyAt(i);
        if (i < 0)
          break label195;
        j = this.a.get(i) + 1;
        i += 1;
      }
    }
    while (true)
    {
      k = j;
      j = i;
      i = k;
      label139: if (j < paramInt1)
      {
        k = i + 1;
        if (k == paramInt2)
          i = 0;
        while (true)
        {
          j += 1;
          break label139;
          i = -1;
          break;
          i = k;
          if (k > paramInt2)
            i = 1;
        }
      }
      if (i + 1 > paramInt2)
        break;
      return i;
      label195: i = 0;
      j = 0;
    }
  }

  final int b(int paramInt1, int paramInt2)
  {
    int i;
    if (!this.b)
      i = a(paramInt1, paramInt2);
    int j;
    do
    {
      return i;
      j = this.a.get(paramInt1, -1);
      i = j;
    }
    while (j != -1);
    paramInt2 = a(paramInt1, paramInt2);
    this.a.put(paramInt1, paramInt2);
    return paramInt2;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.cm
 * JD-Core Version:    0.6.2
 */