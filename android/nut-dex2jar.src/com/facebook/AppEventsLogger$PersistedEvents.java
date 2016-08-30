package com.facebook;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class AppEventsLogger$PersistedEvents
{
  static final String PERSISTED_EVENTS_FILENAME = "AppEventsLogger.persistedevents";
  private static Object staticLock = new Object();
  private Context context;
  private HashMap<AppEventsLogger.AccessTokenAppIdPair, List<AppEventsLogger.AppEvent>> persistedEvents = new HashMap();

  private AppEventsLogger$PersistedEvents(Context paramContext)
  {
    this.context = paramContext;
  }

  public static void persistEvents(Context paramContext, AppEventsLogger.AccessTokenAppIdPair paramAccessTokenAppIdPair, AppEventsLogger.SessionEventsState paramSessionEventsState)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(paramAccessTokenAppIdPair, paramSessionEventsState);
    persistEvents(paramContext, localHashMap);
  }

  public static void persistEvents(Context paramContext, Map<AppEventsLogger.AccessTokenAppIdPair, AppEventsLogger.SessionEventsState> paramMap)
  {
    synchronized (staticLock)
    {
      paramContext = readAndClearStore(paramContext);
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        List localList = ((AppEventsLogger.SessionEventsState)localEntry.getValue()).getEventsToPersist();
        if (localList.size() != 0)
          paramContext.addEvents((AppEventsLogger.AccessTokenAppIdPair)localEntry.getKey(), localList);
      }
    }
    paramContext.write();
  }

  public static PersistedEvents readAndClearStore(Context paramContext)
  {
    synchronized (staticLock)
    {
      paramContext = new PersistedEvents(paramContext);
      paramContext.readAndClearStore();
      return paramContext;
    }
  }

  // ERROR //
  private void readAndClearStore()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 107	java/io/ObjectInputStream
    //   5: dup
    //   6: new 109	java/io/BufferedInputStream
    //   9: dup
    //   10: aload_0
    //   11: getfield 31	com/facebook/AppEventsLogger$PersistedEvents:context	Landroid/content/Context;
    //   14: ldc 8
    //   16: invokevirtual 115	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   19: invokespecial 118	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   22: invokespecial 119	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   25: astore_1
    //   26: aload_1
    //   27: astore_2
    //   28: aload_1
    //   29: invokevirtual 122	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   32: checkcast 26	java/util/HashMap
    //   35: astore_3
    //   36: aload_1
    //   37: astore_2
    //   38: aload_0
    //   39: getfield 31	com/facebook/AppEventsLogger$PersistedEvents:context	Landroid/content/Context;
    //   42: ldc 8
    //   44: invokevirtual 126	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   47: invokevirtual 131	java/io/File:delete	()Z
    //   50: pop
    //   51: aload_1
    //   52: astore_2
    //   53: aload_0
    //   54: aload_3
    //   55: putfield 29	com/facebook/AppEventsLogger$PersistedEvents:persistedEvents	Ljava/util/HashMap;
    //   58: aload_1
    //   59: invokestatic 137	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   62: return
    //   63: astore_1
    //   64: aload_2
    //   65: astore_1
    //   66: aload_1
    //   67: invokestatic 137	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   70: return
    //   71: astore_3
    //   72: aconst_null
    //   73: astore_1
    //   74: aload_1
    //   75: astore_2
    //   76: invokestatic 143	com/facebook/AppEventsLogger:access$1300	()Ljava/lang/String;
    //   79: new 145	java/lang/StringBuilder
    //   82: dup
    //   83: ldc 147
    //   85: invokespecial 150	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   88: aload_3
    //   89: invokevirtual 153	java/lang/Exception:toString	()Ljava/lang/String;
    //   92: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: invokevirtual 158	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   98: invokestatic 164	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   101: pop
    //   102: aload_1
    //   103: invokestatic 137	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   106: return
    //   107: astore_1
    //   108: aconst_null
    //   109: astore_2
    //   110: aload_2
    //   111: invokestatic 137	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   114: aload_1
    //   115: athrow
    //   116: astore_1
    //   117: goto -7 -> 110
    //   120: astore_3
    //   121: goto -47 -> 74
    //   124: astore_2
    //   125: goto -59 -> 66
    //
    // Exception table:
    //   from	to	target	type
    //   2	26	63	java/io/FileNotFoundException
    //   2	26	71	java/lang/Exception
    //   2	26	107	finally
    //   28	36	116	finally
    //   38	51	116	finally
    //   53	58	116	finally
    //   76	102	116	finally
    //   28	36	120	java/lang/Exception
    //   38	51	120	java/lang/Exception
    //   53	58	120	java/lang/Exception
    //   28	36	124	java/io/FileNotFoundException
    //   38	51	124	java/io/FileNotFoundException
    //   53	58	124	java/io/FileNotFoundException
  }

  // ERROR //
  private void write()
  {
    // Byte code:
    //   0: new 166	java/io/ObjectOutputStream
    //   3: dup
    //   4: new 168	java/io/BufferedOutputStream
    //   7: dup
    //   8: aload_0
    //   9: getfield 31	com/facebook/AppEventsLogger$PersistedEvents:context	Landroid/content/Context;
    //   12: ldc 8
    //   14: iconst_0
    //   15: invokevirtual 172	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   18: invokespecial 175	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   21: invokespecial 176	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   24: astore_2
    //   25: aload_2
    //   26: astore_1
    //   27: aload_2
    //   28: aload_0
    //   29: getfield 29	com/facebook/AppEventsLogger$PersistedEvents:persistedEvents	Ljava/util/HashMap;
    //   32: invokevirtual 180	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   35: aload_2
    //   36: invokestatic 137	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   39: return
    //   40: astore_3
    //   41: aconst_null
    //   42: astore_2
    //   43: aload_2
    //   44: astore_1
    //   45: invokestatic 143	com/facebook/AppEventsLogger:access$1300	()Ljava/lang/String;
    //   48: new 145	java/lang/StringBuilder
    //   51: dup
    //   52: ldc 147
    //   54: invokespecial 150	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   57: aload_3
    //   58: invokevirtual 153	java/lang/Exception:toString	()Ljava/lang/String;
    //   61: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: invokevirtual 158	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   67: invokestatic 164	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   70: pop
    //   71: aload_2
    //   72: invokestatic 137	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   75: return
    //   76: astore_2
    //   77: aconst_null
    //   78: astore_1
    //   79: aload_1
    //   80: invokestatic 137	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   83: aload_2
    //   84: athrow
    //   85: astore_2
    //   86: goto -7 -> 79
    //   89: astore_3
    //   90: goto -47 -> 43
    //
    // Exception table:
    //   from	to	target	type
    //   0	25	40	java/lang/Exception
    //   0	25	76	finally
    //   27	35	85	finally
    //   45	71	85	finally
    //   27	35	89	java/lang/Exception
  }

  public void addEvents(AppEventsLogger.AccessTokenAppIdPair paramAccessTokenAppIdPair, List<AppEventsLogger.AppEvent> paramList)
  {
    if (!this.persistedEvents.containsKey(paramAccessTokenAppIdPair))
      this.persistedEvents.put(paramAccessTokenAppIdPair, new ArrayList());
    ((List)this.persistedEvents.get(paramAccessTokenAppIdPair)).addAll(paramList);
  }

  public List<AppEventsLogger.AppEvent> getEvents(AppEventsLogger.AccessTokenAppIdPair paramAccessTokenAppIdPair)
  {
    return (List)this.persistedEvents.get(paramAccessTokenAppIdPair);
  }

  public Set<AppEventsLogger.AccessTokenAppIdPair> keySet()
  {
    return this.persistedEvents.keySet();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.AppEventsLogger.PersistedEvents
 * JD-Core Version:    0.6.2
 */