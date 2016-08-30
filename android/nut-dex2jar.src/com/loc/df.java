package com.loc;

import android.os.Handler;

final class df extends Handler
{
  dd a = null;
  private boolean c = true;
  private boolean d = true;

  public df(dd paramdd1, dd paramdd2)
  {
    this.a = paramdd2;
  }

  // ERROR //
  public final void handleMessage(android.os.Message paramMessage)
  {
    // Byte code:
    //   0: aload_1
    //   1: getfield 36	android/os/Message:what	I
    //   4: tableswitch	default:+690 -> 694, 0:+44->48, 1:+50->54, 2:+437->441, 3:+453->457, 4:+463->467, 5:+547->551, 6:+654->658
    //   49: aload_1
    //   50: invokespecial 38	android/os/Handler:handleMessage	(Landroid/os/Message;)V
    //   53: return
    //   54: aload_0
    //   55: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   58: getfield 44	com/loc/dd:j	Ljava/lang/Object;
    //   61: astore 8
    //   63: aload 8
    //   65: monitorenter
    //   66: aload_1
    //   67: invokevirtual 48	android/os/Message:getData	()Landroid/os/Bundle;
    //   70: astore 7
    //   72: aload_0
    //   73: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   76: aload 7
    //   78: ldc 50
    //   80: invokevirtual 56	android/os/Bundle:getBoolean	(Ljava/lang/String;)Z
    //   83: putfield 59	com/loc/dd:f	Z
    //   86: aload_1
    //   87: getfield 63	android/os/Message:replyTo	Landroid/os/Messenger;
    //   90: astore 9
    //   92: invokestatic 68	com/loc/by:b	()J
    //   95: lstore_2
    //   96: aload 7
    //   98: ldc 70
    //   100: invokevirtual 56	android/os/Bundle:getBoolean	(Ljava/lang/String;)Z
    //   103: istore 4
    //   105: aload 7
    //   107: ldc 72
    //   109: invokevirtual 56	android/os/Bundle:getBoolean	(Ljava/lang/String;)Z
    //   112: istore 5
    //   114: iload 4
    //   116: aload_0
    //   117: getfield 21	com/loc/df:c	Z
    //   120: if_icmpne +12 -> 132
    //   123: iload 5
    //   125: aload_0
    //   126: getfield 23	com/loc/df:d	Z
    //   129: if_icmpeq +11 -> 140
    //   132: aload_0
    //   133: getfield 19	com/loc/df:a	Lcom/loc/dd;
    //   136: lconst_0
    //   137: putfield 76	com/loc/dd:m	J
    //   140: aload_0
    //   141: iload 4
    //   143: putfield 21	com/loc/df:c	Z
    //   146: aload_0
    //   147: iload 5
    //   149: putfield 23	com/loc/df:d	Z
    //   152: aload_0
    //   153: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   156: getfield 80	com/loc/dd:l	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   159: ifnull +226 -> 385
    //   162: aload_0
    //   163: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   166: getfield 80	com/loc/dd:l	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   169: invokevirtual 85	com/autonavi/aps/amapapi/model/AmapLoc:a	()I
    //   172: ifne +213 -> 385
    //   175: lload_2
    //   176: aload_0
    //   177: getfield 19	com/loc/df:a	Lcom/loc/dd;
    //   180: getfield 76	com/loc/dd:m	J
    //   183: lsub
    //   184: ldc2_w 86
    //   187: lcmp
    //   188: ifge +197 -> 385
    //   191: invokestatic 91	android/os/Message:obtain	()Landroid/os/Message;
    //   194: astore 10
    //   196: new 52	android/os/Bundle
    //   199: dup
    //   200: invokespecial 92	android/os/Bundle:<init>	()V
    //   203: astore 11
    //   205: aload 11
    //   207: ldc 94
    //   209: aload_0
    //   210: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   213: getfield 80	com/loc/dd:l	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   216: invokevirtual 98	android/os/Bundle:putParcelable	(Ljava/lang/String;Landroid/os/Parcelable;)V
    //   219: aload 10
    //   221: aload 11
    //   223: invokevirtual 102	android/os/Message:setData	(Landroid/os/Bundle;)V
    //   226: aload 10
    //   228: iconst_1
    //   229: putfield 36	android/os/Message:what	I
    //   232: aload 9
    //   234: aload 10
    //   236: invokevirtual 107	android/os/Messenger:send	(Landroid/os/Message;)V
    //   239: aload 7
    //   241: ldc 109
    //   243: invokevirtual 56	android/os/Bundle:getBoolean	(Ljava/lang/String;)Z
    //   246: istore 6
    //   248: aload_0
    //   249: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   252: aload 7
    //   254: ldc 111
    //   256: invokevirtual 56	android/os/Bundle:getBoolean	(Ljava/lang/String;)Z
    //   259: putfield 113	com/loc/dd:b	Z
    //   262: aload 7
    //   264: ldc 115
    //   266: invokevirtual 119	android/os/Bundle:getLong	(Ljava/lang/String;)J
    //   269: lstore_2
    //   270: aload_0
    //   271: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   274: getfield 123	com/loc/dd:n	Lorg/json/JSONObject;
    //   277: ifnull +75 -> 352
    //   280: aload_0
    //   281: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   284: getfield 123	com/loc/dd:n	Lorg/json/JSONObject;
    //   287: ldc 125
    //   289: iload 4
    //   291: invokevirtual 131	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   294: pop
    //   295: aload_0
    //   296: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   299: getfield 123	com/loc/dd:n	Lorg/json/JSONObject;
    //   302: ldc 72
    //   304: iload 5
    //   306: invokevirtual 131	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   309: pop
    //   310: aload_0
    //   311: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   314: getfield 123	com/loc/dd:n	Lorg/json/JSONObject;
    //   317: astore 9
    //   319: iload 6
    //   321: ifeq +113 -> 434
    //   324: ldc 133
    //   326: astore 7
    //   328: aload 9
    //   330: ldc 109
    //   332: aload 7
    //   334: invokevirtual 136	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   337: pop
    //   338: aload_0
    //   339: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   342: getfield 123	com/loc/dd:n	Lorg/json/JSONObject;
    //   345: ldc 115
    //   347: lload_2
    //   348: invokevirtual 139	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   351: pop
    //   352: aload_0
    //   353: getfield 19	com/loc/df:a	Lcom/loc/dd;
    //   356: aload_0
    //   357: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   360: getfield 123	com/loc/dd:n	Lorg/json/JSONObject;
    //   363: invokestatic 142	com/loc/dd:a	(Lcom/loc/dd;Lorg/json/JSONObject;)V
    //   366: aload 8
    //   368: monitorexit
    //   369: goto -321 -> 48
    //   372: astore 7
    //   374: aload 8
    //   376: monitorexit
    //   377: aload 7
    //   379: athrow
    //   380: astore 7
    //   382: goto -334 -> 48
    //   385: aload_0
    //   386: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   389: getfield 146	com/loc/dd:g	Ljava/util/Vector;
    //   392: aload 9
    //   394: invokevirtual 152	java/util/Vector:contains	(Ljava/lang/Object;)Z
    //   397: ifne +16 -> 413
    //   400: aload_0
    //   401: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   404: getfield 146	com/loc/dd:g	Ljava/util/Vector;
    //   407: aload 9
    //   409: invokevirtual 155	java/util/Vector:add	(Ljava/lang/Object;)Z
    //   412: pop
    //   413: aload_0
    //   414: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   417: iconst_1
    //   418: putfield 158	com/loc/dd:i	Z
    //   421: aload_0
    //   422: getfield 19	com/loc/df:a	Lcom/loc/dd;
    //   425: getfield 44	com/loc/dd:j	Ljava/lang/Object;
    //   428: invokevirtual 163	java/lang/Object:notify	()V
    //   431: goto -192 -> 239
    //   434: ldc 165
    //   436: astore 7
    //   438: goto -110 -> 328
    //   441: aload_0
    //   442: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   445: invokevirtual 167	com/loc/dd:a	()V
    //   448: goto -400 -> 48
    //   451: astore_1
    //   452: aload_1
    //   453: invokevirtual 170	java/lang/Throwable:printStackTrace	()V
    //   456: return
    //   457: aload_0
    //   458: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   461: invokevirtual 172	com/loc/dd:b	()V
    //   464: goto -416 -> 48
    //   467: aload_0
    //   468: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   471: getfield 44	com/loc/dd:j	Ljava/lang/Object;
    //   474: astore 7
    //   476: aload 7
    //   478: monitorenter
    //   479: invokestatic 177	com/loc/bv:d	()Z
    //   482: ifeq +57 -> 539
    //   485: aload_0
    //   486: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   489: invokestatic 180	com/loc/dd:a	(Lcom/loc/dd;)I
    //   492: invokestatic 183	com/loc/bv:e	()I
    //   495: if_icmpge +44 -> 539
    //   498: aload_0
    //   499: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   502: invokestatic 185	com/loc/dd:b	(Lcom/loc/dd;)I
    //   505: pop
    //   506: aload_0
    //   507: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   510: iconst_1
    //   511: putfield 158	com/loc/dd:i	Z
    //   514: aload_0
    //   515: getfield 19	com/loc/df:a	Lcom/loc/dd;
    //   518: getfield 44	com/loc/dd:j	Ljava/lang/Object;
    //   521: invokevirtual 163	java/lang/Object:notify	()V
    //   524: aload_0
    //   525: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   528: getfield 188	com/loc/dd:d	Lcom/loc/df;
    //   531: iconst_4
    //   532: ldc2_w 189
    //   535: invokevirtual 194	com/loc/df:sendEmptyMessageDelayed	(IJ)Z
    //   538: pop
    //   539: aload 7
    //   541: monitorexit
    //   542: goto -494 -> 48
    //   545: astore_1
    //   546: aload 7
    //   548: monitorexit
    //   549: aload_1
    //   550: athrow
    //   551: aload_0
    //   552: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   555: getfield 44	com/loc/dd:j	Ljava/lang/Object;
    //   558: astore 7
    //   560: aload 7
    //   562: monitorenter
    //   563: invokestatic 196	com/loc/bv:f	()Z
    //   566: ifeq +54 -> 620
    //   569: invokestatic 198	com/loc/bv:g	()I
    //   572: iconst_2
    //   573: if_icmple +47 -> 620
    //   576: aload_0
    //   577: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   580: iconst_1
    //   581: putfield 158	com/loc/dd:i	Z
    //   584: invokestatic 201	com/loc/bv:h	()Z
    //   587: ifeq +45 -> 632
    //   590: aload_0
    //   591: getfield 19	com/loc/df:a	Lcom/loc/dd;
    //   594: getfield 44	com/loc/dd:j	Ljava/lang/Object;
    //   597: invokevirtual 163	java/lang/Object:notify	()V
    //   600: aload_0
    //   601: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   604: getfield 188	com/loc/dd:d	Lcom/loc/df;
    //   607: iconst_5
    //   608: invokestatic 198	com/loc/bv:g	()I
    //   611: sipush 1000
    //   614: imul
    //   615: i2l
    //   616: invokevirtual 194	com/loc/df:sendEmptyMessageDelayed	(IJ)Z
    //   619: pop
    //   620: aload 7
    //   622: monitorexit
    //   623: goto -575 -> 48
    //   626: astore_1
    //   627: aload 7
    //   629: monitorexit
    //   630: aload_1
    //   631: athrow
    //   632: aload_0
    //   633: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   636: getfield 204	com/loc/dd:a	Landroid/content/Context;
    //   639: invokestatic 207	com/loc/by:d	(Landroid/content/Context;)Z
    //   642: ifne -42 -> 600
    //   645: aload_0
    //   646: getfield 19	com/loc/df:a	Lcom/loc/dd;
    //   649: getfield 44	com/loc/dd:j	Ljava/lang/Object;
    //   652: invokevirtual 163	java/lang/Object:notify	()V
    //   655: goto -55 -> 600
    //   658: aload_0
    //   659: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   662: getfield 44	com/loc/dd:j	Ljava/lang/Object;
    //   665: astore 7
    //   667: aload 7
    //   669: monitorenter
    //   670: aload_0
    //   671: getfield 14	com/loc/df:b	Lcom/loc/dd;
    //   674: invokestatic 210	com/loc/dd:c	(Lcom/loc/dd;)V
    //   677: aload 7
    //   679: monitorexit
    //   680: goto -632 -> 48
    //   683: astore_1
    //   684: aload 7
    //   686: monitorexit
    //   687: aload_1
    //   688: athrow
    //   689: astore 7
    //   691: goto -643 -> 48
    //   694: goto -646 -> 48
    //
    // Exception table:
    //   from	to	target	type
    //   66	132	372	finally
    //   132	140	372	finally
    //   140	239	372	finally
    //   239	319	372	finally
    //   328	352	372	finally
    //   352	369	372	finally
    //   374	377	372	finally
    //   385	413	372	finally
    //   413	431	372	finally
    //   54	66	380	android/os/RemoteException
    //   377	380	380	android/os/RemoteException
    //   0	48	451	java/lang/Throwable
    //   48	53	451	java/lang/Throwable
    //   441	448	451	java/lang/Throwable
    //   457	464	451	java/lang/Throwable
    //   467	479	451	java/lang/Throwable
    //   549	551	451	java/lang/Throwable
    //   551	563	451	java/lang/Throwable
    //   630	632	451	java/lang/Throwable
    //   658	670	451	java/lang/Throwable
    //   687	689	451	java/lang/Throwable
    //   479	539	545	finally
    //   539	542	545	finally
    //   546	549	545	finally
    //   563	600	626	finally
    //   600	620	626	finally
    //   620	623	626	finally
    //   627	630	626	finally
    //   632	655	626	finally
    //   670	680	683	finally
    //   684	687	683	finally
    //   54	66	689	java/lang/Throwable
    //   377	380	689	java/lang/Throwable
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.df
 * JD-Core Version:    0.6.2
 */