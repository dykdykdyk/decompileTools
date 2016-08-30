package u.aly;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.concurrent.atomic.AtomicInteger;

public final class as
{
  private static as c;
  private static SQLiteOpenHelper d;
  private AtomicInteger a = new AtomicInteger();
  private AtomicInteger b = new AtomicInteger();
  private SQLiteDatabase e;

  public static as a(Context paramContext)
  {
    try
    {
      if (c == null)
        b(paramContext);
      paramContext = c;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  private static void b(Context paramContext)
  {
    try
    {
      if (c == null)
      {
        c = new as();
        d = db.a(paramContext);
      }
      return;
    }
    finally
    {
      paramContext = finally;
    }
    throw paramContext;
  }

  public final SQLiteDatabase a()
  {
    try
    {
      if (this.a.incrementAndGet() == 1)
        this.e = d.getReadableDatabase();
      SQLiteDatabase localSQLiteDatabase = this.e;
      return localSQLiteDatabase;
    }
    finally
    {
    }
  }

  public final SQLiteDatabase b()
  {
    try
    {
      if (this.a.incrementAndGet() == 1)
        this.e = d.getWritableDatabase();
      SQLiteDatabase localSQLiteDatabase = this.e;
      return localSQLiteDatabase;
    }
    finally
    {
    }
  }

  public final void c()
  {
    try
    {
      if (this.a.decrementAndGet() == 0)
        this.e.close();
      if (this.b.decrementAndGet() == 0)
        this.e.close();
      return;
    }
    finally
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.as
 * JD-Core Version:    0.6.2
 */