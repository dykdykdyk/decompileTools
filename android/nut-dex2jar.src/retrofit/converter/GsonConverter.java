package retrofit.converter;

import com.google.gson.Gson;
import java.io.UnsupportedEncodingException;
import retrofit.mime.TypedOutput;

public class GsonConverter
  implements Converter
{
  private String encoding;
  private final Gson gson;

  public GsonConverter(Gson paramGson)
  {
    this(paramGson, "UTF-8");
  }

  public GsonConverter(Gson paramGson, String paramString)
  {
    this.gson = paramGson;
    this.encoding = paramString;
  }

  // ERROR //
  public Object fromBody(retrofit.mime.TypedInput paramTypedInput, java.lang.reflect.Type paramType)
    throws ConversionException
  {
    // Byte code:
    //   0: ldc 14
    //   2: astore 4
    //   4: aload_1
    //   5: invokeinterface 39 1 0
    //   10: ifnull +14 -> 24
    //   13: aload_1
    //   14: invokeinterface 39 1 0
    //   19: invokestatic 45	retrofit/mime/MimeUtil:parseCharset	(Ljava/lang/String;)Ljava/lang/String;
    //   22: astore 4
    //   24: aconst_null
    //   25: astore_3
    //   26: aconst_null
    //   27: astore 5
    //   29: new 47	java/io/InputStreamReader
    //   32: dup
    //   33: aload_1
    //   34: invokeinterface 51 1 0
    //   39: aload 4
    //   41: invokespecial 54	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   44: astore_1
    //   45: aload_1
    //   46: astore_3
    //   47: aload_0
    //   48: getfield 23	retrofit/converter/GsonConverter:gson	Lcom/google/gson/Gson;
    //   51: aload_1
    //   52: aload_2
    //   53: invokevirtual 60	com/google/gson/Gson:fromJson	(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    //   56: astore_2
    //   57: aload_1
    //   58: invokevirtual 63	java/io/InputStreamReader:close	()V
    //   61: aload_2
    //   62: areturn
    //   63: astore_2
    //   64: aconst_null
    //   65: astore_1
    //   66: aload_1
    //   67: astore_3
    //   68: new 29	retrofit/converter/ConversionException
    //   71: dup
    //   72: aload_2
    //   73: invokespecial 66	retrofit/converter/ConversionException:<init>	(Ljava/lang/Throwable;)V
    //   76: athrow
    //   77: astore_1
    //   78: aload_3
    //   79: ifnull +7 -> 86
    //   82: aload_3
    //   83: invokevirtual 63	java/io/InputStreamReader:close	()V
    //   86: aload_1
    //   87: athrow
    //   88: astore_1
    //   89: aload 5
    //   91: astore_3
    //   92: new 29	retrofit/converter/ConversionException
    //   95: dup
    //   96: aload_1
    //   97: invokespecial 66	retrofit/converter/ConversionException:<init>	(Ljava/lang/Throwable;)V
    //   100: athrow
    //   101: astore_1
    //   102: goto -24 -> 78
    //   105: astore_1
    //   106: aload_2
    //   107: areturn
    //   108: astore_2
    //   109: goto -23 -> 86
    //   112: astore_2
    //   113: aload_1
    //   114: astore_3
    //   115: aload_2
    //   116: astore_1
    //   117: goto -25 -> 92
    //   120: astore_2
    //   121: goto -55 -> 66
    //
    // Exception table:
    //   from	to	target	type
    //   29	45	63	java/io/IOException
    //   47	57	77	finally
    //   68	77	77	finally
    //   29	45	88	com/google/gson/JsonParseException
    //   29	45	101	finally
    //   92	101	101	finally
    //   57	61	105	java/io/IOException
    //   82	86	108	java/io/IOException
    //   47	57	112	com/google/gson/JsonParseException
    //   47	57	120	java/io/IOException
  }

  public TypedOutput toBody(Object paramObject)
  {
    try
    {
      paramObject = new GsonConverter.JsonTypedOutput(this.gson.toJson(paramObject).getBytes(this.encoding), this.encoding);
      return paramObject;
    }
    catch (UnsupportedEncodingException paramObject)
    {
    }
    throw new AssertionError(paramObject);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.converter.GsonConverter
 * JD-Core Version:    0.6.2
 */