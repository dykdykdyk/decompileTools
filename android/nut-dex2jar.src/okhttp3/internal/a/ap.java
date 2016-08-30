package okhttp3.internal.a;

public final class ap
{
  int a;
  int b;
  int c;
  final int[] d = new int[10];

  final int a()
  {
    if ((this.a & 0x2) != 0)
      return this.d[1];
    return -1;
  }

  final ap a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 >= this.d.length)
      return this;
    int i = 1 << paramInt1;
    this.a |= i;
    if ((paramInt2 & 0x1) != 0)
    {
      this.b |= i;
      if ((paramInt2 & 0x2) == 0)
        break label86;
    }
    label86: for (this.c = (i | this.c); ; this.c = ((i ^ 0xFFFFFFFF) & this.c))
    {
      this.d[paramInt1] = paramInt3;
      return this;
      this.b &= (i ^ 0xFFFFFFFF);
      break;
    }
  }

  final boolean a(int paramInt)
  {
    return (1 << paramInt & this.a) != 0;
  }

  public final int b()
  {
    if ((this.a & 0x80) != 0)
      return this.d[7];
    return 65536;
  }

  final int b(int paramInt)
  {
    int j = 0;
    if ((1 << paramInt & this.c) != 0)
    {
      i = 1;
      if (i == 0)
        break label51;
    }
    label51: for (int i = 2; ; i = 0)
    {
      if ((1 << paramInt & this.b) != 0)
        j = 1;
      paramInt = i;
      if (j != 0)
        paramInt = i | 0x1;
      return paramInt;
      i = 0;
      break;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.ap
 * JD-Core Version:    0.6.2
 */