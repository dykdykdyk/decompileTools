package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.sina.weibo.sdk.d.i;

public abstract class BaseMediaObject
  implements Parcelable
{
  public String a;
  public String b;
  public String c;
  public String d;
  public String e;
  public byte[] f;

  public BaseMediaObject()
  {
  }

  public BaseMediaObject(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = paramParcel.createByteArray();
  }

  protected abstract BaseMediaObject a(String paramString);

  // ERROR //
  public final void a(android.graphics.Bitmap paramBitmap)
  {
    // Byte code:
    //   0: new 50	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 51	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_3
    //   8: aload_3
    //   9: astore_2
    //   10: aload_1
    //   11: getstatic 57	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   14: bipush 85
    //   16: aload_3
    //   17: invokevirtual 63	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   20: pop
    //   21: aload_3
    //   22: astore_2
    //   23: aload_0
    //   24: aload_3
    //   25: invokevirtual 66	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   28: putfield 42	com/sina/weibo/sdk/api/BaseMediaObject:f	[B
    //   31: aload_3
    //   32: invokevirtual 69	java/io/ByteArrayOutputStream:close	()V
    //   35: return
    //   36: astore 4
    //   38: aconst_null
    //   39: astore_1
    //   40: aload_1
    //   41: astore_2
    //   42: aload 4
    //   44: invokevirtual 72	java/lang/Exception:printStackTrace	()V
    //   47: aload_1
    //   48: astore_2
    //   49: ldc 74
    //   51: ldc 76
    //   53: invokestatic 81	com/sina/weibo/sdk/d/i:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   56: aload_1
    //   57: ifnull -22 -> 35
    //   60: aload_1
    //   61: invokevirtual 69	java/io/ByteArrayOutputStream:close	()V
    //   64: return
    //   65: astore_1
    //   66: aload_1
    //   67: invokevirtual 82	java/io/IOException:printStackTrace	()V
    //   70: return
    //   71: astore_1
    //   72: aconst_null
    //   73: astore_2
    //   74: aload_2
    //   75: ifnull +7 -> 82
    //   78: aload_2
    //   79: invokevirtual 69	java/io/ByteArrayOutputStream:close	()V
    //   82: aload_1
    //   83: athrow
    //   84: astore_2
    //   85: aload_2
    //   86: invokevirtual 82	java/io/IOException:printStackTrace	()V
    //   89: goto -7 -> 82
    //   92: astore_1
    //   93: aload_1
    //   94: invokevirtual 82	java/io/IOException:printStackTrace	()V
    //   97: return
    //   98: astore_1
    //   99: goto -25 -> 74
    //   102: astore 4
    //   104: aload_3
    //   105: astore_1
    //   106: goto -66 -> 40
    //
    // Exception table:
    //   from	to	target	type
    //   0	8	36	java/lang/Exception
    //   60	64	65	java/io/IOException
    //   0	8	71	finally
    //   78	82	84	java/io/IOException
    //   31	35	92	java/io/IOException
    //   10	21	98	finally
    //   23	31	98	finally
    //   42	47	98	finally
    //   49	56	98	finally
    //   10	21	102	java/lang/Exception
    //   23	31	102	java/lang/Exception
  }

  protected boolean a()
  {
    if ((this.a == null) || (this.a.length() > 512))
    {
      i.c("Weibo.BaseMediaObject", "checkArgs fail, actionUrl is invalid");
      return false;
    }
    if ((this.c == null) || (this.c.length() > 512))
    {
      i.c("Weibo.BaseMediaObject", "checkArgs fail, identify is invalid");
      return false;
    }
    if ((this.f == null) || (this.f.length > 32768))
    {
      StringBuilder localStringBuilder = new StringBuilder("checkArgs fail, thumbData is invalid,size is ");
      if (this.f != null);
      for (int i = this.f.length; ; i = -1)
      {
        i.c("Weibo.BaseMediaObject", i + "! more then 32768.");
        return false;
      }
    }
    if ((this.d == null) || (this.d.length() > 512))
    {
      i.c("Weibo.BaseMediaObject", "checkArgs fail, title is invalid");
      return false;
    }
    if ((this.e == null) || (this.e.length() > 1024))
    {
      i.c("Weibo.BaseMediaObject", "checkArgs fail, description is invalid");
      return false;
    }
    return true;
  }

  protected abstract String b();

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeByteArray(this.f);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.api.BaseMediaObject
 * JD-Core Version:    0.6.2
 */