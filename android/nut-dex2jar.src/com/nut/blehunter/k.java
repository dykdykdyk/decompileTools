package com.nut.blehunter;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import b.a.a;
import com.nut.blehunter.d.e;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.text.DateFormat;
import java.util.Date;

public final class k
{
  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = null;
    Object localObject1 = paramContext.getPackageManager();
    try
    {
      paramContext = ((PackageManager)localObject1).getPackageInfo(paramContext.getPackageName(), 0);
      localObject2 = Build.MODEL;
      localObject1 = localObject2;
      if (!((String)localObject2).startsWith(Build.MANUFACTURER))
        localObject1 = Build.MANUFACTURER + " " + (String)localObject2;
      localObject2 = new File(paramString1);
      if (!((File)localObject2).exists())
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("Android version: " + Build.VERSION.SDK_INT + "\n");
        localStringBuilder.append("Device: " + (String)localObject1 + "\n");
        localObject1 = new StringBuilder("App version: ");
        if (paramContext != null)
          break label227;
        paramContext = "(null)";
        label164: localStringBuilder.append(paramContext + "\n\n");
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      try
      {
        Object localObject2;
        paramContext = new FileWriter((File)localObject2, true);
        if (localStringBuilder != null)
          paramContext.append(localStringBuilder.toString());
        while (true)
        {
          paramContext.append(paramString2);
          paramContext.close();
          return paramString1;
          paramContext = paramContext;
          paramContext = null;
          break;
          label227: paramContext = Integer.valueOf(paramContext.versionCode);
          break label164;
          paramContext.append("\n");
        }
      }
      catch (IOException paramContext)
      {
        a.d("write log file exception:%s", new Object[] { paramContext.toString() });
      }
    }
    return paramString1;
  }

  public static String a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = null;
    Object localObject = paramContext.getPackageManager();
    while (true)
      try
      {
        paramContext = ((PackageManager)localObject).getPackageInfo(paramContext.getPackageName(), 0);
        localObject = Build.MODEL;
        if (!((String)localObject).startsWith(Build.MANUFACTURER))
        {
          localObject = Build.MANUFACTURER + " " + (String)localObject;
          if (paramBoolean)
          {
            paramString1 = paramString1 + e.a.format(new Date()) + "_exception.log";
            localFile = new File(paramString1);
            if (!localFile.exists())
            {
              localStringBuilder = new StringBuilder();
              localStringBuilder.append("Android version: " + Build.VERSION.SDK_INT + "\n");
              localStringBuilder.append("Device: " + (String)localObject + "\n");
              localObject = new StringBuilder("App version: ");
              if (paramContext != null)
                continue;
              paramContext = "(null)";
              localStringBuilder.append(paramContext + "\n\n");
            }
          }
        }
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        try
        {
          File localFile;
          paramContext = new FileWriter(localFile, true);
          if (localStringBuilder != null)
          {
            paramContext.append(localStringBuilder.toString());
            paramContext.append(paramString2);
            paramContext.close();
            return paramString1;
            paramContext = paramContext;
            paramContext = null;
            continue;
            paramString1 = paramString1 + e.b.format(new Date()) + ".log";
            continue;
            paramContext = Integer.valueOf(paramContext.versionCode);
          }
          else
          {
            paramContext.append("\n");
          }
        }
        catch (IOException paramContext)
        {
          a.d("write log file exception:%s", new Object[] { paramContext.toString() });
          return paramString1;
        }
      }
  }

  public static String a(Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
    paramThrowable.printStackTrace(localPrintWriter);
    for (paramThrowable = paramThrowable.getCause(); paramThrowable != null; paramThrowable = paramThrowable.getCause())
      paramThrowable.printStackTrace(localPrintWriter);
    localPrintWriter.close();
    paramThrowable = localStringWriter.toString();
    try
    {
      localStringWriter.close();
      return paramThrowable;
    }
    catch (IOException localIOException)
    {
      a.d("read exception %s ", new Object[] { localIOException.toString() });
    }
    return paramThrowable;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.k
 * JD-Core Version:    0.6.2
 */