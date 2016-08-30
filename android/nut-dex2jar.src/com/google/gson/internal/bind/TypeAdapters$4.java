package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Currency;

final class TypeAdapters$4 extends TypeAdapter<Currency>
{
  public final Currency read(JsonReader paramJsonReader)
    throws IOException
  {
    return Currency.getInstance(paramJsonReader.nextString());
  }

  public final void write(JsonWriter paramJsonWriter, Currency paramCurrency)
    throws IOException
  {
    paramJsonWriter.value(paramCurrency.getCurrencyCode());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.4
 * JD-Core Version:    0.6.2
 */