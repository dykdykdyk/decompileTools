package com.amap.api.services.core;

import android.database.sqlite.SQLiteDatabase;

public class bp
  implements bi
{
  static final String a = "a";
  static final String b = "b";
  static final String c = "c";
  static final String d = "d";
  static final String e = "e";
  static final String f = "a1";
  static final String g = "a2";
  static final String h = "a3";
  static final String i = "a4";
  static final String j = "a5";
  static final String k = "a6";
  static final String l = "b1";
  static final String m = "b2";
  static final String n = "b3";
  static final String o = "c1";
  static final String p = "c2";
  static final String q = "c3";
  private static final String r = "CREATE TABLE IF NOT EXISTS " + a + " (_id integer primary key autoincrement, " + f + "  varchar(20), " + g + " varchar(10)," + h + " varchar(50)," + i + " varchar(100)," + j + " varchar(20)," + k + " integer);";
  private static final String s = "CREATE TABLE IF NOT EXISTS %s (_id integer primary key autoincrement," + l + " varchar(40), " + m + " integer," + n + "  integer," + f + "  varchar(20));";
  private static final String t = "CREATE TABLE IF NOT EXISTS " + e + " (_id integer primary key autoincrement," + o + " integer," + p + " integer," + q + " integer);";
  private static bp u;

  public static bp c()
  {
    try
    {
      if (u == null)
        u = new bp();
      bp localbp = u;
      return localbp;
    }
    finally
    {
    }
  }

  public String a()
  {
    return "logdb.db";
  }

  public void a(SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      paramSQLiteDatabase.execSQL(r);
      paramSQLiteDatabase.execSQL(String.format(s, new Object[] { b }));
      paramSQLiteDatabase.execSQL(String.format(s, new Object[] { c }));
      paramSQLiteDatabase.execSQL(String.format(s, new Object[] { d }));
      paramSQLiteDatabase.execSQL(t);
      return;
    }
    catch (Throwable paramSQLiteDatabase)
    {
      av.a(paramSQLiteDatabase, "DB", "onCreate");
      paramSQLiteDatabase.printStackTrace();
    }
  }

  public void a(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }

  public int b()
  {
    return 1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.bp
 * JD-Core Version:    0.6.2
 */