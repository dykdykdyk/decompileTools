package com.baidu.android.pushservice.d;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.os.Environment;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.util.m;
import java.io.File;

public class b
{
  private static b.a a = null;

  public static SQLiteDatabase a(Context paramContext)
  {
    Object localObject = null;
    try
    {
      boolean bool = m.a();
      if (!bool)
        paramContext = localObject;
      while (true)
      {
        return paramContext;
        b.a locala = b(paramContext);
        paramContext = localObject;
        if (locala != null)
          try
          {
            paramContext = locala.getWritableDatabase();
          }
          catch (SQLException paramContext)
          {
            a = null;
            a.c("LightAppDatabase", "getWritableDb exception: " + paramContext);
            paramContext = localObject;
          }
      }
    }
    finally
    {
    }
    throw paramContext;
  }

  private static b.a b(Context paramContext)
  {
    try
    {
      File localFile = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "baidu/pushservice/database");
      if (!localFile.exists())
      {
        a = null;
        localFile.mkdirs();
      }
      if (a == null)
        a = new b.a(paramContext, localFile.getAbsolutePath() + File.separator + "pushlappv2.db", 4);
      paramContext = a;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.d.b
 * JD-Core Version:    0.6.2
 */