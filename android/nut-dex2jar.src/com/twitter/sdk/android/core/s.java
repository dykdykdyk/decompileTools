package com.twitter.sdk.android.core;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.twitter.sdk.android.core.a.b;
import com.twitter.sdk.android.core.a.d;
import io.fabric.sdk.android.o;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import javax.net.ssl.SSLSocketFactory;
import retrofit.RestAdapter;
import retrofit.RestAdapter.Builder;
import retrofit.android.MainThreadExecutor;
import retrofit.converter.GsonConverter;

public class s
{
  final ConcurrentHashMap<Class, Object> a;
  final RestAdapter b;

  private s(TwitterAuthConfig paramTwitterAuthConfig, q paramq, com.twitter.sdk.android.core.internal.f paramf, SSLSocketFactory paramSSLSocketFactory, ExecutorService paramExecutorService)
  {
    if (paramq == null)
      throw new IllegalArgumentException("Session must not be null.");
    this.a = new ConcurrentHashMap();
    Gson localGson = new GsonBuilder().registerTypeAdapterFactory(new b()).registerTypeAdapterFactory(new d()).create();
    this.b = new RestAdapter.Builder().setClient(new e(paramTwitterAuthConfig, paramq, paramSSLSocketFactory)).setEndpoint(paramf.a).setConverter(new GsonConverter(localGson)).setExecutors(paramExecutorService, new MainThreadExecutor()).build();
  }

  public s(q paramq)
  {
    this(v.e().d, paramq, new com.twitter.sdk.android.core.internal.f(), v.e().f(), v.e().o.c);
  }

  public final <T> T a(Class<T> paramClass)
  {
    if (!this.a.contains(paramClass))
      this.a.putIfAbsent(paramClass, this.b.create(paramClass));
    return this.a.get(paramClass);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.s
 * JD-Core Version:    0.6.2
 */