package com.amap.api.mapcore2d;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class ef extends SQLiteOpenHelper
{
  private ea a;

  public ef(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt, ea paramea)
  {
    super(paramContext, paramString, paramCursorFactory, paramInt);
    this.a = paramea;
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    this.a.a(paramSQLiteDatabase);
  }

  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    this.a.a(paramSQLiteDatabase, paramInt1, paramInt2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.ef
 * JD-Core Version:    0.6.2
 */