package retrofit.mime;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class MimeUtil
{
  private static final Pattern CHARSET = Pattern.compile("\\Wcharset=([^\\s;]+)", 2);

  public static String parseCharset(String paramString)
  {
    paramString = CHARSET.matcher(paramString);
    if (paramString.find())
      return paramString.group(1).replaceAll("[\"\\\\]", "");
    return "UTF-8";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.mime.MimeUtil
 * JD-Core Version:    0.6.2
 */