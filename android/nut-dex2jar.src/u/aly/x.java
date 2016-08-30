package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.umeng.analytics.aa;

public final class x
  implements p
{
  public int a;
  public int b;
  public long c;
  long d = 0L;
  long e = 0L;
  private final int f = 3600000;
  private int g;
  private Context h;

  public x(Context paramContext)
  {
    this.h = paramContext.getApplicationContext();
    paramContext = paramContext.getSharedPreferences("umeng_general_config", 0);
    this.a = paramContext.getInt("successful_request", 0);
    this.b = paramContext.getInt("failed_requests ", 0);
    this.g = paramContext.getInt("last_request_spent_ms", 0);
    this.c = paramContext.getLong("last_request_time", 0L);
    this.d = paramContext.getLong("last_req", 0L);
  }

  public final void a()
  {
    this.d = System.currentTimeMillis();
  }

  public final void b()
  {
    this.g = ((int)(System.currentTimeMillis() - this.d));
  }

  public final void c()
  {
    this.a += 1;
    this.c = this.d;
  }

  public final void d()
  {
    this.b += 1;
  }

  public final boolean e()
  {
    int i;
    if (this.c == 0L)
    {
      i = 1;
      if (aa.a(this.h).f())
        break label41;
    }
    label41: for (int j = 1; ; j = 0)
    {
      if ((i == 0) || (j == 0))
        break label46;
      return true;
      i = 0;
      break;
    }
    label46: return false;
  }

  public final void f()
  {
    this.h.getSharedPreferences("umeng_general_config", 0).edit().putInt("successful_request", this.a).putInt("failed_requests ", this.b).putInt("last_request_spent_ms", this.g).putLong("last_request_time", this.c).putLong("last_req", this.d).commit();
  }

  public final void g()
  {
    this.h.getSharedPreferences("umeng_general_config", 0).edit().putLong("first_activate_time", System.currentTimeMillis()).commit();
  }

  public final boolean h()
  {
    boolean bool = false;
    if (this.e == 0L)
      this.e = this.h.getSharedPreferences("umeng_general_config", 0).getLong("first_activate_time", 0L);
    if (this.e == 0L)
      bool = true;
    return bool;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.x
 * JD-Core Version:    0.6.2
 */