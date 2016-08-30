package com.tencent.connect.b;

import android.app.Activity;
import com.tencent.open.utils.o;
import java.lang.ref.WeakReference;

final class b
  implements Runnable
{
  b(a parama, String paramString, com.tencent.tauth.b paramb)
  {
  }

  public final void run()
  {
    o.b(a.a, a.b);
    Activity localActivity = (Activity)a.e(this.c).get();
    if (localActivity != null)
      localActivity.runOnUiThread(new c(this, localActivity));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.b.b
 * JD-Core Version:    0.6.2
 */