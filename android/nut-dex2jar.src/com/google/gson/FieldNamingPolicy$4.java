package com.google.gson;

import java.lang.reflect.Field;
import java.util.Locale;

 enum FieldNamingPolicy$4
{
  FieldNamingPolicy$4()
  {
    super(str, i, null);
  }

  public final String translateName(Field paramField)
  {
    return separateCamelCase(paramField.getName(), "_").toLowerCase(Locale.ENGLISH);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.FieldNamingPolicy.4
 * JD-Core Version:    0.6.2
 */