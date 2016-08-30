package u.aly;

import android.os.Looper;

final class ek
  implements Runnable
{
  ek(ej paramej)
  {
  }

  public final void run()
  {
    Looper.prepare();
    if (this.a.h == null)
      this.a.h = new eu(this.a);
    ej localej = this.a;
    long l = System.currentTimeMillis();
    localej.h.sendEmptyMessageDelayed(48, fb.a(l, 1001));
    localej.h.sendEmptyMessageDelayed(49, fb.a(l, 1002));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.ek
 * JD-Core Version:    0.6.2
 */