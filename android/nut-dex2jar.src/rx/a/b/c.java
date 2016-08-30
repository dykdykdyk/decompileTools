package rx.a.b;

import android.os.Handler;
import rx.r;
import rx.s;

public final class c extends r
{
  private final Handler b;

  c(Handler paramHandler)
  {
    this.b = paramHandler;
  }

  public final s createWorker()
  {
    return new d(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.a.b.c
 * JD-Core Version:    0.6.2
 */