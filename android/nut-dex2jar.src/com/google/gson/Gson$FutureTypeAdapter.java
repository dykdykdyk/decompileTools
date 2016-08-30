package com.google.gson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

class Gson$FutureTypeAdapter<T> extends TypeAdapter<T>
{
  private TypeAdapter<T> delegate;

  public T read(JsonReader paramJsonReader)
    throws IOException
  {
    if (this.delegate == null)
      throw new IllegalStateException();
    return this.delegate.read(paramJsonReader);
  }

  public void setDelegate(TypeAdapter<T> paramTypeAdapter)
  {
    if (this.delegate != null)
      throw new AssertionError();
    this.delegate = paramTypeAdapter;
  }

  public void write(JsonWriter paramJsonWriter, T paramT)
    throws IOException
  {
    if (this.delegate == null)
      throw new IllegalStateException();
    this.delegate.write(paramJsonWriter, paramT);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.Gson.FutureTypeAdapter
 * JD-Core Version:    0.6.2
 */