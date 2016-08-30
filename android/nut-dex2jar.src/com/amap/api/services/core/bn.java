package com.amap.api.services.core;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class bn extends SQLiteOpenHelper
{
  private bi a;

  public bn(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt, bi parambi)
  {
    super(paramContext, paramString, paramCursorFactory, paramInt);
    this.a = parambi;
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
 * Qualified Name:     com.amap.api.services.core.bn
 * JD-Core Version:    0.6.2
 */