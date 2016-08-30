package com.nut.blehunter;

import android.content.Context;
import android.content.Intent;

public final class b
  implements Thread.UncaughtExceptionHandler
{
  private Thread.UncaughtExceptionHandler a = Thread.getDefaultUncaughtExceptionHandler();
  private String b;
  private Context c;

  public b(Context paramContext, String paramString)
  {
    this.c = paramContext;
    this.b = paramString;
  }

  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    String str1 = k.a(paramThrowable);
    String str2 = k.a(this.c, this.b, str1, true);
    Intent localIntent = new Intent();
    localIntent.setAction("com.nutspace.app.SEND_LOG");
    localIntent.putExtra("log", str1);
    localIntent.putExtra("file_path", str2);
    localIntent.setFlags(268435456);
    this.c.startActivity(localIntent);
    this.a.uncaughtException(paramThread, paramThrowable);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.b
 * JD-Core Version:    0.6.2
 */