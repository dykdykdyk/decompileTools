package android.support.b;

import dalvik.system.DexFile;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.List;
import java.util.ListIterator;
import java.util.zip.ZipFile;

final class b
{
  static void a(ClassLoader paramClassLoader, List<File> paramList)
    throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, IOException
  {
    int i = paramList.size();
    Field localField = a.a(paramClassLoader, "path");
    StringBuilder localStringBuilder = new StringBuilder((String)localField.get(paramClassLoader));
    String[] arrayOfString = new String[i];
    File[] arrayOfFile = new File[i];
    ZipFile[] arrayOfZipFile = new ZipFile[i];
    DexFile[] arrayOfDexFile = new DexFile[i];
    paramList = paramList.listIterator();
    while (paramList.hasNext())
    {
      File localFile = (File)paramList.next();
      String str = localFile.getAbsolutePath();
      localStringBuilder.append(':').append(str);
      i = paramList.previousIndex();
      arrayOfString[i] = str;
      arrayOfFile[i] = localFile;
      arrayOfZipFile[i] = new ZipFile(localFile);
      arrayOfDexFile[i] = DexFile.loadDex(str, str + ".dex", 0);
    }
    localField.set(paramClassLoader, localStringBuilder.toString());
    a.a(paramClassLoader, "mPaths", arrayOfString);
    a.a(paramClassLoader, "mFiles", arrayOfFile);
    a.a(paramClassLoader, "mZips", arrayOfZipFile);
    a.a(paramClassLoader, "mDexs", arrayOfDexFile);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.b.b
 * JD-Core Version:    0.6.2
 */