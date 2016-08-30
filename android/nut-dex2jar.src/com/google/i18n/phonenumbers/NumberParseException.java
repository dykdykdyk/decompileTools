package com.google.i18n.phonenumbers;

public class NumberParseException extends Exception
{
  d a;
  private String b;

  public NumberParseException(d paramd, String paramString)
  {
    super(paramString);
    this.b = paramString;
    this.a = paramd;
  }

  public String toString()
  {
    String str1 = String.valueOf(String.valueOf(this.a));
    String str2 = String.valueOf(String.valueOf(this.b));
    return str1.length() + 14 + str2.length() + "Error type: " + str1 + ". " + str2;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.i18n.phonenumbers.NumberParseException
 * JD-Core Version:    0.6.2
 */