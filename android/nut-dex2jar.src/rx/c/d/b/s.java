package rx.c.d.b;

abstract class s<E> extends a<E>
{
  private static final Integer e = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);
  protected final int d;

  public s(int paramInt)
  {
    super(paramInt);
    this.d = Math.min(paramInt / 4, e.intValue());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.d.b.s
 * JD-Core Version:    0.6.2
 */