package com.loc;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public final class h extends SQLiteOpenHelper
{
  private es a;

  public h(Context paramContext, String paramString, es parames)
  {
    super(paramContext, paramString, null, 1);
    this.a = parames;
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    this.a.a(paramSQLiteDatabase);
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.h
 * JD-Core Version:    0.6.2
 */