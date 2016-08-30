package com.nut.blehunter.ble;

import android.content.Context;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Vibrator;
import java.io.IOException;

public final class a
{
  public static boolean a = false;
  public int b;
  AudioManager.OnAudioFocusChangeListener c = new b(this);
  private Context d;
  private boolean e = false;
  private int f;
  private int g;
  private Vibrator h;
  private MediaPlayer i;
  private MediaPlayer j;
  private AudioManager k;

  public a(Context paramContext)
  {
    this.d = paramContext.getApplicationContext();
    this.b = 0;
    this.h = ((Vibrator)this.d.getSystemService("vibrator"));
    this.k = ((AudioManager)this.d.getSystemService("audio"));
    this.f = this.k.getStreamVolume(2);
    this.g = this.k.getRingerMode();
    this.h = ((Vibrator)this.d.getSystemService("vibrator"));
  }

  public final void a()
  {
    try
    {
      if (this.g > 0)
        this.k.setStreamVolume(2, this.f, 16);
      while (true)
      {
        this.e = false;
        return;
        this.k.setRingerMode(0);
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public final void a(int paramInt, boolean paramBoolean)
  {
    a(paramInt, paramBoolean, 2131034113, true, 2);
  }

  // ERROR //
  public final void a(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2, int paramInt3)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 50	com/nut/blehunter/ble/a:b	I
    //   4: ifle +29 -> 33
    //   7: iload_1
    //   8: aload_0
    //   9: getfield 50	com/nut/blehunter/ble/a:b	I
    //   12: if_icmple +20 -> 32
    //   15: aload_0
    //   16: iload_1
    //   17: aload_0
    //   18: getfield 50	com/nut/blehunter/ble/a:b	I
    //   21: isub
    //   22: iconst_1
    //   23: iadd
    //   24: aload_0
    //   25: getfield 50	com/nut/blehunter/ble/a:b	I
    //   28: iadd
    //   29: putfield 50	com/nut/blehunter/ble/a:b	I
    //   32: return
    //   33: aload_0
    //   34: invokevirtual 128	com/nut/blehunter/ble/a:d	()Z
    //   37: ifeq -5 -> 32
    //   40: getstatic 26	com/nut/blehunter/ble/a:a	Z
    //   43: istore 7
    //   45: iload 7
    //   47: ifeq +208 -> 255
    //   50: aload_0
    //   51: iconst_1
    //   52: putfield 33	com/nut/blehunter/ble/a:e	Z
    //   55: aload_0
    //   56: aload_0
    //   57: getfield 66	com/nut/blehunter/ble/a:k	Landroid/media/AudioManager;
    //   60: invokevirtual 76	android/media/AudioManager:getRingerMode	()I
    //   63: putfield 78	com/nut/blehunter/ble/a:g	I
    //   66: aload_0
    //   67: aload_0
    //   68: getfield 66	com/nut/blehunter/ble/a:k	Landroid/media/AudioManager;
    //   71: iconst_2
    //   72: invokevirtual 70	android/media/AudioManager:getStreamVolume	(I)I
    //   75: putfield 72	com/nut/blehunter/ble/a:f	I
    //   78: aload_0
    //   79: getfield 66	com/nut/blehunter/ble/a:k	Landroid/media/AudioManager;
    //   82: iconst_2
    //   83: invokevirtual 131	android/media/AudioManager:getStreamMaxVolume	(I)I
    //   86: i2d
    //   87: ldc2_w 132
    //   90: dmul
    //   91: d2i
    //   92: istore 6
    //   94: aload_0
    //   95: getfield 66	com/nut/blehunter/ble/a:k	Landroid/media/AudioManager;
    //   98: iconst_2
    //   99: iload 6
    //   101: bipush 16
    //   103: invokevirtual 112	android/media/AudioManager:setStreamVolume	(III)V
    //   106: new 135	java/lang/StringBuilder
    //   109: dup
    //   110: ldc 137
    //   112: invokespecial 140	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   115: aload_0
    //   116: getfield 48	com/nut/blehunter/ble/a:d	Landroid/content/Context;
    //   119: invokevirtual 144	android/content/Context:getPackageName	()Ljava/lang/String;
    //   122: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: ldc 150
    //   127: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: iload_3
    //   131: invokevirtual 153	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   134: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   137: astore 8
    //   139: aload_0
    //   140: new 82	android/media/MediaPlayer
    //   143: dup
    //   144: invokespecial 157	android/media/MediaPlayer:<init>	()V
    //   147: putfield 80	com/nut/blehunter/ble/a:i	Landroid/media/MediaPlayer;
    //   150: aload_0
    //   151: getfield 80	com/nut/blehunter/ble/a:i	Landroid/media/MediaPlayer;
    //   154: iload 5
    //   156: invokevirtual 160	android/media/MediaPlayer:setAudioStreamType	(I)V
    //   159: aload_0
    //   160: getfield 80	com/nut/blehunter/ble/a:i	Landroid/media/MediaPlayer;
    //   163: aload_0
    //   164: getfield 48	com/nut/blehunter/ble/a:d	Landroid/content/Context;
    //   167: aload 8
    //   169: invokestatic 166	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   172: invokevirtual 170	android/media/MediaPlayer:setDataSource	(Landroid/content/Context;Landroid/net/Uri;)V
    //   175: aload_0
    //   176: getfield 80	com/nut/blehunter/ble/a:i	Landroid/media/MediaPlayer;
    //   179: fconst_1
    //   180: fconst_1
    //   181: invokevirtual 174	android/media/MediaPlayer:setVolume	(FF)V
    //   184: aload_0
    //   185: getfield 80	com/nut/blehunter/ble/a:i	Landroid/media/MediaPlayer;
    //   188: iconst_0
    //   189: invokevirtual 178	android/media/MediaPlayer:setLooping	(Z)V
    //   192: aload_0
    //   193: getfield 80	com/nut/blehunter/ble/a:i	Landroid/media/MediaPlayer;
    //   196: new 180	com/nut/blehunter/ble/c
    //   199: dup
    //   200: aload_0
    //   201: iload_1
    //   202: iload 4
    //   204: invokespecial 183	com/nut/blehunter/ble/c:<init>	(Lcom/nut/blehunter/ble/a;IZ)V
    //   207: invokevirtual 187	android/media/MediaPlayer:setOnCompletionListener	(Landroid/media/MediaPlayer$OnCompletionListener;)V
    //   210: aload_0
    //   211: getfield 80	com/nut/blehunter/ble/a:i	Landroid/media/MediaPlayer;
    //   214: aload_0
    //   215: getfield 48	com/nut/blehunter/ble/a:d	Landroid/content/Context;
    //   218: iconst_1
    //   219: invokevirtual 191	android/media/MediaPlayer:setWakeMode	(Landroid/content/Context;I)V
    //   222: aload_0
    //   223: getfield 80	com/nut/blehunter/ble/a:i	Landroid/media/MediaPlayer;
    //   226: invokevirtual 194	android/media/MediaPlayer:prepare	()V
    //   229: aload_0
    //   230: getfield 80	com/nut/blehunter/ble/a:i	Landroid/media/MediaPlayer;
    //   233: invokevirtual 92	android/media/MediaPlayer:start	()V
    //   236: return
    //   237: astore 8
    //   239: aload 8
    //   241: invokevirtual 195	java/io/IOException:printStackTrace	()V
    //   244: return
    //   245: astore 8
    //   247: aload 8
    //   249: invokevirtual 119	java/lang/Exception:printStackTrace	()V
    //   252: goto -146 -> 106
    //   255: iload_2
    //   256: ifeq -150 -> 106
    //   259: aload_0
    //   260: iconst_1
    //   261: putfield 33	com/nut/blehunter/ble/a:e	Z
    //   264: aload_0
    //   265: aload_0
    //   266: getfield 66	com/nut/blehunter/ble/a:k	Landroid/media/AudioManager;
    //   269: invokevirtual 76	android/media/AudioManager:getRingerMode	()I
    //   272: putfield 78	com/nut/blehunter/ble/a:g	I
    //   275: aload_0
    //   276: aload_0
    //   277: getfield 66	com/nut/blehunter/ble/a:k	Landroid/media/AudioManager;
    //   280: iconst_2
    //   281: invokevirtual 70	android/media/AudioManager:getStreamVolume	(I)I
    //   284: putfield 72	com/nut/blehunter/ble/a:f	I
    //   287: aload_0
    //   288: getfield 66	com/nut/blehunter/ble/a:k	Landroid/media/AudioManager;
    //   291: iconst_2
    //   292: invokevirtual 131	android/media/AudioManager:getStreamMaxVolume	(I)I
    //   295: istore 6
    //   297: aload_0
    //   298: getfield 66	com/nut/blehunter/ble/a:k	Landroid/media/AudioManager;
    //   301: iconst_2
    //   302: iload 6
    //   304: bipush 16
    //   306: invokevirtual 112	android/media/AudioManager:setStreamVolume	(III)V
    //   309: goto -203 -> 106
    //   312: astore 8
    //   314: aload 8
    //   316: invokevirtual 119	java/lang/Exception:printStackTrace	()V
    //   319: goto -213 -> 106
    //
    // Exception table:
    //   from	to	target	type
    //   40	45	237	java/io/IOException
    //   50	106	237	java/io/IOException
    //   106	236	237	java/io/IOException
    //   247	252	237	java/io/IOException
    //   259	309	237	java/io/IOException
    //   314	319	237	java/io/IOException
    //   50	106	245	java/lang/Exception
    //   259	309	312	java/lang/Exception
  }

  public final void b()
  {
    try
    {
      this.b = 0;
      if ((this.i != null) && (this.i.isPlaying()))
      {
        this.i.stop();
        this.i.release();
        this.i = null;
      }
      if (this.e)
        a();
      e();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public final void c()
  {
    try
    {
      if ((this.j != null) && (this.j.isPlaying()))
      {
        this.j.stop();
        this.j.release();
        this.j = null;
      }
      String str = "android.resource://" + this.d.getPackageName() + "/2131034120";
      this.j = new MediaPlayer();
      this.j.setAudioStreamType(2);
      this.j.setDataSource(this.d, Uri.parse(str));
      this.j.setWakeMode(this.d, 1);
      this.j.setVolume(1.0F, 1.0F);
      this.j.prepare();
      this.j.start();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      localIllegalStateException.printStackTrace();
    }
  }

  public final boolean d()
  {
    return 1 == this.k.requestAudioFocus(this.c, 3, 1);
  }

  public final boolean e()
  {
    return 1 == this.k.abandonAudioFocus(this.c);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.a
 * JD-Core Version:    0.6.2
 */