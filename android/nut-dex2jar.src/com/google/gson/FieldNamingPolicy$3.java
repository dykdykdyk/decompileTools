package com.google.gson;

import java.lang.reflect.Field;

 enum FieldNamingPolicy$3
{
  FieldNamingPolicy$3()
  {
    super(str, i, null);
  }

  public final String translateName(Field paramField)
  {
    return upperCaseFirstLetter(separateCamelCase(paramField.getName(), " "));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.FieldNamingPolicy.3
 * JD-Core Version:    0.6.2
 */