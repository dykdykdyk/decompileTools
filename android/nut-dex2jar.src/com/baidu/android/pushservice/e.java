package com.baidu.android.pushservice;

import android.app.Notification;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.j.b;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.StreamCorruptedException;

public class e
{
  private static String a = "NotificationBuilderManager";
  private static String b = "notification_builder_storage";
  private static Object c = new Object();
  private static int d = 0;

  public static Notification a(Context paramContext, int paramInt1, int paramInt2, String paramString1, String paramString2, boolean paramBoolean)
  {
    while (true)
    {
      synchronized (c)
      {
        PushNotificationBuilder localPushNotificationBuilder = a(paramContext, paramInt1);
        localPushNotificationBuilder.setNotificationTitle(paramString1);
        localPushNotificationBuilder.setNotificationText(paramString2);
        paramContext = localPushNotificationBuilder.construct(paramContext);
        if ((paramInt2 & 0x1) != 0)
        {
          paramContext.flags &= -33;
          if (paramBoolean)
          {
            paramContext.defaults = 0;
            return paramContext;
          }
        }
        else
        {
          paramContext.flags |= 32;
        }
      }
      paramContext.defaults = -1;
      if ((paramInt2 & 0x4) != 0);
      for (paramContext.defaults |= 1; ; paramContext.defaults &= -2)
      {
        if ((paramInt2 & 0x2) == 0)
          break label141;
        paramContext.defaults |= 2;
        break;
      }
      label141: paramContext.defaults &= -3;
    }
  }

  public static Notification a(Context paramContext, int paramInt, String paramString1, String paramString2, boolean paramBoolean)
  {
    synchronized (c)
    {
      PushNotificationBuilder localPushNotificationBuilder = a(paramContext, paramInt);
      localPushNotificationBuilder.setNotificationTitle(paramString1);
      localPushNotificationBuilder.setNotificationText(paramString2);
      paramContext = localPushNotificationBuilder.construct(paramContext);
      if (paramBoolean)
      {
        paramContext.defaults = -1;
        return paramContext;
      }
      paramContext.defaults = 0;
    }
  }

  private static PushNotificationBuilder a(Context paramContext)
  {
    BasicPushNotificationBuilder localBasicPushNotificationBuilder = new BasicPushNotificationBuilder();
    localBasicPushNotificationBuilder.setNotificationFlags(16);
    localBasicPushNotificationBuilder.setNotificationDefaults(3);
    localBasicPushNotificationBuilder.setStatusbarIcon(paramContext.getApplicationInfo().icon);
    return localBasicPushNotificationBuilder;
  }

