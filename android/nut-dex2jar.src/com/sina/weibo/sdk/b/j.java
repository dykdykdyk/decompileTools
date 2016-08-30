package com.sina.weibo.sdk.b;

import android.content.SharedPreferences;

final class j
  implements Runnable
{
  j(i parami, SharedPreferences paramSharedPreferences)
  {
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: invokestatic 28	com/sina/weibo/sdk/b/i:b	()Ljava/lang/String;
    //   3: new 30	java/lang/StringBuilder
    //   6: dup
    //   7: ldc 32
    //   9: invokespecial 35	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   12: aload_0
    //   13: getfield 14	com/sina/weibo/sdk/b/j:a	Lcom/sina/weibo/sdk/b/i;
    //   16: invokestatic 38	com/sina/weibo/sdk/b/i:a	(Lcom/sina/weibo/sdk/b/i;)Ljava/util/concurrent/locks/ReentrantLock;
    //   19: invokevirtual 44	java/util/concurrent/locks/ReentrantLock:isLocked	()Z
    //   22: invokevirtual 48	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   25: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   28: invokestatic 57	com/sina/weibo/sdk/d/i:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   31: aload_0
    //   32: getfield 14	com/sina/weibo/sdk/b/j:a	Lcom/sina/weibo/sdk/b/i;
    //   35: invokestatic 38	com/sina/weibo/sdk/b/i:a	(Lcom/sina/weibo/sdk/b/i;)Ljava/util/concurrent/locks/ReentrantLock;
    //   38: invokevirtual 60	java/util/concurrent/locks/ReentrantLock:tryLock	()Z
    //   41: ifne +4 -> 45
    //   44: return
    //   45: aconst_null
    //   46: astore_2
    //   47: aconst_null
    //   48: astore_3
    //   49: aload_2
    //   50: astore_1
    //   51: aload_0
    //   52: getfield 14	com/sina/weibo/sdk/b/j:a	Lcom/sina/weibo/sdk/b/i;
    //   55: invokestatic 63	com/sina/weibo/sdk/b/i:b	(Lcom/sina/weibo/sdk/b/i;)Landroid/content/Context;
    //   58: aload_0
    //   59: getfield 14	com/sina/weibo/sdk/b/j:a	Lcom/sina/weibo/sdk/b/i;
    //   62: invokestatic 67	com/sina/weibo/sdk/b/i:c	(Lcom/sina/weibo/sdk/b/i;)Ljava/lang/String;
    //   65: invokestatic 70	com/sina/weibo/sdk/b/i:b	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   68: astore 4
    //   70: aload 4
    //   72: ifnull +323 -> 395
    //   75: aload_2
    //   76: astore_1
    //   77: new 72	com/sina/weibo/sdk/b/h
    //   80: dup
    //   81: aload 4
    //   83: invokestatic 77	com/sina/weibo/sdk/d/a:a	(Ljava/lang/String;)Ljava/lang/String;
    //   86: invokespecial 78	com/sina/weibo/sdk/b/h:<init>	(Ljava/lang/String;)V
    //   89: astore_2
    //   90: aload_0
    //   91: getfield 14	com/sina/weibo/sdk/b/j:a	Lcom/sina/weibo/sdk/b/i;
    //   94: aload_2
    //   95: getfield 81	com/sina/weibo/sdk/b/h:a	Ljava/util/List;
    //   98: invokestatic 84	com/sina/weibo/sdk/b/i:a	(Lcom/sina/weibo/sdk/b/i;Ljava/util/List;)V
    //   101: aload_0
    //   102: getfield 14	com/sina/weibo/sdk/b/j:a	Lcom/sina/weibo/sdk/b/i;
    //   105: aload_2
    //   106: getfield 86	com/sina/weibo/sdk/b/h:b	Ljava/util/List;
    //   109: invokestatic 88	com/sina/weibo/sdk/b/i:b	(Lcom/sina/weibo/sdk/b/i;Ljava/util/List;)V
    //   112: aload_0
    //   113: getfield 14	com/sina/weibo/sdk/b/j:a	Lcom/sina/weibo/sdk/b/i;
    //   116: invokestatic 38	com/sina/weibo/sdk/b/i:a	(Lcom/sina/weibo/sdk/b/i;)Ljava/util/concurrent/locks/ReentrantLock;
    //   119: invokevirtual 91	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   122: aload_2
    //   123: ifnull +41 -> 164
    //   126: aload_0
    //   127: getfield 14	com/sina/weibo/sdk/b/j:a	Lcom/sina/weibo/sdk/b/i;
    //   130: invokestatic 63	com/sina/weibo/sdk/b/i:b	(Lcom/sina/weibo/sdk/b/i;)Landroid/content/Context;
    //   133: pop
    //   134: aload_0
    //   135: getfield 16	com/sina/weibo/sdk/b/j:b	Landroid/content/SharedPreferences;
    //   138: aload_2
    //   139: getfield 94	com/sina/weibo/sdk/b/h:c	I
    //   142: i2l
    //   143: invokestatic 99	com/sina/weibo/sdk/b/k:a	(Landroid/content/SharedPreferences;J)V
    //   146: aload_0
    //   147: getfield 14	com/sina/weibo/sdk/b/j:a	Lcom/sina/weibo/sdk/b/i;
    //   150: invokestatic 63	com/sina/weibo/sdk/b/i:b	(Lcom/sina/weibo/sdk/b/i;)Landroid/content/Context;
    //   153: pop
    //   154: aload_0
    //   155: getfield 16	com/sina/weibo/sdk/b/j:b	Landroid/content/SharedPreferences;
    //   158: invokestatic 105	java/lang/System:currentTimeMillis	()J
    //   161: invokestatic 107	com/sina/weibo/sdk/b/k:b	(Landroid/content/SharedPreferences;J)V
    //   164: invokestatic 28	com/sina/weibo/sdk/b/i:b	()Ljava/lang/String;
    //   167: new 30	java/lang/StringBuilder
    //   170: dup
    //   171: ldc 109
    //   173: invokespecial 35	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   176: aload_0
    //   177: getfield 14	com/sina/weibo/sdk/b/j:a	Lcom/sina/weibo/sdk/b/i;
    //   180: invokestatic 38	com/sina/weibo/sdk/b/i:a	(Lcom/sina/weibo/sdk/b/i;)Ljava/util/concurrent/locks/ReentrantLock;
    //   183: invokevirtual 44	java/util/concurrent/locks/ReentrantLock:isLocked	()Z
    //   186: invokevirtual 48	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   189: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   192: invokestatic 57	com/sina/weibo/sdk/d/i:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   195: return
    //   196: astore_1
    //   197: aload_3
    //   198: astore_2
    //   199: aload_1
    //   200: astore_3
    //   201: aload_2
    //   202: astore_1
    //   203: invokestatic 28	com/sina/weibo/sdk/b/i:b	()Ljava/lang/String;
    //   206: aload_3
    //   207: invokevirtual 112	com/sina/weibo/sdk/exception/WeiboException:getMessage	()Ljava/lang/String;
    //   210: invokestatic 114	com/sina/weibo/sdk/d/i:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   213: aload_0
    //   214: getfield 14	com/sina/weibo/sdk/b/j:a	Lcom/sina/weibo/sdk/b/i;
    //   217: invokestatic 38	com/sina/weibo/sdk/b/i:a	(Lcom/sina/weibo/sdk/b/i;)Ljava/util/concurrent/locks/ReentrantLock;
    //   220: invokevirtual 91	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   223: aload_2
    //   224: ifnull +41 -> 265
    //   227: aload_0
    //   228: getfield 14	com/sina/weibo/sdk/b/j:a	Lcom/sina/weibo/sdk/b/i;
    //   231: invokestatic 63	com/sina/weibo/sdk/b/i:b	(Lcom/sina/weibo/sdk/b/i;)Landroid/content/Context;
    //   234: pop
    //   235: aload_0
    //   236: getfield 16	com/sina/weibo/sdk/b/j:b	Landroid/content/SharedPreferences;
    //   239: aload_2
    //   240: getfield 94	com/sina/weibo/sdk/b/h:c	I
    //   243: i2l
    //   244: invokestatic 99	com/sina/weibo/sdk/b/k:a	(Landroid/content/SharedPreferences;J)V
    //   247: aload_0
    //   248: getfield 14	com/sina/weibo/sdk/b/j:a	Lcom/sina/weibo/sdk/b/i;
    //   251: invokestatic 63	com/sina/weibo/sdk/b/i:b	(Lcom/sina/weibo/sdk/b/i;)Landroid/content/Context;
    //   254: pop
    //   255: aload_0
    //   256: getfield 16	com/sina/weibo/sdk/b/j:b	Landroid/content/SharedPreferences;
    //   259: invokestatic 105	java/lang/System:currentTimeMillis	()J
    //   262: invokestatic 107	com/sina/weibo/sdk/b/k:b	(Landroid/content/SharedPreferences;J)V
    //   265: invokestatic 28	com/sina/weibo/sdk/b/i:b	()Ljava/lang/String;
    //   268: new 30	java/lang/StringBuilder
    //   271: dup
    //   272: ldc 109
    //   274: invokespecial 35	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   277: aload_0
    //   278: getfield 14	com/sina/weibo/sdk/b/j:a	Lcom/sina/weibo/sdk/b/i;
    //   281: invokestatic 38	com/sina/weibo/sdk/b/i:a	(Lcom/sina/weibo/sdk/b/i;)Ljava/util/concurrent/locks/ReentrantLock;
    //   284: invokevirtual 44	java/util/concurrent/locks/ReentrantLock:isLocked	()Z
    //   287: invokevirtual 48	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   290: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   293: invokestatic 57	com/sina/weibo/sdk/d/i:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   296: return
    //   297: astore_3
    //   298: aload_1
    //   299: astore_2
    //   300: aload_3
    //   301: astore_1
    //   302: aload_0
    //   303: getfield 14	com/sina/weibo/sdk/b/j:a	Lcom/sina/weibo/sdk/b/i;
    //   306: invokestatic 38	com/sina/weibo/sdk/b/i:a	(Lcom/sina/weibo/sdk/b/i;)Ljava/util/concurrent/locks/ReentrantLock;
    //   309: invokevirtual 91	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   312: aload_2
    //   313: ifnull +41 -> 354
    //   316: aload_0
    //   317: getfield 14	com/sina/weibo/sdk/b/j:a	Lcom/sina/weibo/sdk/b/i;
    //   320: invokestatic 63	com/sina/weibo/sdk/b/i:b	(Lcom/sina/weibo/sdk/b/i;)Landroid/content/Context;
    //   323: pop
    //   324: aload_0
    //   325: getfield 16	com/sina/weibo/sdk/b/j:b	Landroid/content/SharedPreferences;
    //   328: aload_2
    //   329: getfield 94	com/sina/weibo/sdk/b/h:c	I
    //   332: i2l
    //   333: invokestatic 99	com/sina/weibo/sdk/b/k:a	(Landroid/content/SharedPreferences;J)V
    //   336: aload_0
    //   337: getfield 14	com/sina/weibo/sdk/b/j:a	Lcom/sina/weibo/sdk/b/i;
    //   340: invokestatic 63	com/sina/weibo/sdk/b/i:b	(Lcom/sina/weibo/sdk/b/i;)Landroid/content/Context;
    //   343: pop
    //   344: aload_0
    //   345: getfield 16	com/sina/weibo/sdk/b/j:b	Landroid/content/SharedPreferences;
    //   348: invokestatic 105	java/lang/System:currentTimeMillis	()J
    //   351: invokestatic 107	com/sina/weibo/sdk/b/k:b	(Landroid/content/SharedPreferences;J)V
    //   354: invokestatic 28	com/sina/weibo/sdk/b/i:b	()Ljava/lang/String;
    //   357: new 30	java/lang/StringBuilder
    //   360: dup
    //   361: ldc 109
    //   363: invokespecial 35	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   366: aload_0
    //   367: getfield 14	com/sina/weibo/sdk/b/j:a	Lcom/sina/weibo/sdk/b/i;
    //   370: invokestatic 38	com/sina/weibo/sdk/b/i:a	(Lcom/sina/weibo/sdk/b/i;)Ljava/util/concurrent/locks/ReentrantLock;
    //   373: invokevirtual 44	java/util/concurrent/locks/ReentrantLock:isLocked	()Z
    //   376: invokevirtual 48	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   379: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   382: invokestatic 57	com/sina/weibo/sdk/d/i:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   385: aload_1
    //   386: athrow
    //   387: astore_1
    //   388: goto -86 -> 302
    //   391: astore_3
    //   392: goto -191 -> 201
    //   395: aconst_null
    //   396: astore_2
    //   397: goto -285 -> 112
    //
    // Exception table:
    //   from	to	target	type
    //   51	70	196	com/sina/weibo/sdk/exception/WeiboException
    //   77	90	196	com/sina/weibo/sdk/exception/WeiboException
    //   51	70	297	finally
    //   77	90	297	finally
    //   203	213	297	finally
    //   90	112	387	finally
    //   90	112	391	com/sina/weibo/sdk/exception/WeiboException
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.b.j
 * JD-Core Version:    0.6.2
 */