package com.google.gson;

import java.lang.reflect.Field;

 enum FieldNamingPolicy$2
{
  FieldNamingPolicy$2()
  {
    super(str, i, null);
  }

  public final String translateName(Field paramField)
  {
    return upperCaseFirstLetter(paramField.getName());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.FieldNamingPolicy.2
 * JD-Core Version:    0.6.2
 */