package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public final class SqlDateTypeAdapter extends TypeAdapter<java.sql.Date>
{
  public static final TypeAdapterFactory FACTORY = new SqlDateTypeAdapter.1();
  private final DateFormat format = new SimpleDateFormat("MMM d, yyyy");

  public final java.sql.Date read(JsonReader paramJsonReader)
    throws IOException
  {
    try
    {
      if (paramJsonReader.peek() == JsonToken.NULL)
      {
        paramJsonReader.nextNull();
        paramJsonReader = null;
      }
      while (true)
      {
        return paramJsonReader;
        try
        {
          paramJsonReader = new java.sql.Date(this.format.parse(paramJsonReader.nextString()).getTime());
        }
        catch (ParseException paramJsonReader)
        {
          throw new JsonSyntaxException(paramJsonReader);
        }
      }
    }
    finally
    {
    }
    throw paramJsonReader;
  }

  public final void write(JsonWriter paramJsonWriter, java.sql.Date paramDate)
    throws IOException
  {
    if (paramDate == null)
      paramDate = null;
    try
    {
      while (true)
      {
        paramJsonWriter.value(paramDate);
        return;
        paramDate = this.format.format(paramDate);
      }
    }
    finally
    {
    }
    throw paramJsonWriter;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.SqlDateTypeAdapter
 * JD-Core Version:    0.6.2
 */