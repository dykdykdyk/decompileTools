package com.sina.weibo.sdk.d;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.StateSet;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;

public class l
{
  private static final String a = l.class.getName();
  private static final String[] b = { "drawable-xxhdpi", "drawable-xhdpi", "drawable-hdpi", "drawable-mdpi", "drawable-ldpi", "drawable" };

  public static int a(Context paramContext, int paramInt)
  {
    paramContext = paramContext.getResources().getDisplayMetrics();
    float f = paramInt;
    return (int)(paramContext.density * f + 0.5D);
  }

  public static ColorStateList a()
  {
    int[] arrayOfInt = StateSet.WILD_CARD;
    return new ColorStateList(new int[][] { { 16842919 }, { 16842913 }, { 16842908 }, arrayOfInt }, new int[] { 1728020992, 1728020992, 1728020992, -32256 });
  }

  public static Drawable a(Context paramContext, String paramString)
  {
    return a(paramContext, c(paramContext, paramString), false);
  }

  // ERROR //
  private static Drawable a(Context paramContext, String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 90	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   4: astore_3
    //   5: aload_3
    //   6: aload_1
    //   7: invokevirtual 96	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   10: astore_1
    //   11: aload_1
    //   12: ifnull +179 -> 191
    //   15: aload_1
    //   16: invokestatic 102	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   19: astore_3
    //   20: aload_0
    //   21: invokevirtual 45	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   24: invokevirtual 51	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   27: astore 4
    //   29: iload_2
    //   30: ifeq +62 -> 92
    //   33: aload_0
    //   34: invokevirtual 45	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   37: invokevirtual 106	android/content/res/Resources:getConfiguration	()Landroid/content/res/Configuration;
    //   40: astore 5
    //   42: new 108	android/graphics/drawable/NinePatchDrawable
    //   45: dup
    //   46: new 47	android/content/res/Resources
    //   49: dup
    //   50: aload_0
    //   51: invokevirtual 90	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   54: aload 4
    //   56: aload 5
    //   58: invokespecial 111	android/content/res/Resources:<init>	(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    //   61: aload_3
    //   62: aload_3
    //   63: invokevirtual 117	android/graphics/Bitmap:getNinePatchChunk	()[B
    //   66: new 119	android/graphics/Rect
    //   69: dup
    //   70: iconst_0
    //   71: iconst_0
    //   72: iconst_0
    //   73: iconst_0
    //   74: invokespecial 122	android/graphics/Rect:<init>	(IIII)V
    //   77: aconst_null
    //   78: invokespecial 125	android/graphics/drawable/NinePatchDrawable:<init>	(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    //   81: astore_0
    //   82: aload_1
    //   83: ifnull +7 -> 90
    //   86: aload_1
    //   87: invokevirtual 130	java/io/InputStream:close	()V
    //   90: aload_0
    //   91: areturn
    //   92: aload_3
    //   93: aload 4
    //   95: getfield 134	android/util/DisplayMetrics:densityDpi	I
    //   98: invokevirtual 138	android/graphics/Bitmap:setDensity	(I)V
    //   101: new 140	android/graphics/drawable/BitmapDrawable
    //   104: dup
    //   105: aload_0
    //   106: invokevirtual 45	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   109: aload_3
    //   110: invokespecial 143	android/graphics/drawable/BitmapDrawable:<init>	(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    //   113: astore_0
    //   114: goto -32 -> 82
    //   117: astore_3
    //   118: aload_1
    //   119: astore_0
    //   120: aload_3
    //   121: astore_1
    //   122: aload_1
    //   123: invokevirtual 146	java/io/IOException:printStackTrace	()V
    //   126: aload_0
    //   127: ifnull +62 -> 189
    //   130: aload_0
    //   131: invokevirtual 130	java/io/InputStream:close	()V
    //   134: aconst_null
    //   135: areturn
    //   136: astore_0
    //   137: aload_0
    //   138: invokevirtual 146	java/io/IOException:printStackTrace	()V
    //   141: aconst_null
    //   142: areturn
    //   143: astore_0
    //   144: aconst_null
    //   145: astore_1
    //   146: aload_1
    //   147: ifnull +7 -> 154
    //   150: aload_1
    //   151: invokevirtual 130	java/io/InputStream:close	()V
    //   154: aload_0
    //   155: athrow
    //   156: astore_1
    //   157: aload_1
    //   158: invokevirtual 146	java/io/IOException:printStackTrace	()V
    //   161: goto -7 -> 154
    //   164: astore_1
    //   165: aload_1
    //   166: invokevirtual 146	java/io/IOException:printStackTrace	()V
    //   169: aload_0
    //   170: areturn
    //   171: astore_0
    //   172: goto -26 -> 146
    //   175: astore_3
    //   176: aload_0
    //   177: astore_1
    //   178: aload_3
    //   179: astore_0
    //   180: goto -34 -> 146
    //   183: astore_1
    //   184: aconst_null
    //   185: astore_0
    //   186: goto -64 -> 122
    //   189: aconst_null
    //   190: areturn
    //   191: aconst_null
    //   192: astore_0
    //   193: goto -111 -> 82
    //
    // Exception table:
    //   from	to	target	type
    //   15	29	117	java/io/IOException
    //   33	82	117	java/io/IOException
    //   92	114	117	java/io/IOException
    //   130	134	136	java/io/IOException
    //   5	11	143	finally
    //   150	154	156	java/io/IOException
    //   86	90	164	java/io/IOException
    //   15	29	171	finally
    //   33	82	171	finally
    //   92	114	171	finally
    //   122	126	175	finally
    //   5	11	183	java/io/IOException
  }

