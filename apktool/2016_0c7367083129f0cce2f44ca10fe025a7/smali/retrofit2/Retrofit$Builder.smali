.class public final Lretrofit2/Retrofit$Builder;
.super Ljava/lang/Object;
.source "Retrofit.java"


# instance fields
.field private adapterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit2/CallAdapter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private baseUrl:Lokhttp3/ad;

.field private callFactory:Lokhttp3/h;

.field private callbackExecutor:Ljava/util/concurrent/Executor;

.field private converterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit2/Converter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private platform:Lretrofit2/Platform;

.field private validateEagerly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 402
    invoke-static {}, Lretrofit2/Platform;->get()Lretrofit2/Platform;

    move-result-object v0

    invoke-direct {p0, v0}, Lretrofit2/Retrofit$Builder;-><init>(Lretrofit2/Platform;)V

    .line 403
    return-void
.end method

.method constructor <init>(Lretrofit2/Platform;)V
    .locals 2

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    .line 395
    iput-object p1, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    .line 398
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    new-instance v1, Lretrofit2/BuiltInConverters;

    invoke-direct {v1}, Lretrofit2/BuiltInConverters;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    return-void
.end method


# virtual methods
.method public final addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    const-string v1, "factory == null"

    invoke-static {p1, v1}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    return-object p0
.end method

.method public final addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    const-string v1, "factory == null"

    invoke-static {p1, v1}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    return-object p0
.end method

.method public final baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;
    .locals 3

    .prologue
    .line 434
    const-string v0, "baseUrl == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 435
    invoke-static {p1}, Lokhttp3/ad;->e(Ljava/lang/String;)Lokhttp3/ad;

    move-result-object v0

    .line 436
    if-nez v0, :cond_0

    .line 437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_0
    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->baseUrl(Lokhttp3/ad;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final baseUrl(Lokhttp3/ad;)Lretrofit2/Retrofit$Builder;
    .locals 3

    .prologue
    .line 493
    const-string v0, "baseUrl == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1589
    iget-object v0, p1, Lokhttp3/ad;->d:Ljava/util/List;

    .line 495
    const-string v1, ""

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "baseUrl must end in /: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_0
    iput-object p1, p0, Lretrofit2/Retrofit$Builder;->baseUrl:Lokhttp3/ad;

    .line 499
    return-object p0
.end method

.method public final build()Lretrofit2/Retrofit;
    .locals 7

    .prologue
    .line 545
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->baseUrl:Lokhttp3/ad;

    if-nez v0, :cond_0

    .line 546
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Base URL required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_0
    iget-object v1, p0, Lretrofit2/Retrofit$Builder;->callFactory:Lokhttp3/h;

    .line 550
    if-nez v1, :cond_1

    .line 551
    new-instance v1, Lokhttp3/am;

    invoke-direct {v1}, Lokhttp3/am;-><init>()V

    .line 554
    :cond_1
    iget-object v5, p0, Lretrofit2/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 555
    if-nez v5, :cond_2

    .line 556
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    invoke-virtual {v0}, Lretrofit2/Platform;->defaultCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 560
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 561
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    invoke-virtual {v0, v5}, Lretrofit2/Platform;->defaultCallAdapterFactory(Ljava/util/concurrent/Executor;)Lretrofit2/CallAdapter$Factory;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 566
    new-instance v0, Lretrofit2/Retrofit;

    iget-object v2, p0, Lretrofit2/Retrofit$Builder;->baseUrl:Lokhttp3/ad;

    iget-boolean v6, p0, Lretrofit2/Retrofit$Builder;->validateEagerly:Z

    invoke-direct/range {v0 .. v6}, Lretrofit2/Retrofit;-><init>(Lokhttp3/h;Lokhttp3/ad;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public final callFactory(Lokhttp3/h;)Lretrofit2/Retrofit$Builder;
    .locals 1

    .prologue
    .line 424
    const-string v0, "factory == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/h;

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->callFactory:Lokhttp3/h;

    .line 425
    return-object p0
.end method

.method public final callbackExecutor(Ljava/util/concurrent/Executor;)Lretrofit2/Retrofit$Builder;
    .locals 1

    .prologue
    .line 525
    const-string v0, "executor == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 526
    return-object p0
.end method

.method public final client(Lokhttp3/am;)Lretrofit2/Retrofit$Builder;
    .locals 1

    .prologue
    .line 415
    const-string v0, "client == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/h;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->callFactory(Lokhttp3/h;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final validateEagerly(Z)Lretrofit2/Retrofit$Builder;
    .locals 0

    .prologue
    .line 534
    iput-boolean p1, p0, Lretrofit2/Retrofit$Builder;->validateEagerly:Z

    .line 535
    return-object p0
.end method
