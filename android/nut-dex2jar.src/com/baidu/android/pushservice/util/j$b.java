package com.baidu.android.pushservice.util;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import com.baidu.android.pushservice.h.a;

class j$b extends SQLiteOpenHelper
{
  public j$b(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt)
  {
    super(paramContext, paramString, paramCursorFactory, paramInt);
  }

  private void a(SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS PushADInfo");
      return;
    }
    catch (Exception paramSQLiteDatabase)
    {
      a.c("PushClientDataBase", "dropTables Exception: " + paramSQLiteDatabase);
    }
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE PushADInfo (" + j.a.a.name() + " INTEGER PRIMARY KEY AUTOINCREMENT, " + j.a.b.name() + " INTEGER DEFAULT ((0)), " + j.a.c.name() + " INTEGER, " + j.a.d.name() + " INTEGER, " + j.a.e.name() + " INTEGER, " + j.a.f.name() + " LONG  NOT NULL);");
    a.c("PushClientDataBase", "SQL :CREATE TABLE PushADInfo (" + j.a.a.name() + " INTEGER PRIMARY KEY AUTOINCREMENT, " + j.a.b.name() + " INTEGER, " + j.a.c.name() + " INTEGER, " + j.a.d.name() + " INTEGER, " + j.a.e.name() + " INTEGER, " + j.a.f.name() + " LONG  NOT NULL);");
  }

  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    a(paramSQLiteDatabase);
    onCreate(paramSQLiteDatabase);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.util.j.b
 * JD-Core Version:    0.6.2
 */