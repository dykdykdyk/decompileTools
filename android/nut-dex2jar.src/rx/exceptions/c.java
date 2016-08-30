package rx.exceptions;

import java.io.PrintStream;

final class c extends b
{
  private final PrintStream a;

  c(PrintStream paramPrintStream)
  {
    super((byte)0);
    this.a = paramPrintStream;
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
 * Qualified Name:     rx.exceptions.c
 * JD-Core Version:    0.6.2
 */