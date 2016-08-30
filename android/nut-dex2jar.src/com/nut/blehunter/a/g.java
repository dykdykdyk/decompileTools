package com.nut.blehunter.a;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.io.File;
import java.util.Calendar;

final class g extends Handler
{
  g(f paramf)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 1:
      Object localObject1 = (Application)this.a.a.b;
      localObject1 = new File(((Context)localObject1).getFilesDir() + "/log");
      if (!((File)localObject1).exists())
        ((File)localObject1).mkdir();
      if (!new File(localObject1 + File.separator + "behavious.txt").exists())
        c.a(this.a.a);
      localObject1 = this.a.a;
      Object localObject2 = Calendar.getInstance();
      int i = ((Calendar)localObject2).get(6);
      long l1 = ((Calendar)localObject2).getTimeInMillis();
      long l2 = PreferenceManager.getDefaultSharedPreferences((Application)((c)localObject1).b).getLong("date", System.currentTimeMillis());
      localObject2 = Calendar.getInstance();
      ((Calendar)localObject2).setTimeInMillis(l2);
      if (((Calendar)localObject2).get(6) != i)
      {
        ((c)localObject1).a(l1);
        i = 1;
        if (i == 0)
        {
          localObject1 = (Application)this.a.a.b;
          localObject1 = new File(((Context)localObject1).getFilesDir() + "/log" + File.separator + "behavious.txt");
          if ((!((File)localObject1).exists()) || (((File)localObject1).length() >= 30720L))
            break label439;
        }
      }
      for (i = 0; ; i = 1)
      {
        if (i != 0)
        {
          c.b(this.a.a);
          c.a(this.a.a);
        }
        localObject1 = this.a.a;
        localObject2 = c.a(paramMessage);
        if (TextUtils.isEmpty((CharSequence)localObject2))
          break;
        if (c.a("Launch", paramMessage))
          ((c)localObject1).c = System.currentTimeMillis();
        if (c.a("Terminate", paramMessage))
          ((c)localObject1).c = ((System.currentTimeMillis() - ((c)localObject1).c) / 1000L);
        paramMessage = (String)localObject2 + "\r\n";
        a.a((Application)((c)localObject1).b, paramMessage);
        return;
        i = 0;
        break label225;
      }
    case 2:
      label225: c.c(this.a.a);
      label439: return;
    case 3:
    }
    c.b(this.a.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.a.g
 * JD-Core Version:    0.6.2
 */