package rx.exceptions;

import java.io.PrintWriter;

final class d extends b
{
  private final PrintWriter a;

  d(PrintWriter paramPrintWriter)
  {
    super((byte)0);
    this.a = paramPrintWriter;
  }

  final Object a()
  {
    return this.a;
  }

  final void a(Object paramObject)
  {
    this.a.println(paramObject);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.exceptions.d
 * JD-Core Version:    0.6.2
 */