package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.NetworkInfo;
import android.os.Handler;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;

class BitmapHunter
  implements Runnable
{
  private static final Object DECODE_LOCK = new Object();
  private static final RequestHandler ERRORING_HANDLER = new BitmapHunter.2();
  private static final ThreadLocal<StringBuilder> NAME_BUILDER = new BitmapHunter.1();
  private static final AtomicInteger SEQUENCE_GENERATOR = new AtomicInteger();
  Action action;
  List<Action> actions;
  final Cache cache;
  final Request data;
  final Dispatcher dispatcher;
  Exception exception;
  int exifRotation;
  Future<?> future;
  final String key;
  Picasso.LoadedFrom loadedFrom;
  final int memoryPolicy;
  int networkPolicy;
  final Picasso picasso;
  Picasso.Priority priority;
  final RequestHandler requestHandler;
  Bitmap result;
  int retryCount;
  final int sequence = SEQUENCE_GENERATOR.incrementAndGet();
  final Stats stats;

  BitmapHunter(Picasso paramPicasso, Dispatcher paramDispatcher, Cache paramCache, Stats paramStats, Action paramAction, RequestHandler paramRequestHandler)
  {
    this.picasso = paramPicasso;
    this.dispatcher = paramDispatcher;
    this.cache = paramCache;
    this.stats = paramStats;
    this.action = paramAction;
    this.key = paramAction.getKey();
    this.data = paramAction.getRequest();
    this.priority = paramAction.getPriority();
    this.memoryPolicy = paramAction.getMemoryPolicy();
    this.networkPolicy = paramAction.getNetworkPolicy();
    this.requestHandler = paramRequestHandler;
    this.retryCount = paramRequestHandler.getRetryCount();
  }

  static Bitmap applyCustomTransformations(List<Transformation> paramList, Bitmap paramBitmap)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      Transformation localTransformation = (Transformation)paramList.get(i);
      Bitmap localBitmap;
      try
      {
        localBitmap = localTransformation.transform(paramBitmap);
        if (localBitmap != null)
          break label155;
        paramBitmap = new StringBuilder("Transformation ").append(localTransformation.key()).append(" returned null after ").append(i).append(" previous transformation(s).\n\nTransformation list:\n");
        paramList = paramList.iterator();
        while (paramList.hasNext())
          paramBitmap.append(((Transformation)paramList.next()).key()).append('\n');
      }
      catch (RuntimeException paramList)
      {
        Picasso.HANDLER.post(new BitmapHunter.3(localTransformation, paramList));
        return null;
      }
      Picasso.HANDLER.post(new BitmapHunter.4(paramBitmap));
      return null;
      label155: if ((localBitmap == paramBitmap) && (paramBitmap.isRecycled()))
      {
        Picasso.HANDLER.post(new BitmapHunter.5(localTransformation));
        return null;
      }
      if ((localBitmap != paramBitmap) && (!paramBitmap.isRecycled()))
      {
        Picasso.HANDLER.post(new BitmapHunter.6(localTransformation));
        return null;
      }
      i += 1;
      paramBitmap = localBitmap;
    }
    return paramBitmap;
  }

  private Picasso.Priority computeNewPriority()
  {
    int m = 1;
    int k = 0;
    Object localObject1 = Picasso.Priority.LOW;
    int i;
    if ((this.actions != null) && (!this.actions.isEmpty()))
    {
      i = 1;
      j = m;
      if (this.action == null)
        if (i == 0)
          break label64;
    }
    Object localObject2;
    label64: for (int j = m; ; j = 0)
    {
      if (j != 0)
        break label69;
      localObject2 = localObject1;
      return localObject2;
      i = 0;
      break;
    }
    label69: if (this.action != null)
      localObject1 = this.action.getPriority();
    while (true)
    {
      localObject2 = localObject1;
      if (i == 0)
        break;
      j = this.actions.size();
      i = k;
      localObject2 = localObject1;
      if (i >= j)
        break;
      localObject2 = ((Action)this.actions.get(i)).getPriority();
      if (((Picasso.Priority)localObject2).ordinal() > ((Picasso.Priority)localObject1).ordinal())
        localObject1 = localObject2;
      while (true)
      {
        i += 1;
        break;
      }
    }
  }

  static Bitmap decodeStream(InputStream paramInputStream, Request paramRequest)
    throws IOException
  {
    Object localObject = new MarkableInputStream(paramInputStream);
    long l = ((MarkableInputStream)localObject).savePosition(65536);
    paramInputStream = RequestHandler.createBitmapOptions(paramRequest);
    boolean bool1 = RequestHandler.requiresInSampleSize(paramInputStream);
    boolean bool2 = Utils.isWebPFile((InputStream)localObject);
    ((MarkableInputStream)localObject).reset(l);
    if (bool2)
    {
      localObject = Utils.toByteArray((InputStream)localObject);
      if (bool1)
      {
        BitmapFactory.decodeByteArray((byte[])localObject, 0, localObject.length, paramInputStream);
        RequestHandler.calculateInSampleSize(paramRequest.targetWidth, paramRequest.targetHeight, paramInputStream, paramRequest);
      }
      paramInputStream = BitmapFactory.decodeByteArray((byte[])localObject, 0, localObject.length, paramInputStream);
    }
    do
    {
      return paramInputStream;
      if (bool1)
      {
        BitmapFactory.decodeStream((InputStream)localObject, null, paramInputStream);
        RequestHandler.calculateInSampleSize(paramRequest.targetWidth, paramRequest.targetHeight, paramInputStream, paramRequest);
        ((MarkableInputStream)localObject).reset(l);
      }
      paramRequest = BitmapFactory.decodeStream((InputStream)localObject, null, paramInputStream);
      paramInputStream = paramRequest;
    }
    while (paramRequest != null);
    throw new IOException("Failed to decode stream.");
  }

  static BitmapHunter forRequest(Picasso paramPicasso, Dispatcher paramDispatcher, Cache paramCache, Stats paramStats, Action paramAction)
  {
    Request localRequest = paramAction.getRequest();
    List localList = paramPicasso.getRequestHandlers();
    int i = 0;
    int j = localList.size();
    while (i < j)
    {
      RequestHandler localRequestHandler = (RequestHandler)localList.get(i);
      if (localRequestHandler.canHandleRequest(localRequest))
        return new BitmapHunter(paramPicasso, paramDispatcher, paramCache, paramStats, paramAction, localRequestHandler);
      i += 1;
    }
    return new BitmapHunter(paramPicasso, paramDispatcher, paramCache, paramStats, paramAction, ERRORING_HANDLER);
  }

  private static boolean shouldResize(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return (!paramBoolean) || (paramInt1 > paramInt3) || (paramInt2 > paramInt4);
  }

  static Bitmap transformResult(Request paramRequest, Bitmap paramBitmap, int paramInt)
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    boolean bool = paramRequest.onlyScaleDown;
    Object localObject = new Matrix();
    int i2;
    int i3;
    float f1;
    int n;
    int m;
    int k;
    if (paramRequest.needsMatrixTransform())
    {
      i2 = paramRequest.targetWidth;
      i3 = paramRequest.targetHeight;
      f1 = paramRequest.rotationDegrees;
      int i1;
      if (f1 != 0.0F)
      {
        if (paramRequest.hasRotationPivot)
          ((Matrix)localObject).setRotate(f1, paramRequest.rotationPivotX, paramRequest.rotationPivotY);
      }
      else
      {
        if (!paramRequest.centerCrop)
          break label287;
        f2 = i2 / i;
        f1 = i3 / j;
        if (f2 <= f1)
          break label244;
        float f3 = j;
        i1 = (int)Math.ceil(f1 / f2 * f3);
        n = (j - i1) / 2;
        f1 = i3 / i1;
        m = 0;
        k = i;
      }
      while (true)
      {
        if (shouldResize(bool, i, j, i2, i3))
          ((Matrix)localObject).preScale(f2, f1);
        j = n;
        i = m;
        m = i1;
        if (paramInt != 0)
          ((Matrix)localObject).preRotate(paramInt);
        localObject = Bitmap.createBitmap(paramBitmap, i, j, k, m, (Matrix)localObject, true);
        paramRequest = paramBitmap;
        if (localObject != paramBitmap)
        {
          paramBitmap.recycle();
          paramRequest = (Request)localObject;
        }
        return paramRequest;
        ((Matrix)localObject).setRotate(f1);
        break;
        label244: k = (int)Math.ceil(i * (f2 / f1));
        m = (i - k) / 2;
        f2 = i2 / k;
        n = 0;
        i1 = j;
      }
      label287: if (paramRequest.centerInside)
      {
        f1 = i2 / i;
        f2 = i3 / j;
        if (f1 < f2);
        while (true)
        {
          if (shouldResize(bool, i, j, i2, i3))
            ((Matrix)localObject).preScale(f1, f1);
          n = 0;
          m = j;
          j = 0;
          k = i;
          i = n;
          break;
          f1 = f2;
        }
      }
      if (((i2 != 0) || (i3 != 0)) && ((i2 != i) || (i3 != j)))
      {
        if (i2 == 0)
          break label466;
        f1 = i2 / i;
        label406: if (i3 == 0)
          break label477;
      }
    }
    label466: label477: for (float f2 = i3 / j; ; f2 = i2 / i)
    {
      if (shouldResize(bool, i, j, i2, i3))
        ((Matrix)localObject).preScale(f1, f2);
      n = 0;
      m = j;
      j = 0;
      k = i;
      i = n;
      break;
      f1 = i3 / j;
      break label406;
    }
  }

  static void updateThreadName(Request paramRequest)
  {
    paramRequest = paramRequest.getName();
    StringBuilder localStringBuilder = (StringBuilder)NAME_BUILDER.get();
    localStringBuilder.ensureCapacity(paramRequest.length() + 8);
    localStringBuilder.replace(8, localStringBuilder.length(), paramRequest);
    Thread.currentThread().setName(localStringBuilder.toString());
  }

  void attach(Action paramAction)
  {
    boolean bool = this.picasso.loggingEnabled;
    Request localRequest = paramAction.request;
    if (this.action == null)
    {
      this.action = paramAction;
      if (bool)
      {
        if ((this.actions != null) && (!this.actions.isEmpty()))
          break label65;
        Utils.log("Hunter", "joined", localRequest.logId(), "to empty hunter");
      }
    }
    label65: 
    do
    {
      return;
      Utils.log("Hunter", "joined", localRequest.logId(), Utils.getLogIdsForHunter(this, "to "));
      return;
      if (this.actions == null)
        this.actions = new ArrayList(3);
      this.actions.add(paramAction);
      if (bool)
        Utils.log("Hunter", "joined", localRequest.logId(), Utils.getLogIdsForHunter(this, "to "));
      paramAction = paramAction.getPriority();
    }
    while (paramAction.ordinal() <= this.priority.ordinal());
    this.priority = paramAction;
  }

  boolean cancel()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (this.action == null)
      if (this.actions != null)
      {
        bool1 = bool2;
        if (!this.actions.isEmpty());
      }
      else
      {
        bool1 = bool2;
        if (this.future != null)
        {
          bool1 = bool2;
          if (this.future.cancel(false))
            bool1 = true;
        }
      }
    return bool1;
  }

  void detach(Action paramAction)
  {
    boolean bool = false;
    if (this.action == paramAction)
    {
      this.action = null;
      bool = true;
    }
    while (true)
    {
      if ((bool) && (paramAction.getPriority() == this.priority))
        this.priority = computeNewPriority();
      if (this.picasso.loggingEnabled)
        Utils.log("Hunter", "removed", paramAction.request.logId(), Utils.getLogIdsForHunter(this, "from "));
      return;
      if (this.actions != null)
        bool = this.actions.remove(paramAction);
    }
  }

  Action getAction()
  {
    return this.action;
  }

  List<Action> getActions()
  {
    return this.actions;
  }

  Request getData()
  {
    return this.data;
  }

  Exception getException()
  {
    return this.exception;
  }

  String getKey()
  {
    return this.key;
  }

  Picasso.LoadedFrom getLoadedFrom()
  {
    return this.loadedFrom;
  }

  int getMemoryPolicy()
  {
    return this.memoryPolicy;
  }

  Picasso getPicasso()
  {
    return this.picasso;
  }

  Picasso.Priority getPriority()
  {
    return this.priority;
  }

  Bitmap getResult()
  {
    return this.result;
  }

  // ERROR //
  Bitmap hunt()
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 115	com/squareup/picasso/BitmapHunter:memoryPolicy	I
    //   6: invokestatic 492	com/squareup/picasso/MemoryPolicy:shouldReadFromMemoryCache	(I)Z
    //   9: ifeq +77 -> 86
    //   12: aload_0
    //   13: getfield 86	com/squareup/picasso/BitmapHunter:cache	Lcom/squareup/picasso/Cache;
    //   16: aload_0
    //   17: getfield 98	com/squareup/picasso/BitmapHunter:key	Ljava/lang/String;
    //   20: invokeinterface 497 2 0
    //   25: astore 4
    //   27: aload 4
    //   29: astore_2
    //   30: aload 4
    //   32: ifnull +54 -> 86
    //   35: aload_0
    //   36: getfield 88	com/squareup/picasso/BitmapHunter:stats	Lcom/squareup/picasso/Stats;
    //   39: invokevirtual 502	com/squareup/picasso/Stats:dispatchCacheHit	()V
    //   42: aload_0
    //   43: getstatic 507	com/squareup/picasso/Picasso$LoadedFrom:MEMORY	Lcom/squareup/picasso/Picasso$LoadedFrom;
    //   46: putfield 479	com/squareup/picasso/BitmapHunter:loadedFrom	Lcom/squareup/picasso/Picasso$LoadedFrom;
    //   49: aload 4
    //   51: astore_3
    //   52: aload_0
    //   53: getfield 82	com/squareup/picasso/BitmapHunter:picasso	Lcom/squareup/picasso/Picasso;
    //   56: getfield 418	com/squareup/picasso/Picasso:loggingEnabled	Z
    //   59: ifeq +25 -> 84
    //   62: ldc_w 423
    //   65: ldc_w 509
    //   68: aload_0
    //   69: getfield 104	com/squareup/picasso/BitmapHunter:data	Lcom/squareup/picasso/Request;
    //   72: invokevirtual 428	com/squareup/picasso/Request:logId	()Ljava/lang/String;
    //   75: ldc_w 511
    //   78: invokestatic 434	com/squareup/picasso/Utils:log	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   81: aload 4
    //   83: astore_3
    //   84: aload_3
    //   85: areturn
    //   86: aload_0
    //   87: getfield 104	com/squareup/picasso/BitmapHunter:data	Lcom/squareup/picasso/Request;
    //   90: astore_3
    //   91: aload_0
    //   92: getfield 129	com/squareup/picasso/BitmapHunter:retryCount	I
    //   95: ifne +291 -> 386
    //   98: getstatic 517	com/squareup/picasso/NetworkPolicy:OFFLINE	Lcom/squareup/picasso/NetworkPolicy;
    //   101: getfield 520	com/squareup/picasso/NetworkPolicy:index	I
    //   104: istore_1
    //   105: aload_3
    //   106: iload_1
    //   107: putfield 521	com/squareup/picasso/Request:networkPolicy	I
    //   110: aload_0
    //   111: getfield 122	com/squareup/picasso/BitmapHunter:requestHandler	Lcom/squareup/picasso/RequestHandler;
    //   114: aload_0
    //   115: getfield 104	com/squareup/picasso/BitmapHunter:data	Lcom/squareup/picasso/Request;
    //   118: aload_0
    //   119: getfield 120	com/squareup/picasso/BitmapHunter:networkPolicy	I
    //   122: invokevirtual 525	com/squareup/picasso/RequestHandler:load	(Lcom/squareup/picasso/Request;I)Lcom/squareup/picasso/RequestHandler$Result;
    //   125: astore 4
    //   127: aload 4
    //   129: ifnull +52 -> 181
    //   132: aload_0
    //   133: aload 4
    //   135: invokevirtual 529	com/squareup/picasso/RequestHandler$Result:getLoadedFrom	()Lcom/squareup/picasso/Picasso$LoadedFrom;
    //   138: putfield 479	com/squareup/picasso/BitmapHunter:loadedFrom	Lcom/squareup/picasso/Picasso$LoadedFrom;
    //   141: aload_0
    //   142: aload 4
    //   144: invokevirtual 532	com/squareup/picasso/RequestHandler$Result:getExifOrientation	()I
    //   147: putfield 534	com/squareup/picasso/BitmapHunter:exifRotation	I
    //   150: aload 4
    //   152: invokevirtual 537	com/squareup/picasso/RequestHandler$Result:getBitmap	()Landroid/graphics/Bitmap;
    //   155: astore_3
    //   156: aload_3
    //   157: astore_2
    //   158: aload_3
    //   159: ifnonnull +22 -> 181
    //   162: aload 4
    //   164: invokevirtual 541	com/squareup/picasso/RequestHandler$Result:getStream	()Ljava/io/InputStream;
    //   167: astore_3
    //   168: aload_3
    //   169: aload_0
    //   170: getfield 104	com/squareup/picasso/BitmapHunter:data	Lcom/squareup/picasso/Request;
    //   173: invokestatic 543	com/squareup/picasso/BitmapHunter:decodeStream	(Ljava/io/InputStream;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    //   176: astore_2
    //   177: aload_3
    //   178: invokestatic 546	com/squareup/picasso/Utils:closeQuietly	(Ljava/io/InputStream;)V
    //   181: aload_2
    //   182: astore_3
    //   183: aload_2
    //   184: ifnull -100 -> 84
    //   187: aload_0
    //   188: getfield 82	com/squareup/picasso/BitmapHunter:picasso	Lcom/squareup/picasso/Picasso;
    //   191: getfield 418	com/squareup/picasso/Picasso:loggingEnabled	Z
    //   194: ifeq +19 -> 213
    //   197: ldc_w 423
    //   200: ldc_w 509
    //   203: aload_0
    //   204: getfield 104	com/squareup/picasso/BitmapHunter:data	Lcom/squareup/picasso/Request;
    //   207: invokevirtual 428	com/squareup/picasso/Request:logId	()Ljava/lang/String;
    //   210: invokestatic 549	com/squareup/picasso/Utils:log	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   213: aload_0
    //   214: getfield 88	com/squareup/picasso/BitmapHunter:stats	Lcom/squareup/picasso/Stats;
    //   217: aload_2
    //   218: invokevirtual 553	com/squareup/picasso/Stats:dispatchBitmapDecoded	(Landroid/graphics/Bitmap;)V
    //   221: aload_0
    //   222: getfield 104	com/squareup/picasso/BitmapHunter:data	Lcom/squareup/picasso/Request;
    //   225: invokevirtual 556	com/squareup/picasso/Request:needsTransformation	()Z
    //   228: ifne +12 -> 240
    //   231: aload_2
    //   232: astore_3
    //   233: aload_0
    //   234: getfield 534	com/squareup/picasso/BitmapHunter:exifRotation	I
    //   237: ifeq -153 -> 84
    //   240: getstatic 57	com/squareup/picasso/BitmapHunter:DECODE_LOCK	Ljava/lang/Object;
    //   243: astore 4
    //   245: aload 4
    //   247: monitorenter
    //   248: aload_0
    //   249: getfield 104	com/squareup/picasso/BitmapHunter:data	Lcom/squareup/picasso/Request;
    //   252: invokevirtual 329	com/squareup/picasso/Request:needsMatrixTransform	()Z
    //   255: ifne +12 -> 267
    //   258: aload_2
    //   259: astore_3
    //   260: aload_0
    //   261: getfield 534	com/squareup/picasso/BitmapHunter:exifRotation	I
    //   264: ifeq +46 -> 310
    //   267: aload_0
    //   268: getfield 104	com/squareup/picasso/BitmapHunter:data	Lcom/squareup/picasso/Request;
    //   271: aload_2
    //   272: aload_0
    //   273: getfield 534	com/squareup/picasso/BitmapHunter:exifRotation	I
    //   276: invokestatic 558	com/squareup/picasso/BitmapHunter:transformResult	(Lcom/squareup/picasso/Request;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    //   279: astore_2
    //   280: aload_2
    //   281: astore_3
    //   282: aload_0
    //   283: getfield 82	com/squareup/picasso/BitmapHunter:picasso	Lcom/squareup/picasso/Picasso;
    //   286: getfield 418	com/squareup/picasso/Picasso:loggingEnabled	Z
    //   289: ifeq +21 -> 310
    //   292: ldc_w 423
    //   295: ldc_w 560
    //   298: aload_0
    //   299: getfield 104	com/squareup/picasso/BitmapHunter:data	Lcom/squareup/picasso/Request;
    //   302: invokevirtual 428	com/squareup/picasso/Request:logId	()Ljava/lang/String;
    //   305: invokestatic 549	com/squareup/picasso/Utils:log	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   308: aload_2
    //   309: astore_3
    //   310: aload_3
    //   311: astore_2
    //   312: aload_0
    //   313: getfield 104	com/squareup/picasso/BitmapHunter:data	Lcom/squareup/picasso/Request;
    //   316: invokevirtual 563	com/squareup/picasso/Request:hasCustomTransformations	()Z
    //   319: ifeq +48 -> 367
    //   322: aload_0
    //   323: getfield 104	com/squareup/picasso/BitmapHunter:data	Lcom/squareup/picasso/Request;
    //   326: getfield 566	com/squareup/picasso/Request:transformations	Ljava/util/List;
    //   329: aload_3
    //   330: invokestatic 568	com/squareup/picasso/BitmapHunter:applyCustomTransformations	(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    //   333: astore_3
    //   334: aload_3
    //   335: astore_2
    //   336: aload_0
    //   337: getfield 82	com/squareup/picasso/BitmapHunter:picasso	Lcom/squareup/picasso/Picasso;
    //   340: getfield 418	com/squareup/picasso/Picasso:loggingEnabled	Z
    //   343: ifeq +24 -> 367
    //   346: ldc_w 423
    //   349: ldc_w 560
    //   352: aload_0
    //   353: getfield 104	com/squareup/picasso/BitmapHunter:data	Lcom/squareup/picasso/Request;
    //   356: invokevirtual 428	com/squareup/picasso/Request:logId	()Ljava/lang/String;
    //   359: ldc_w 570
    //   362: invokestatic 434	com/squareup/picasso/Utils:log	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   365: aload_3
    //   366: astore_2
    //   367: aload 4
    //   369: monitorexit
    //   370: aload_2
    //   371: astore_3
    //   372: aload_2
    //   373: ifnull -289 -> 84
    //   376: aload_0
    //   377: getfield 88	com/squareup/picasso/BitmapHunter:stats	Lcom/squareup/picasso/Stats;
    //   380: aload_2
    //   381: invokevirtual 573	com/squareup/picasso/Stats:dispatchBitmapTransformed	(Landroid/graphics/Bitmap;)V
    //   384: aload_2
    //   385: areturn
    //   386: aload_0
    //   387: getfield 120	com/squareup/picasso/BitmapHunter:networkPolicy	I
    //   390: istore_1
    //   391: goto -286 -> 105
    //   394: astore_2
    //   395: aload_3
    //   396: invokestatic 546	com/squareup/picasso/Utils:closeQuietly	(Ljava/io/InputStream;)V
    //   399: aload_2
    //   400: athrow
    //   401: astore_2
    //   402: aload 4
    //   404: monitorexit
    //   405: aload_2
    //   406: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   168	177	394	finally
    //   248	258	401	finally
    //   260	267	401	finally
    //   267	280	401	finally
    //   282	308	401	finally
    //   312	334	401	finally
    //   336	365	401	finally
    //   367	370	401	finally
    //   402	405	401	finally
  }

  boolean isCancelled()
  {
    return (this.future != null) && (this.future.isCancelled());
  }

  public void run()
  {
    try
    {
      updateThreadName(this.data);
      if (this.picasso.loggingEnabled)
        Utils.log("Hunter", "executing", Utils.getLogIdsForHunter(this));
      this.result = hunt();
      if (this.result == null)
        this.dispatcher.dispatchFailed(this);
      while (true)
      {
        return;
        this.dispatcher.dispatchComplete(this);
      }
    }
    catch (Downloader.ResponseException localResponseException)
    {
      if ((!localResponseException.localCacheOnly) || (localResponseException.responseCode != 504))
        this.exception = localResponseException;
      this.dispatcher.dispatchFailed(this);
      return;
    }
    catch (NetworkRequestHandler.ContentLengthException localContentLengthException)
    {
      this.exception = localContentLengthException;
      this.dispatcher.dispatchRetry(this);
      return;
    }
    catch (IOException localIOException)
    {
      this.exception = localIOException;
      this.dispatcher.dispatchRetry(this);
      return;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      StringWriter localStringWriter = new StringWriter();
      this.stats.createSnapshot().dump(new PrintWriter(localStringWriter));
      this.exception = new RuntimeException(localStringWriter.toString(), localOutOfMemoryError);
      this.dispatcher.dispatchFailed(this);
      return;
    }
    catch (Exception localException)
    {
      this.exception = localException;
      this.dispatcher.dispatchFailed(this);
      return;
    }
    finally
    {
      Thread.currentThread().setName("Picasso-Idle");
    }
  }

  boolean shouldRetry(boolean paramBoolean, NetworkInfo paramNetworkInfo)
  {
    if (this.retryCount > 0);
    for (int i = 1; i == 0; i = 0)
      return false;
    this.retryCount -= 1;
    return this.requestHandler.shouldRetry(paramBoolean, paramNetworkInfo);
  }

  boolean supportsReplay()
  {
    return this.requestHandler.supportsReplay();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.BitmapHunter
 * JD-Core Version:    0.6.2
 */