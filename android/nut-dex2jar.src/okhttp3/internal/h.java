package okhttp3.internal;

public abstract class h
  implements Runnable
{
  protected final String b;

  public h(String paramString, Object[] paramArrayOfObject)
  {
    this.b = String.format(paramString, paramArrayOfObject);
  }

  public abstract void b();

  public final void run()
  {
    String str = Thread.currentThread().getName();
    Thread.currentThread().setName(this.b);
    try
    {
      b();
      return;
    }
    finally
    {
      Thread.currentThread().setName(str);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.h
 * JD-Core Version:    0.6.2
 */