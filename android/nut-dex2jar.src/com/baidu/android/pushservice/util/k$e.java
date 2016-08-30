package com.baidu.android.pushservice.util;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.baidu.android.pushservice.h.a;

class k$e extends SQLiteOpenHelper
{
  public k$e(Context paramContext, String paramString, int paramInt)
  {
    super(paramContext, paramString, null, paramInt);
  }

  public k$e(Context paramContext, String paramString, int paramInt, DatabaseErrorHandler paramDatabaseErrorHandler)
  {
    super(paramContext, paramString, null, paramInt, paramDatabaseErrorHandler);
  }

  private void a(SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS MsgResultInfo");
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS StatisticsInfo");
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS FileDownloadingInfo");
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS PushBehavior");
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS AppInfo");
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS LappMsgInfo");
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS NoDisturb");
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS ADPushBehavior");
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS MsgInfo");
      return;
    }
    catch (Exception paramSQLiteDatabase)
    {
      a.c("PushDatabase", "dropTables Exception: " + paramSQLiteDatabase);
    }
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS MsgResultInfo");
      paramSQLiteDatabase.execSQL("CREATE TABLE StatisticsInfo (" + k.k.a.name() + " INTEGER PRIMARY KEY AUTOINCREMENT, " + k.k.b.name() + " TEXT NOT NULL, " + k.k.c.name() + " TEXT NOT NULL, " + k.k.d.name() + " TEXT, " + k.k.e.name() + " TEXT NOT NULL, " + k.k.f.name() + " TEXT NOT NULL, " + k.k.g.name() + " TEXT NOT NULL, " + k.k.h.name() + " TEXT);");
      paramSQLiteDatabase.execSQL("CREATE TABLE PushBehavior (" + k.c.a.name() + " INTEGER PRIMARY KEY AUTOINCREMENT, " + k.c.b.name() + " TEXT NOT NULL, " + k.c.c.name() + " LONG  NOT NULL, " + k.c.d.name() + " TEXT, " + k.c.e.name() + " INTEGER, " + k.c.f.name() + " TEXT, " + k.c.g.name() + " INTEGER, " + k.c.h.name() + " TEXT, " + k.c.i.name() + " TEXT, " + k.c.j.name() + " INTEGER, " + k.c.k.name() + " INTEGER, " + k.c.l.name() + " TEXT, " + k.c.m.name() + " TEXT, " + k.c.n.name() + " Text);");
      paramSQLiteDatabase.execSQL("CREATE TABLE ADPushBehavior (" + k.a.a.name() + " INTEGER PRIMARY KEY AUTOINCREMENT, " + k.a.b.name() + " TEXT NOT NULL, " + k.a.c.name() + " LONG  NOT NULL, " + k.a.d.name() + " TEXT, " + k.a.e.name() + " INTEGER, " + k.a.f.name() + " TEXT, " + k.a.g.name() + " INTEGER, " + k.a.h.name() + " TEXT, " + k.a.i.name() + " INTEGER, " + k.a.j.name() + " TEXT, " + k.a.k.name() + " TEXT);");
      paramSQLiteDatabase.execSQL("CREATE TABLE MsgInfo (" + k.i.a.name() + " INTEGER PRIMARY KEY AUTOINCREMENT, " + k.i.b.name() + " TEXT NOT NULL, " + k.i.c.name() + " LONG NOT NULL);");
      paramSQLiteDatabase.execSQL("CREATE TABLE AppInfo (" + k.b.a.name() + " INTEGER PRIMARY KEY AUTOINCREMENT, " + k.b.b.name() + " TEXT UNIQUE, " + k.b.c.name() + " INTEGER, " + k.b.d.name() + " TEXT, " + k.b.e.name() + " TEXT, " + k.b.f.name() + " TEXT, " + k.b.g.name() + " TEXT, " + k.b.h.name() + " TEXT, " + k.b.i.name() + " TEXT, " + k.b.j.name() + " TEXT, " + k.b.k.name() + " TEXT);");
      paramSQLiteDatabase.execSQL("CREATE TABLE LappMsgInfo (" + k.h.a.name() + " INTEGER PRIMARY KEY AUTOINCREMENT, " + k.h.b.name() + " TEXT NOT NULL, " + k.h.c.name() + " TEXT, " + k.h.d.name() + " TEXT, " + k.h.e.name() + " TEXT, " + k.h.f.name() + " LONG NOT NULL, " + k.h.g.name() + " INTEGER);");
      paramSQLiteDatabase.execSQL("CREATE TABLE FileDownloadingInfo (" + k.f.a.name() + " TEXT, " + k.f.b.name() + " TEXT PRIMARY KEY, " + k.f.e.name() + " TEXT NOT NULL, " + k.f.c.name() + " TEXT, " + k.f.d.name() + " TEXT, " + k.f.f.name() + " TEXT NOT NULL, " + k.f.g.name() + " INTEGER NOT NULL, " + k.f.h.name() + " INTEGER NOT NULL, " + k.f.i.name() + " INTEGER NOT NULL," + k.f.j.name() + " INTEGER NOT NULL);");
      paramSQLiteDatabase.execSQL("CREATE TABLE NoDisturb (" + k.j.a.name() + " TEXT NOT NULL, " + k.j.b.name() + " INTEGER, " + k.j.c.name() + " INTEGER, " + k.j.d.name() + " INTEGER, " + k.j.e.name() + " INTEGER);");
      return;
    }
    catch (Exception paramSQLiteDatabase)
    {
      a.c("PushDatabase", "DbOpenHelper onCreate E: " + paramSQLiteDatabase);
    }
  }

  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    a(paramSQLiteDatabase);
    onCreate(paramSQLiteDatabase);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.util.k.e
 * JD-Core Version:    0.6.2
 */