  // ERROR //
  private static PushNotificationBuilder a(Context paramContext, int paramInt)
  {
    // Byte code:
    //   0: getstatic 17	com/baidu/android/pushservice/e:a	Ljava/lang/String;
    //   3: new 88	java/lang/StringBuilder
    //   6: dup
    //   7: ldc 90
    //   9: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   12: iload_1
    //   13: invokevirtual 96	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   16: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   19: invokestatic 105	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   22: aload_0
    //   23: getstatic 21	com/baidu/android/pushservice/e:b	Ljava/lang/String;
    //   26: iconst_0
    //   27: invokevirtual 109	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   30: iload_1
    //   31: invokestatic 115	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   34: aconst_null
    //   35: invokeinterface 121 3 0
    //   40: astore_2
    //   41: aload_2
    //   42: ifnull +159 -> 201
    //   45: new 123	java/io/ByteArrayInputStream
    //   48: dup
    //   49: aload_2
    //   50: invokevirtual 127	java/lang/String:getBytes	()[B
    //   53: invokestatic 132	com/baidu/android/pushservice/j/b:a	([B)[B
    //   56: invokespecial 135	java/io/ByteArrayInputStream:<init>	([B)V
    //   59: astore_2
    //   60: new 137	java/io/ObjectInputStream
    //   63: dup
    //   64: aload_2
    //   65: invokespecial 140	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   68: astore_3
    //   69: aload_3
    //   70: invokevirtual 144	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   73: checkcast 35	com/baidu/android/pushservice/PushNotificationBuilder
    //   76: astore_0
    //   77: aload_3
    //   78: invokevirtual 147	java/io/ObjectInputStream:close	()V
    //   81: aload_2
    //   82: invokevirtual 148	java/io/ByteArrayInputStream:close	()V
    //   85: aload_0
    //   86: areturn
    //   87: astore_2
    //   88: aconst_null
    //   89: astore_0
    //   90: getstatic 17	com/baidu/android/pushservice/e:a	Ljava/lang/String;
    //   93: ldc 150
    //   95: invokestatic 153	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   98: getstatic 17	com/baidu/android/pushservice/e:a	Ljava/lang/String;
    //   101: new 88	java/lang/StringBuilder
    //   104: dup
    //   105: ldc 155
    //   107: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   110: aload_2
    //   111: invokevirtual 158	java/io/StreamCorruptedException:getMessage	()Ljava/lang/String;
    //   114: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   120: invokestatic 153	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   123: aload_0
    //   124: areturn
    //   125: astore_2
    //   126: aconst_null
    //   127: astore_0
    //   128: getstatic 17	com/baidu/android/pushservice/e:a	Ljava/lang/String;
    //   131: ldc 150
    //   133: invokestatic 153	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   136: getstatic 17	com/baidu/android/pushservice/e:a	Ljava/lang/String;
    //   139: new 88	java/lang/StringBuilder
    //   142: dup
    //   143: ldc 155
    //   145: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   148: aload_2
    //   149: invokevirtual 162	java/io/IOException:getMessage	()Ljava/lang/String;
    //   152: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   158: invokestatic 153	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   161: aload_0
    //   162: areturn
    //   163: astore_2
    //   164: aconst_null
    //   165: astore_0
    //   166: getstatic 17	com/baidu/android/pushservice/e:a	Ljava/lang/String;
    //   169: ldc 164
    //   171: invokestatic 153	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   174: getstatic 17	com/baidu/android/pushservice/e:a	Ljava/lang/String;
    //   177: new 88	java/lang/StringBuilder
    //   180: dup
    //   181: ldc 155
    //   183: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   186: aload_2
    //   187: invokevirtual 165	java/lang/ClassNotFoundException:getMessage	()Ljava/lang/String;
    //   190: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   193: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   196: invokestatic 153	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   199: aload_0
    //   200: areturn
    //   201: aload_0
    //   202: invokestatic 167	com/baidu/android/pushservice/e:b	(Landroid/content/Context;)Lcom/baidu/android/pushservice/PushNotificationBuilder;
    //   205: areturn
    //   206: astore_2
    //   207: goto -41 -> 166
    //   210: astore_2
    //   211: goto -83 -> 128
    //   214: astore_2
    //   215: goto -125 -> 90
    //
    // Exception table:
    //   from	to	target	type
    //   60	77	87	java/io/StreamCorruptedException
    //   60	77	125	java/io/IOException
    //   60	77	163	java/lang/ClassNotFoundException
    //   77	85	206	java/lang/ClassNotFoundException
    //   77	85	210	java/io/IOException
    //   77	85	214	java/io/StreamCorruptedException
  }

  public static void a(Context paramContext, int paramInt, PushNotificationBuilder paramPushNotificationBuilder)
  {
    try
    {
      synchronized (c)
      {
        try
        {
          ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
          ObjectOutputStream localObjectOutputStream = new ObjectOutputStream(localByteArrayOutputStream);
          localObjectOutputStream.writeObject(paramPushNotificationBuilder);
          paramPushNotificationBuilder = b.a(localByteArrayOutputStream.toByteArray(), "US-ASCII");
          paramContext = paramContext.getSharedPreferences(b, 0).edit();
          paramContext.putString(String.valueOf(paramInt), paramPushNotificationBuilder);
          paramContext.commit();
          localByteArrayOutputStream.close();
          localObjectOutputStream.close();
          return;
        }
        catch (StreamCorruptedException paramContext)
        {
          while (true)
          {
            a.e(a, "setNotificationBuilder write object error");
            a.e(a, "error " + paramContext.getMessage());
          }
        }
      }
    }
    catch (IOException paramContext)
    {
      while (true)
      {
        a.e(a, "setNotificationBuilder write object error");
        a.e(a, "error " + paramContext.getMessage());
      }
    }
  }

  public static void a(Context paramContext, PushNotificationBuilder paramPushNotificationBuilder)
  {
    try
    {
      synchronized (c)
      {
        try
        {
          ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
          ObjectOutputStream localObjectOutputStream = new ObjectOutputStream(localByteArrayOutputStream);
          localObjectOutputStream.writeObject(paramPushNotificationBuilder);
          paramPushNotificationBuilder = b.a(localByteArrayOutputStream.toByteArray(), "US-ASCII");
          paramContext = paramContext.getSharedPreferences(b, 0).edit();
          paramContext.putString(d, paramPushNotificationBuilder);
          paramContext.commit();
          localByteArrayOutputStream.close();
          localObjectOutputStream.close();
          return;
        }
        catch (StreamCorruptedException paramContext)
        {
          while (true)
          {
            a.e(a, "setDefaultNotificationBuilder write object error");
            a.e(a, "error " + paramContext.getMessage());
          }
        }
      }
    }
    catch (IOException paramContext)
    {
      while (true)
      {
        a.e(a, "setDefaultNotificationBuilder write object error");
        a.e(a, "error " + paramContext.getMessage());
      }
    }
  }

