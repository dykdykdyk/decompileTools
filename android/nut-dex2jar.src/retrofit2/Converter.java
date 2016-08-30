package retrofit2;

import java.io.IOException;

public abstract interface Converter<F, T>
{
  public abstract T convert(F paramF)
    throws IOException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.Converter
 * JD-Core Version:    0.6.2
 */