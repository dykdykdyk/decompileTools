package com.facebook;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.ParcelFileDescriptor;
import com.facebook.internal.Logger;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Collection;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class Request$Serializer
  implements Request.KeyValueSerializer
{
  private boolean firstWrite = true;
  private final Logger logger;
  private final OutputStream outputStream;
  private boolean useUrlEncode = false;

  public Request$Serializer(OutputStream paramOutputStream, Logger paramLogger, boolean paramBoolean)
  {
    this.outputStream = paramOutputStream;
    this.logger = paramLogger;
    this.useUrlEncode = paramBoolean;
  }

  public void write(String paramString, Object[] paramArrayOfObject)
    throws IOException
  {
    if (!this.useUrlEncode)
    {
      if (this.firstWrite)
      {
        this.outputStream.write("--".getBytes());
        this.outputStream.write("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f".getBytes());
        this.outputStream.write("\r\n".getBytes());
        this.firstWrite = false;
      }
      this.outputStream.write(String.format(paramString, paramArrayOfObject).getBytes());
      return;
    }
    this.outputStream.write(URLEncoder.encode(String.format(paramString, paramArrayOfObject), "UTF-8").getBytes());
  }

  public void writeBitmap(String paramString, Bitmap paramBitmap)
    throws IOException
  {
    writeContentDisposition(paramString, paramString, "image/png");
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, this.outputStream);
    writeLine("", new Object[0]);
    writeRecordBoundary();
    if (this.logger != null)
      this.logger.appendKeyValue("    " + paramString, "<Image>");
  }

  public void writeBytes(String paramString, byte[] paramArrayOfByte)
    throws IOException
  {
    writeContentDisposition(paramString, paramString, "content/unknown");
    this.outputStream.write(paramArrayOfByte);
    writeLine("", new Object[0]);
    writeRecordBoundary();
    if (this.logger != null)
      this.logger.appendKeyValue("    " + paramString, String.format("<Data: %d>", new Object[] { Integer.valueOf(paramArrayOfByte.length) }));
  }

  public void writeContentDisposition(String paramString1, String paramString2, String paramString3)
    throws IOException
  {
    if (!this.useUrlEncode)
    {
      write("Content-Disposition: form-data; name=\"%s\"", new Object[] { paramString1 });
      if (paramString2 != null)
        write("; filename=\"%s\"", new Object[] { paramString2 });
      writeLine("", new Object[0]);
      if (paramString3 != null)
        writeLine("%s: %s", new Object[] { "Content-Type", paramString3 });
      writeLine("", new Object[0]);
      return;
    }
    this.outputStream.write(String.format("%s=", new Object[] { paramString1 }).getBytes());
  }

  // ERROR //
  public void writeFile(String paramString1, ParcelFileDescriptor paramParcelFileDescriptor, String paramString2)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aload_3
    //   4: astore 6
    //   6: aload_3
    //   7: ifnonnull +7 -> 14
    //   10: ldc 116
    //   12: astore 6
    //   14: aload_0
    //   15: aload_1
    //   16: aload_1
    //   17: aload 6
    //   19: invokevirtual 69	com/facebook/Request$Serializer:writeContentDisposition	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   22: aload_0
    //   23: getfield 24	com/facebook/Request$Serializer:outputStream	Ljava/io/OutputStream;
    //   26: instanceof 140
    //   29: ifeq +82 -> 111
    //   32: aload_0
    //   33: getfield 24	com/facebook/Request$Serializer:outputStream	Ljava/io/OutputStream;
    //   36: checkcast 140	com/facebook/ProgressNoopOutputStream
    //   39: aload_2
    //   40: invokevirtual 146	android/os/ParcelFileDescriptor:getStatSize	()J
    //   43: invokevirtual 150	com/facebook/ProgressNoopOutputStream:addProgress	(J)V
    //   46: iconst_0
    //   47: istore 4
    //   49: aload_0
    //   50: ldc 83
    //   52: iconst_0
    //   53: anewarray 4	java/lang/Object
    //   56: invokevirtual 86	com/facebook/Request$Serializer:writeLine	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   59: aload_0
    //   60: invokevirtual 89	com/facebook/Request$Serializer:writeRecordBoundary	()V
    //   63: aload_0
    //   64: getfield 26	com/facebook/Request$Serializer:logger	Lcom/facebook/internal/Logger;
    //   67: ifnull +43 -> 110
    //   70: aload_0
    //   71: getfield 26	com/facebook/Request$Serializer:logger	Lcom/facebook/internal/Logger;
    //   74: new 91	java/lang/StringBuilder
    //   77: dup
    //   78: ldc 93
    //   80: invokespecial 96	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   83: aload_1
    //   84: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   90: ldc 118
    //   92: iconst_1
    //   93: anewarray 4	java/lang/Object
    //   96: dup
    //   97: iconst_0
    //   98: iload 4
    //   100: invokestatic 124	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   103: aastore
    //   104: invokestatic 52	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   107: invokevirtual 112	com/facebook/internal/Logger:appendKeyValue	(Ljava/lang/String;Ljava/lang/Object;)V
    //   110: return
    //   111: new 152	android/os/ParcelFileDescriptor$AutoCloseInputStream
    //   114: dup
    //   115: aload_2
    //   116: invokespecial 155	android/os/ParcelFileDescriptor$AutoCloseInputStream:<init>	(Landroid/os/ParcelFileDescriptor;)V
    //   119: astore_2
    //   120: new 157	java/io/BufferedInputStream
    //   123: dup
    //   124: aload_2
    //   125: invokespecial 160	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   128: astore_3
    //   129: sipush 8192
    //   132: newarray byte
    //   134: astore 6
    //   136: iconst_0
    //   137: istore 4
    //   139: aload_3
    //   140: aload 6
    //   142: invokevirtual 164	java/io/BufferedInputStream:read	([B)I
    //   145: istore 5
    //   147: iload 5
    //   149: iconst_m1
    //   150: if_icmpeq +25 -> 175
    //   153: aload_0
    //   154: getfield 24	com/facebook/Request$Serializer:outputStream	Ljava/io/OutputStream;
    //   157: aload 6
    //   159: iconst_0
    //   160: iload 5
    //   162: invokevirtual 167	java/io/OutputStream:write	([BII)V
    //   165: iload 4
    //   167: iload 5
    //   169: iadd
    //   170: istore 4
    //   172: goto -33 -> 139
    //   175: aload_3
    //   176: invokevirtual 170	java/io/BufferedInputStream:close	()V
    //   179: aload_2
    //   180: invokevirtual 171	android/os/ParcelFileDescriptor$AutoCloseInputStream:close	()V
    //   183: goto -134 -> 49
    //   186: astore_1
    //   187: aconst_null
    //   188: astore_2
    //   189: aload 7
    //   191: astore_3
    //   192: aload_2
    //   193: ifnull +7 -> 200
    //   196: aload_2
    //   197: invokevirtual 170	java/io/BufferedInputStream:close	()V
    //   200: aload_3
    //   201: ifnull +7 -> 208
    //   204: aload_3
    //   205: invokevirtual 171	android/os/ParcelFileDescriptor$AutoCloseInputStream:close	()V
    //   208: aload_1
    //   209: athrow
    //   210: astore_1
    //   211: aconst_null
    //   212: astore 6
    //   214: aload_2
    //   215: astore_3
    //   216: aload 6
    //   218: astore_2
    //   219: goto -27 -> 192
    //   222: astore_1
    //   223: aload_2
    //   224: astore 6
    //   226: aload_3
    //   227: astore_2
    //   228: aload 6
    //   230: astore_3
    //   231: goto -39 -> 192
    //
    // Exception table:
    //   from	to	target	type
    //   111	120	186	finally
    //   120	129	210	finally
    //   129	136	222	finally
    //   139	147	222	finally
    //   153	165	222	finally
  }

  public void writeFile(String paramString, Request.ParcelFileDescriptorWithMimeType paramParcelFileDescriptorWithMimeType)
    throws IOException
  {
    writeFile(paramString, paramParcelFileDescriptorWithMimeType.getFileDescriptor(), paramParcelFileDescriptorWithMimeType.getMimeType());
  }

  public void writeLine(String paramString, Object[] paramArrayOfObject)
    throws IOException
  {
    write(paramString, paramArrayOfObject);
    if (!this.useUrlEncode)
      write("\r\n", new Object[0]);
  }

  public void writeObject(String paramString, Object paramObject, Request paramRequest)
    throws IOException
  {
    if ((this.outputStream instanceof RequestOutputStream))
      ((RequestOutputStream)this.outputStream).setCurrentRequest(paramRequest);
    if (Request.access$100(paramObject))
    {
      writeString(paramString, Request.access$200(paramObject));
      return;
    }
    if ((paramObject instanceof Bitmap))
    {
      writeBitmap(paramString, (Bitmap)paramObject);
      return;
    }
    if ((paramObject instanceof byte[]))
    {
      writeBytes(paramString, (byte[])paramObject);
      return;
    }
    if ((paramObject instanceof ParcelFileDescriptor))
    {
      writeFile(paramString, (ParcelFileDescriptor)paramObject, null);
      return;
    }
    if ((paramObject instanceof Request.ParcelFileDescriptorWithMimeType))
    {
      writeFile(paramString, (Request.ParcelFileDescriptorWithMimeType)paramObject);
      return;
    }
    throw new IllegalArgumentException("value is not a supported type: String, Bitmap, byte[]");
  }

  public void writeRecordBoundary()
    throws IOException
  {
    if (!this.useUrlEncode)
    {
      writeLine("--%s", new Object[] { "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f" });
      return;
    }
    this.outputStream.write("&".getBytes());
  }

  public void writeRequestsAsJson(String paramString, JSONArray paramJSONArray, Collection<Request> paramCollection)
    throws IOException, JSONException
  {
    if (!(this.outputStream instanceof RequestOutputStream))
      writeString(paramString, paramJSONArray.toString());
    do
    {
      return;
      RequestOutputStream localRequestOutputStream = (RequestOutputStream)this.outputStream;
      writeContentDisposition(paramString, null, null);
      write("[", new Object[0]);
      paramCollection = paramCollection.iterator();
      int i = 0;
      if (paramCollection.hasNext())
      {
        Request localRequest = (Request)paramCollection.next();
        JSONObject localJSONObject = paramJSONArray.getJSONObject(i);
        localRequestOutputStream.setCurrentRequest(localRequest);
        if (i > 0)
          write(",%s", new Object[] { localJSONObject.toString() });
        while (true)
        {
          i += 1;
          break;
          write("%s", new Object[] { localJSONObject.toString() });
        }
      }
      write("]", new Object[0]);
    }
    while (this.logger == null);
    this.logger.appendKeyValue("    " + paramString, paramJSONArray.toString());
  }

  public void writeString(String paramString1, String paramString2)
    throws IOException
  {
    writeContentDisposition(paramString1, null, null);
    writeLine("%s", new Object[] { paramString2 });
    writeRecordBoundary();
    if (this.logger != null)
      this.logger.appendKeyValue("    " + paramString1, paramString2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.Request.Serializer
 * JD-Core Version:    0.6.2
 */