  // ERROR //
  private static PushNotificationBuilder b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: getstatic 21	com/baidu/android/pushservice/e:b	Ljava/lang/String;
    //   4: iconst_0
    //   5: invokevirtual 109	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   8: new 88	java/lang/StringBuilder
    //   11: dup
    //   12: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   15: getstatic 28	com/baidu/android/pushservice/e:d	I
    //   18: invokevirtual 96	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   21: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   24: aconst_null
    //   25: invokeinterface 121 3 0
    //   30: astore_1
    //   31: aload_1
    //   32: ifnull +159 -> 191
    //   35: new 123	java/io/ByteArrayInputStream
    //   38: dup
    //   39: aload_1
    //   40: invokevirtual 127	java/lang/String:getBytes	()[B
    //   43: invokestatic 132	com/baidu/android/pushservice/j/b:a	([B)[B
    //   46: invokespecial 135	java/io/ByteArrayInputStream:<init>	([B)V
    //   49: astore_1
    //   50: new 137	java/io/ObjectInputStream
    //   53: dup
    //   54: aload_1
    //   55: invokespecial 140	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   58: astore_2
    //   59: aload_2
    //   60: invokevirtual 144	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   63: checkcast 35	com/baidu/android/pushservice/PushNotificationBuilder
    //   66: astore_0
    //   67: aload_2
    //   68: invokevirtual 147	java/io/ObjectInputStream:close	()V
    //   71: aload_1
    //   72: invokevirtual 148	java/io/ByteArrayInputStream:close	()V
    //   75: aload_0
    //   76: areturn
    //   77: astore_1
    //   78: aconst_null
    //   79: astore_0
    //   80: getstatic 17	com/baidu/android/pushservice/e:a	Ljava/lang/String;
    //   83: ldc 212
    //   85: invokestatic 153	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   88: getstatic 17	com/baidu/android/pushservice/e:a	Ljava/lang/String;
    //   91: new 88	java/lang/StringBuilder
    //   94: dup
    //   95: ldc 155
    //   97: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   100: aload_1
    //   101: invokevirtual 158	java/io/StreamCorruptedException:getMessage	()Ljava/lang/String;
    //   104: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   110: invokestatic 153	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   113: aload_0
    //   114: areturn
    //   115: astore_1
    //   116: aconst_null
    //   117: astore_0
    //   118: getstatic 17	com/baidu/android/pushservice/e:a	Ljava/lang/String;
    //   121: ldc 212
    //   123: invokestatic 153	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   126: getstatic 17	com/baidu/android/pushservice/e:a	Ljava/lang/String;
    //   129: new 88	java/lang/StringBuilder
    //   132: dup
    //   133: ldc 155
    //   135: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   138: aload_1
    //   139: invokevirtual 162	java/io/IOException:getMessage	()Ljava/lang/String;
    //   142: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   148: invokestatic 153	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   151: aload_0
    //   152: areturn
    //   153: astore_1
    //   154: aconst_null
    //   155: astore_0
    //   156: getstatic 17	com/baidu/android/pushservice/e:a	Ljava/lang/String;
    //   159: ldc 214
    //   161: invokestatic 153	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   164: getstatic 17	com/baidu/android/pushservice/e:a	Ljava/lang/String;
    //   167: new 88	java/lang/StringBuilder
    //   170: dup
    //   171: ldc 155
    //   173: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   176: aload_1
    //   177: invokevirtual 165	java/lang/ClassNotFoundException:getMessage	()Ljava/lang/String;
    //   180: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   186: invokestatic 153	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   189: aload_0
    //   190: areturn
    //   191: aload_0
    //   192: invokestatic 216	com/baidu/android/pushservice/e:a	(Landroid/content/Context;)Lcom/baidu/android/pushservice/PushNotificationBuilder;
    //   195: areturn
    //   196: astore_1
    //   197: goto -41 -> 156
    //   200: astore_1
    //   201: goto -83 -> 118
    //   204: astore_1
    //   205: goto -125 -> 80
    //
    // Exception table:
    //   from	to	target	type
    //   50	67	77	java/io/StreamCorruptedException
    //   50	67	115	java/io/IOException
    //   50	67	153	java/lang/ClassNotFoundException
    //   67	75	196	java/lang/ClassNotFoundException
    //   67	75	200	java/io/IOException
    //   67	75	204	java/io/StreamCorruptedException
  }

  public static void b(Context paramContext, PushNotificationBuilder paramPushNotificationBuilder)
  {
    a(paramContext, 8888, paramPushNotificationBuilder);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e
 * JD-Core Version:    0.6.2
 */