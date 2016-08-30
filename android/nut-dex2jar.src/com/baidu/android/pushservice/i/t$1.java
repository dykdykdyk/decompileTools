package com.baidu.android.pushservice.i;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.baidu.android.pushservice.util.m;

final class t$1 extends Thread
{
  t$1(Context paramContext, String paramString)
  {
  }

  public final void run()
  {
    SharedPreferences localSharedPreferences = this.a.getSharedPreferences("pst", 4);
    long l = localSharedPreferences.getLong(this.b, 0L);
    if (System.currentTimeMillis() - l < 1800000L)
      return;
    if (this.b.equals("039912"));
    for (Object localObject = m.x(this.a); ; localObject = m.y(this.a))
    {
      t.a(this.a, this.b, 0, (String)localObject);
      localObject = localSharedPreferences.edit();
      ((SharedPreferences.Editor)localObject).putLong(this.b, System.currentTimeMillis());
      ((SharedPreferences.Editor)localObject).commit();
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.i.t.1
 * JD-Core Version:    0.6.2
 */