  public static StateListDrawable a(Context paramContext, String paramString1, String paramString2)
  {
    if (paramString1.indexOf(".9") >= 0)
    {
      paramString1 = b(paramContext, paramString1);
      if (paramString2.indexOf(".9") < 0)
        break label96;
    }
    label96: for (paramContext = b(paramContext, paramString2); ; paramContext = a(paramContext, paramString2))
    {
      paramString2 = new StateListDrawable();
      paramString2.addState(new int[] { 16842919 }, paramContext);
      paramString2.addState(new int[] { 16842913 }, paramContext);
      paramString2.addState(new int[] { 16842908 }, paramContext);
      paramString2.addState(StateSet.WILD_CARD, paramString1);
      return paramString2;
      paramString1 = a(paramContext, paramString1);
      break;
    }
  }

  public static String a(String paramString1, String paramString2, String paramString3)
  {
    Locale localLocale2 = Locale.getDefault();
    Locale localLocale1 = localLocale2;
    if (!Locale.SIMPLIFIED_CHINESE.equals(localLocale2))
      if (!Locale.TRADITIONAL_CHINESE.equals(localLocale2))
        break label45;
    label45: for (localLocale1 = localLocale2; Locale.SIMPLIFIED_CHINESE.equals(localLocale1); localLocale1 = Locale.ENGLISH)
      return paramString2;
    if (Locale.TRADITIONAL_CHINESE.equals(localLocale1))
      return paramString3;
    return paramString1;
  }

  public static Drawable b(Context paramContext, String paramString)
  {
    return a(paramContext, c(paramContext, paramString), true);
  }

  private static String c(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      i.c(a, "id is NOT correct!");
      return null;
    }
    int i = paramContext.getResources().getDisplayMetrics().densityDpi;
    String str1;
    int j;
    int k;
    label53: int m;
    if (i <= 120)
    {
      str1 = "drawable-ldpi";
      i.a(a, "find Appropriate path...");
      i = 0;
      j = -1;
      k = -1;
      if (i < b.length)
        break label181;
      i = -1;
      m = j;
      label66: if ((k <= 0) || (i <= 0))
        break label270;
      j = k;
      if (Math.abs(m - i) <= Math.abs(m - k))
        j = i;
    }
    while (true)
    {
      if (j >= 0)
        break label309;
      i.c(a, "Not find the appropriate path for drawable");
      return null;
      if ((i > 120) && (i <= 160))
      {
        str1 = "drawable-mdpi";
        break;
      }
      if ((i > 160) && (i <= 240))
      {
        str1 = "drawable-hdpi";
        break;
      }
      if ((i > 240) && (i <= 320))
      {
        str1 = "drawable-xhdpi";
        break;
      }
      str1 = "drawable-xxhdpi";
      break;
      label181: if (b[i].equals(str1))
        j = i;
      String str2 = b[i] + "/" + paramString;
      m = k;
      if (d(paramContext, str2))
      {
        if (j == i)
          return str2;
        if (j < 0)
          m = i;
      }
      else
      {
        i += 1;
        k = m;
        break label53;
      }
      m = j;
      break label66;
      label270: if (k > 0)
      {
        j = k;
        if (i < 0);
      }
      else if ((k < 0) && (i > 0))
      {
        j = i;
      }
      else
      {
        i.c(a, "Not find the appropriate path for drawable");
        j = -1;
      }
    }
    label309: return b[j] + "/" + paramString;
  }

  private static boolean d(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString)));
    Context localContext;
    while (true)
    {
      return false;
      Object localObject2 = paramContext.getAssets();
      Object localObject1 = null;
      paramContext = null;
      try
      {
        localObject2 = ((AssetManager)localObject2).open(paramString);
        paramContext = (Context)localObject2;
        localObject1 = localObject2;
        i.a(a, "file [" + paramString + "] existed");
        if (localObject2 != null);
        try
        {
          ((InputStream)localObject2).close();
          return true;
        }
        catch (IOException paramContext)
        {
          while (true)
            paramContext.printStackTrace();
        }
      }
      catch (IOException localIOException)
      {
        localContext = paramContext;
        i.a(a, "file [" + paramString + "] NOT existed");
        if (paramContext != null)
          try
          {
            paramContext.close();
            return false;
          }
          catch (IOException paramContext)
          {
            paramContext.printStackTrace();
            return false;
          }
      }
      finally
      {
        if (localContext == null);
      }
    }
    try
    {
      localContext.close();
      throw paramContext;
    }
    catch (IOException paramString)
    {
      while (true)
        paramString.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.d.l
 * JD-Core Version:    0.6.2
 */