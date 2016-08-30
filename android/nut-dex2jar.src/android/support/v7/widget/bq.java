package android.support.v7.widget;

final class bq
{
  long a = 0L;
  bq b;

  private void a()
  {
    if (this.b == null)
      this.b = new bq();
  }

  final void a(int paramInt)
  {
    bq localbq = this;
    while (paramInt >= 64)
    {
      localbq.a();
      localbq = localbq.b;
      paramInt -= 64;
    }
    localbq.a |= 1L << paramInt;
  }

  final void a(int paramInt, boolean paramBoolean)
  {
    boolean bool = paramBoolean;
    bq localbq = this;
    while (paramInt >= 64)
    {
      localbq.a();
      localbq = localbq.b;
      paramInt -= 64;
    }
    if ((localbq.a & 0x0) != 0L)
    {
      paramBoolean = true;
      label47: long l1 = (1L << paramInt) - 1L;
      long l2 = localbq.a;
      localbq.a = (((l1 ^ 0xFFFFFFFF) & localbq.a) << 1 | l2 & l1);
      if (!bool)
        break label132;
      localbq.a(paramInt);
    }
    while (true)
    {
      if ((!paramBoolean) && (localbq.b == null))
        return;
      localbq.a();
      localbq = localbq.b;
      paramInt = 0;
      bool = paramBoolean;
      break;
      paramBoolean = false;
      break label47;
      label132: localbq.b(paramInt);
    }
  }

  final void b(int paramInt)
  {
    bq localbq = this;
    while (paramInt >= 64)
    {
      if (localbq.b == null)
        return;
      localbq = localbq.b;
      paramInt -= 64;
    }
    localbq.a &= (1L << paramInt ^ 0xFFFFFFFF);
  }

  final boolean c(int paramInt)
  {
    bq localbq = this;
    while (paramInt >= 64)
    {
      localbq.a();
      localbq = localbq.b;
      paramInt -= 64;
    }
    return (localbq.a & 1L << paramInt) != 0L;
  }

  final boolean d(int paramInt)
  {
    bq localbq = this;
    while (paramInt >= 64)
    {
      localbq.a();
      localbq = localbq.b;
      paramInt -= 64;
    }
    long l1 = 1L << paramInt;
    if ((localbq.a & l1) != 0L);
    for (boolean bool = true; ; bool = false)
    {
      localbq.a &= (l1 ^ 0xFFFFFFFF);
      l1 -= 1L;
      long l2 = localbq.a;
      localbq.a = (Long.rotateRight((l1 ^ 0xFFFFFFFF) & localbq.a, 1) | l2 & l1);
      if (localbq.b != null)
      {
        if (localbq.b.c(0))
          localbq.a(63);
        localbq.b.d(0);
      }
      return bool;
    }
  }

  final int e(int paramInt)
  {
    if (this.b == null)
    {
      if (paramInt >= 64)
        return Long.bitCount(this.a);
      return Long.bitCount(this.a & (1L << paramInt) - 1L);
    }
    if (paramInt < 64)
      return Long.bitCount(this.a & (1L << paramInt) - 1L);
    return this.b.e(paramInt - 64) + Long.bitCount(this.a);
  }

  public final String toString()
  {
    if (this.b == null)
      return Long.toBinaryString(this.a);
    return this.b.toString() + "xx" + Long.toBinaryString(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.bq
 * JD-Core Version:    0.6.2
 */