package retrofit2.converter.gson;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import java.io.IOException;
import okhttp3.bb;
import retrofit2.Converter;

final class GsonResponseBodyConverter<T>
  implements Converter<bb, T>
{
  private final TypeAdapter<T> adapter;
  private final Gson gson;

  GsonResponseBodyConverter(Gson paramGson, TypeAdapter<T> paramTypeAdapter)
  {
    this.gson = paramGson;
    this.adapter = paramTypeAdapter;
  }

  public final T convert(bb parambb)
    throws IOException
  {
    Object localObject1 = this.gson.newJsonReader(parambb.charStream());
    try
    {
      localObject1 = this.adapter.read((JsonReader)localObject1);
      return localObject1;
    }
    finally
    {
      parambb.close();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.converter.gson.GsonResponseBodyConverter
 * JD-Core Version:    0.6.2
 */