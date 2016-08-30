package io.fabric.sdk.android;

import android.app.Application;
import android.content.Context;
import android.os.Build.VERSION;
import java.util.Set;

public final class a
{
  public b a;
  private final Application b;

  public a(Context paramContext)
  {
    this.b = ((Application)paramContext.getApplicationContext());
    if (Build.VERSION.SDK_INT >= 14)
      this.a = new b(this.b);
  }

  public final boolean a(d paramd)
  {
    if (this.a != null)
    {
      b localb = this.a;
      if (localb.b != null)
      {
        paramd = new c(localb, paramd);
        localb.b.registerActivityLifecycleCallbacks(paramd);
        localb.a.add(paramd);
      }
      for (int i = 1; i != 0; i = 0)
        return true;
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.a
 * JD-Core Version:    0.6.2
 */