package rx.c.d.b;

import sun.misc.Unsafe;

abstract class p<E> extends l<E>
{
  protected static final long e = y.a(p.class, "producerIndex");
  volatile long producerIndex;

  public p(int paramInt)
  {
    super(paramInt);
  }

  protected final void d(long paramLong)
  {
    y.a.putOrderedLong(this, e, paramLong);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.d.b.p
 * JD-Core Version:    0.6.2
 */