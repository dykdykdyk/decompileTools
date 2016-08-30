package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

final class TypeAdapters$16 extends TypeAdapter<Character>
{
  public final Character read(JsonReader paramJsonReader)
    throws IOException
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    paramJsonReader = paramJsonReader.nextString();
    if (paramJsonReader.length() != 1)
      throw new JsonSyntaxException("Expecting character, got: " + paramJsonReader);
    return Character.valueOf(paramJsonReader.charAt(0));
  }

  public final void write(JsonWriter paramJsonWriter, Character paramCharacter)
    throws IOException
  {
    if (paramCharacter == null);
    for (paramCharacter = null; ; paramCharacter = String.valueOf(paramCharacter))
    {
      paramJsonWriter.value(paramCharacter);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.16
 * JD-Core Version:    0.6.2
 */