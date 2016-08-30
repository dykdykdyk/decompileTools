package rx;

import rx.e.d;

public final class a
{
  static final a a = a(new b());
  static final a b = a(new c());
  static final rx.e.a c = d.a().b();
  final f d;

  private a(f paramf)
  {
    this.d = paramf;
  }

  static NullPointerException a(Throwable paramThrowable)
  {
    NullPointerException localNullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
    localNullPointerException.initCause(paramThrowable);
    return localNullPointerException;
  }

  public static <T> T a(T paramT)
  {
    if (paramT == null)
      throw new NullPointerException();
    return paramT;
  }

  public static a a(f paramf)
  {
    a(paramf);
    try
    {
      paramf = new a(paramf);
      return paramf;
    }
    catch (NullPointerException paramf)
    {
      throw paramf;
    }
    catch (Throwable paramf)
    {
    }
    throw a(paramf);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.a
 * JD-Core Version:    0.6.2
 */