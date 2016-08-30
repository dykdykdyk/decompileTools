package com.google.gson;

import com.google.gson.internal.bind.JsonTreeReader;
import com.google.gson.internal.bind.JsonTreeWriter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;

public abstract class TypeAdapter<T>
{
  public final T fromJson(Reader paramReader)
    throws IOException
  {
    return read(new JsonReader(paramReader));
  }

  public final T fromJson(String paramString)
    throws IOException
  {
    return fromJson(new StringReader(paramString));
  }

  public final T fromJsonTree(JsonElement paramJsonElement)
  {
    try
    {
      paramJsonElement = read(new JsonTreeReader(paramJsonElement));
      return paramJsonElement;
    }
    catch (IOException paramJsonElement)
    {
    }
    throw new JsonIOException(paramJsonElement);
  }

  public final TypeAdapter<T> nullSafe()
  {
    return new TypeAdapter.1(this);
  }

  public abstract T read(JsonReader paramJsonReader)
    throws IOException;

  public final String toJson(T paramT)
  {
    StringWriter localStringWriter = new StringWriter();
    try
    {
      toJson(localStringWriter, paramT);
      return localStringWriter.toString();
    }
    catch (IOException paramT)
    {
    }
    throw new AssertionError(paramT);
  }

  public final void toJson(Writer paramWriter, T paramT)
    throws IOException
  {
    write(new JsonWriter(paramWriter), paramT);
  }

  public final JsonElement toJsonTree(T paramT)
  {
    try
    {
      JsonTreeWriter localJsonTreeWriter = new JsonTreeWriter();
      write(localJsonTreeWriter, paramT);
      paramT = localJsonTreeWriter.get();
      return paramT;
    }
    catch (IOException paramT)
    {
    }
    throw new JsonIOException(paramT);
  }

  public abstract void write(JsonWriter paramJsonWriter, T paramT)
    throws IOException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.TypeAdapter
 * JD-Core Version:    0.6.2
 */