package com.loc;

import com.autonavi.aps.amapapi.model.AmapLoc;
import org.json.JSONException;
import org.json.JSONObject;

public final class bs
{
  public static AmapLoc b(String paramString)
  {
    AmapLoc localAmapLoc = new AmapLoc();
    localAmapLoc.b(7);
    try
    {
      Object localObject = new JSONObject(paramString);
      if ((!((JSONObject)localObject).has("status")) || (!((JSONObject)localObject).has("info")))
        ag.f.append("json is error " + paramString);
      String str = ((JSONObject)localObject).getString("status");
      localObject = ((JSONObject)localObject).getString("info");
      if (str.equals("1"))
        ag.f.append("json is error " + paramString);
      if (str.equals("0"))
        ag.f.append("auth fail:" + (String)localObject);
      localAmapLoc.b(ag.f.toString());
      return localAmapLoc;
    }
    catch (JSONException paramString)
    {
      while (true)
        ag.f.append("json exception error:" + paramString.getMessage());
    }
  }

  // ERROR //
  public final AmapLoc a(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: astore_2
    //   2: aload_1
    //   3: ldc 81
    //   5: invokevirtual 85	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   8: ifne +53 -> 61
    //   11: new 40	java/lang/StringBuilder
    //   14: dup
    //   15: invokespecial 86	java/lang/StringBuilder:<init>	()V
    //   18: astore_3
    //   19: aload_3
    //   20: aload_1
    //   21: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: pop
    //   25: aload_3
    //   26: invokevirtual 90	java/lang/StringBuilder:reverse	()Ljava/lang/StringBuilder;
    //   29: pop
    //   30: new 59	java/lang/String
    //   33: dup
    //   34: aload_3
    //   35: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: invokestatic 95	com/loc/ej:a	(Ljava/lang/String;)[B
    //   41: ldc 97
    //   43: invokespecial 100	java/lang/String:<init>	([BLjava/lang/String;)V
    //   46: astore_2
    //   47: aload_2
    //   48: astore_1
    //   49: aload_3
    //   50: iconst_0
    //   51: aload_3
    //   52: invokevirtual 104	java/lang/StringBuilder:length	()I
    //   55: invokevirtual 108	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   58: pop
    //   59: aload_1
    //   60: astore_2
    //   61: aload_2
    //   62: ldc 110
    //   64: invokevirtual 85	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   67: pop
    //   68: new 112	java/io/ByteArrayInputStream
    //   71: dup
    //   72: aload_2
    //   73: ldc 97
    //   75: invokevirtual 115	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   78: invokespecial 118	java/io/ByteArrayInputStream:<init>	([B)V
    //   81: astore_1
    //   82: invokestatic 124	javax/xml/parsers/SAXParserFactory:newInstance	()Ljavax/xml/parsers/SAXParserFactory;
    //   85: astore_3
    //   86: new 126	com/loc/bt
    //   89: dup
    //   90: aload_0
    //   91: iconst_0
    //   92: invokespecial 129	com/loc/bt:<init>	(Lcom/loc/bs;B)V
    //   95: astore_2
    //   96: aload_3
    //   97: invokevirtual 133	javax/xml/parsers/SAXParserFactory:newSAXParser	()Ljavax/xml/parsers/SAXParser;
    //   100: astore_3
    //   101: aload_1
    //   102: ifnull +13 -> 115
    //   105: aload_3
    //   106: aload_1
    //   107: aload_2
    //   108: invokevirtual 139	javax/xml/parsers/SAXParser:parse	(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    //   111: aload_1
    //   112: invokevirtual 144	java/io/InputStream:close	()V
    //   115: aload_2
    //   116: getfield 147	com/loc/bt:a	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   119: ldc 149
    //   121: invokevirtual 152	com/autonavi/aps/amapapi/model/AmapLoc:c	(Ljava/lang/String;)V
    //   124: aload_2
    //   125: getfield 147	com/loc/bt:a	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   128: areturn
    //   129: astore_2
    //   130: aload_2
    //   131: invokevirtual 155	java/io/UnsupportedEncodingException:printStackTrace	()V
    //   134: goto -85 -> 49
    //   137: astore_1
    //   138: aconst_null
    //   139: astore_1
    //   140: goto -58 -> 82
    //   143: astore_1
    //   144: new 15	com/autonavi/aps/amapapi/model/AmapLoc
    //   147: dup
    //   148: invokespecial 16	com/autonavi/aps/amapapi/model/AmapLoc:<init>	()V
    //   151: astore_2
    //   152: aload_2
    //   153: iconst_5
    //   154: invokevirtual 19	com/autonavi/aps/amapapi/model/AmapLoc:b	(I)V
    //   157: getstatic 38	com/loc/ag:f	Ljava/lang/StringBuilder;
    //   160: new 40	java/lang/StringBuilder
    //   163: dup
    //   164: ldc 157
    //   166: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   169: aload_1
    //   170: invokevirtual 158	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   173: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   179: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: pop
    //   183: aload_2
    //   184: getstatic 38	com/loc/ag:f	Ljava/lang/StringBuilder;
    //   187: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   190: invokevirtual 69	com/autonavi/aps/amapapi/model/AmapLoc:b	(Ljava/lang/String;)V
    //   193: aload_2
    //   194: areturn
    //   195: astore_1
    //   196: aload_1
    //   197: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   30	47	129	java/io/UnsupportedEncodingException
    //   68	82	137	java/io/UnsupportedEncodingException
    //   96	101	143	java/lang/Exception
    //   105	115	143	java/lang/Exception
    //   96	101	195	finally
    //   105	115	195	finally
    //   144	193	195	finally
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.bs
 * JD-Core Version:    0.6.2
 */