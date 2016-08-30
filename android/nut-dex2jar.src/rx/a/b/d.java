package rx.a.b;

import android.os.Handler;
import java.util.concurrent.TimeUnit;
import rx.a.a.b;
import rx.aa;
import rx.f.c;
import rx.s;

final class d extends s
{
  final Handler a;
  private final c b = new c();

  d(Handler paramHandler)
  {
    this.a = paramHandler;
  }

  public final aa a(rx.b.a parama)
  {
    return a(parama, 0L, TimeUnit.MILLISECONDS);
  }

  public final aa a(rx.b.a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    if (this.b.a)
      return rx.f.h.b();
    rx.a.a.a.a().b();
    parama = new rx.c.c.h(b.a(parama));
    parama.a(this.b);
    this.b.a(parama);
    this.a.postDelayed(parama, paramTimeUnit.toMillis(paramLong));
    parama.a(rx.f.h.a(new e(this, parama)));
    return parama;
  }

  public final boolean b()
  {
    return this.b.a;
  }

  public final void n_()
  {
    this.b.n_();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.a.b.d
 * JD-Core Version:    0.6.2
 */