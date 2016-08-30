package rx.c.d.a;

import java.util.AbstractQueue;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReferenceArray;
import rx.c.d.b.i;

abstract class a<E> extends AbstractQueue<E>
{
  protected final AtomicReferenceArray<E> a;
  protected final int b;

  public a(int paramInt)
  {
    paramInt = i.a(paramInt);
    this.b = (paramInt - 1);
    this.a = new AtomicReferenceArray(paramInt);
  }

  protected final int a(long paramLong)
  {
    return (int)paramLong & this.b;
  }

  protected final E a(int paramInt)
  {
    return this.a.get(paramInt);
  }

  public void clear()
  {
    while ((poll() != null) || (!isEmpty()));
  }

  public Iterator<E> iterator()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.d.a.a
 * JD-Core Version:    0.6.2
 */