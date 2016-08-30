package rx.a.a;

import java.util.concurrent.atomic.AtomicReference;

public final class a
{
  private static final a a = new a();
  private final AtomicReference<b> b = new AtomicReference();

  public static a a()
  {
    return a;
  }

  public final b b()
  {
    if (this.b.get() == null)
      this.b.compareAndSet(null, b.a());
    return (b)this.b.get();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.a.a.a
 * JD-Core Version:    0.6.2
 */