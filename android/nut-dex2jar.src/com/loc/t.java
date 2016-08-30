package com.loc;

import android.database.sqlite.SQLiteDatabase;

public final class t
  implements es
{
  private static t a;

  public static t a()
  {
    try
    {
      if (a == null)
        a = new t();
      t localt = a;
      return localt;
    }
    finally
    {
    }
  }

  public final void a(SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS file (_id integer primary key autoincrement, sdkname  varchar(20), filename varchar(100),md5 varchar(20),version varchar(20),dynamicversion varchar(20),status varchar(20),reservedfield varchar(20));");
      return;
    }
    catch (Throwable paramSQLiteDatabase)
    {
      paramSQLiteDatabase.printStackTrace();
    }
  }

  public final String b()
  {
    return "dynamicamapfile.db";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.t
 * JD-Core Version:    0.6.2
 */