package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

class TypeAdapters$26$1 extends TypeAdapter<Timestamp>
{
  TypeAdapters$26$1(TypeAdapters.26 param26, TypeAdapter paramTypeAdapter)
  {
  }

  public Timestamp read(JsonReader paramJsonReader)
    throws IOException
  {
    paramJsonReader = (Date)this.val$dateTypeAdapter.read(paramJsonReader);
    if (paramJsonReader != null)
      return new Timestamp(paramJsonReader.getTime());
    return null;
  }

  public void write(JsonWriter paramJsonWriter, Timestamp paramTimestamp)
    throws IOException
  {
    this.val$dateTypeAdapter.write(paramJsonWriter, paramTimestamp);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.26.1
 * JD-Core Version:    0.6.2
 */