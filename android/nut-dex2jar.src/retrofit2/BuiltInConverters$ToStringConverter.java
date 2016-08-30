package retrofit2;

final class BuiltInConverters$ToStringConverter
  implements Converter<Object, String>
{
  static final ToStringConverter INSTANCE = new ToStringConverter();

  public final String convert(Object paramObject)
  {
    return paramObject.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.BuiltInConverters.ToStringConverter
 * JD-Core Version:    0.6.2
 */