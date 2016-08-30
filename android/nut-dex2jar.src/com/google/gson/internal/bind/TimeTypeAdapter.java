package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class TimeTypeAdapter extends TypeAdapter<Time>
{
  public static final TypeAdapterFactory FACTORY = new TimeTypeAdapter.1();
  private final DateFormat format = new SimpleDateFormat("hh:mm:ss a");

  public final Time read(JsonReader paramJsonReader)
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
          paramJsonReader = new Time(this.format.parse(paramJsonReader.nextString()).getTime());
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

  public final void write(JsonWriter paramJsonWriter, Time paramTime)
    throws IOException
  {
    if (paramTime == null)
      paramTime = null;
    try
    {
      while (true)
      {
        paramJsonWriter.value(paramTime);
        return;
        paramTime = this.format.format(paramTime);
      }
    }
    finally
    {
    }
    throw paramJsonWriter;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TimeTypeAdapter
 * JD-Core Version:    0.6.2
 */