package android.support.v4.f;

public final class c
{
  static final int[] a = new int[0];
  static final long[] b = new long[0];
  static final Object[] c = new Object[0];

  public static int a(int paramInt)
  {
    return c(paramInt * 4) / 4;
  }

  public static int a(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int i = paramInt1 - 1;
    paramInt1 = 0;
    while (paramInt1 <= i)
    {
      int j = paramInt1 + i >>> 1;
      int k = paramArrayOfInt[j];
      if (k < paramInt2)
      {
        paramInt1 = j + 1;
      }
      else
      {
        i = j;
        if (k <= paramInt2)
          break label59;
        i = j - 1;
      }
    }
    i = paramInt1 ^ 0xFFFFFFFF;
    label59: return i;
  }

  public static int a(long[] paramArrayOfLong, int paramInt, long paramLong)
  {
    int i = paramInt - 1;
    paramInt = 0;
    while (paramInt <= i)
    {
      int j = paramInt + i >>> 1;
      long l = paramArrayOfLong[j];
      if (l < paramLong)
      {
        paramInt = j + 1;
      }
      else
      {
        i = j;
        if (l <= paramLong)
          break label67;
        i = j - 1;
      }
    }
    i = paramInt ^ 0xFFFFFFFF;
    label67: return i;
  }

  public static boolean a(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }

  public static int b(int paramInt)
  {
    return c(paramInt * 8) / 8;
  }

  private static int c(int paramInt)
  {
    int i = 4;
    while (true)
    {
      int j = paramInt;
      if (i < 32)
      {
        if (paramInt <= (1 << i) - 12)
          j = (1 << i) - 12;
      }
      else
        return j;
      i += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.f.c
 * JD-Core Version:    0.6.2
 */