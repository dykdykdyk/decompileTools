package com.google.gson;

import com.google.gson.internal.bind.util.ISO8601Utils;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Locale;

final class DefaultDateTypeAdapter
  implements JsonDeserializer<java.util.Date>, JsonSerializer<java.util.Date>
{
  private final DateFormat enUsFormat;
  private final DateFormat localFormat;

  DefaultDateTypeAdapter()
  {
    this(DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
  }

  DefaultDateTypeAdapter(int paramInt)
  {
    this(DateFormat.getDateInstance(paramInt, Locale.US), DateFormat.getDateInstance(paramInt));
  }

  public DefaultDateTypeAdapter(int paramInt1, int paramInt2)
  {
    this(DateFormat.getDateTimeInstance(paramInt1, paramInt2, Locale.US), DateFormat.getDateTimeInstance(paramInt1, paramInt2));
  }

  DefaultDateTypeAdapter(String paramString)
  {
    this(new SimpleDateFormat(paramString, Locale.US), new SimpleDateFormat(paramString));
  }

  DefaultDateTypeAdapter(DateFormat paramDateFormat1, DateFormat paramDateFormat2)
  {
    this.enUsFormat = paramDateFormat1;
    this.localFormat = paramDateFormat2;
  }

  private java.util.Date deserializeToDate(JsonElement paramJsonElement)
  {
    synchronized (this.localFormat)
    {
      try
      {
        java.util.Date localDate1 = this.localFormat.parse(paramJsonElement.getAsString());
        return localDate1;
      }
      catch (ParseException localParseException1)
      {
      }
    }
    try
    {
      java.util.Date localDate2 = this.enUsFormat.parse(paramJsonElement.getAsString());
      return localDate2;
      paramJsonElement = finally;
      throw paramJsonElement;
    }
    catch (ParseException localParseException2)
    {
      try
      {
        java.util.Date localDate3 = ISO8601Utils.parse(paramJsonElement.getAsString(), new ParsePosition(0));
        return localDate3;
      }
      catch (ParseException localParseException3)
      {
        throw new JsonSyntaxException(paramJsonElement.getAsString(), localParseException3);
      }
    }
  }

  public final java.util.Date deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    if (!(paramJsonElement instanceof JsonPrimitive))
      throw new JsonParseException("The date should be a string value");
    paramJsonElement = deserializeToDate(paramJsonElement);
    if (paramType == java.util.Date.class)
      return paramJsonElement;
    if (paramType == Timestamp.class)
      return new Timestamp(paramJsonElement.getTime());
    if (paramType == java.sql.Date.class)
      return new java.sql.Date(paramJsonElement.getTime());
    throw new IllegalArgumentException(getClass() + " cannot deserialize to " + paramType);
  }

  public final JsonElement serialize(java.util.Date paramDate, Type arg2, JsonSerializationContext paramJsonSerializationContext)
  {
    synchronized (this.localFormat)
    {
      paramDate = new JsonPrimitive(this.enUsFormat.format(paramDate));
      return paramDate;
    }
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(DefaultDateTypeAdapter.class.getSimpleName());
    localStringBuilder.append('(').append(this.localFormat.getClass().getSimpleName()).append(')');
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.DefaultDateTypeAdapter
 * JD-Core Version:    0.6.2
 */