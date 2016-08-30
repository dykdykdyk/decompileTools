package retrofit2.converter.gson;

import a.f;
import a.g;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import okhttp3.ai;
import okhttp3.av;
import retrofit2.Converter;

final class GsonRequestBodyConverter<T>
  implements Converter<T, av>
{
  private static final ai MEDIA_TYPE = ai.a("application/json; charset=UTF-8");
  private static final Charset UTF_8 = Charset.forName("UTF-8");
  private final TypeAdapter<T> adapter;
  private final Gson gson;

  GsonRequestBodyConverter(Gson paramGson, TypeAdapter<T> paramTypeAdapter)
  {
    this.gson = paramGson;
    this.adapter = paramTypeAdapter;
  }

  public final av convert(T paramT)
    throws IOException
  {
    f localf = new f();
    Object localObject = new OutputStreamWriter(new g(localf), UTF_8);
    localObject = this.gson.newJsonWriter((Writer)localObject);
    this.adapter.write((JsonWriter)localObject, paramT);
    ((JsonWriter)localObject).close();
    return av.create(MEDIA_TYPE, localf.l());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.converter.gson.GsonRequestBodyConverter
 * JD-Core Version:    0.6.2
 */