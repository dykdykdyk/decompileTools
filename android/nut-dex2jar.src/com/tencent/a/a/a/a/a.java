package com.tencent.a.a.a.a;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;

final class a
{
  static File a(String paramString)
  {
    paramString = new File(paramString);
    if (paramString.exists())
      return paramString;
    if (!paramString.getParentFile().exists())
      a(paramString.getParentFile().getAbsolutePath());
    paramString.mkdir();
    return paramString;
  }

  static List<String> a(File paramFile)
  {
    paramFile = new FileReader(paramFile);
    BufferedReader localBufferedReader = new BufferedReader(paramFile);
    ArrayList localArrayList = new ArrayList();
    while (true)
    {
      String str = localBufferedReader.readLine();
      if (str == null)
        break;
      localArrayList.add(str.trim());
    }
    paramFile.close();
    localBufferedReader.close();
    return localArrayList;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.a.a.a.a.a
 * JD-Core Version:    0.6.2
 */