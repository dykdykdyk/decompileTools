.class public Lorg/android/agoo/d/a/a;
.super Lorg/android/agoo/d/a/h;
.source "AsyncHttpClient.java"


# instance fields
.field private final c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/android/agoo/d/a/h;-><init>()V

    .line 30
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lorg/android/agoo/d/a/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 31
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/d/a/a;->d:Ljava/util/Map;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/d/a/e;Lorg/android/agoo/d/a/b;)V
    .locals 7

    .prologue
    .line 63
    .line 1068
    invoke-static {p2, p3}, Lorg/android/agoo/d/a/a;->a(Ljava/lang/String;Lorg/android/agoo/d/a/e;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1142
    iget-object v2, p0, Lorg/android/agoo/d/a/h;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 1146
    iget-object v3, p0, Lorg/android/agoo/d/a/h;->b:Lorg/apache/http/protocol/HttpContext;

    .line 2106
    iget-object v6, p0, Lorg/android/agoo/d/a/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lorg/android/agoo/d/a/m;

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/android/agoo/d/a/m;-><init>(Landroid/content/Context;Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/android/agoo/d/a/b;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 2108
    if-eqz p1, :cond_1

    .line 2109
    iget-object v0, p0, Lorg/android/agoo/d/a/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2110
    if-nez v0, :cond_0

    .line 2111
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2112
    iget-object v2, p0, Lorg/android/agoo/d/a/a;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2114
    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_1
    return-void
.end method
