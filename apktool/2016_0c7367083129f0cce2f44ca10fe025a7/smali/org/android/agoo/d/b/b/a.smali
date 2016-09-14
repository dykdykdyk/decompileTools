.class public final Lorg/android/agoo/d/b/b/a;
.super Ljava/lang/Object;
.source "SpdyChannel.java"

# interfaces
.implements Lorg/android/agoo/d/b/n;
.implements Lorg/android/spdy/Spdycb;


# instance fields
.field protected volatile a:Lorg/android/agoo/d/b/h;

.field protected volatile b:Landroid/content/Context;

.field private volatile c:Lorg/android/spdy/SpdyAgent;

.field private volatile d:Lorg/android/spdy/SpdySession;

.field private volatile e:Ljava/lang/String;

.field private volatile f:Lorg/android/agoo/d/b/p;

.field private volatile g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/android/agoo/d/b/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/android/agoo/d/b/o;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile j:J

.field private volatile k:Ljava/net/URL;

.field private volatile l:Ljava/lang/Object;

.field private volatile m:J

.field private volatile n:J

.field private final o:Lorg/android/spdy/SessionCb;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lorg/android/agoo/d/b/b/a;->c:Lorg/android/spdy/SpdyAgent;

    .line 44
    iput-object v1, p0, Lorg/android/agoo/d/b/b/a;->d:Lorg/android/spdy/SpdySession;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/d/b/b/a;->g:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/d/b/b/a;->h:Ljava/util/Map;

    .line 50
    iput-wide v2, p0, Lorg/android/agoo/d/b/b/a;->j:J

    .line 52
    iput-object v1, p0, Lorg/android/agoo/d/b/b/a;->l:Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/android/agoo/d/b/h;->d:Lorg/android/agoo/d/b/h;

    iput-object v0, p0, Lorg/android/agoo/d/b/b/a;->a:Lorg/android/agoo/d/b/h;

    .line 323
    iput-wide v2, p0, Lorg/android/agoo/d/b/b/a;->m:J

    .line 362
    iput-wide v2, p0, Lorg/android/agoo/d/b/b/a;->n:J

    .line 444
    new-instance v0, Lorg/android/agoo/d/b/b/c;

    invoke-direct {v0, p0}, Lorg/android/agoo/d/b/b/c;-><init>(Lorg/android/agoo/d/b/b/a;)V

    iput-object v0, p0, Lorg/android/agoo/d/b/b/a;->o:Lorg/android/spdy/SessionCb;

    .line 64
    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/android/agoo/d/b/b/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->b:Landroid/content/Context;

    sget-object v1, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v2, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v0, v1, v2}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/d/b/b/a;->c:Lorg/android/spdy/SpdyAgent;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    sget-object v1, Lorg/android/agoo/d/b/b;->g:Lorg/android/agoo/d/b/b;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v1, v2, v0}, Lorg/android/agoo/d/b/b/a;->a(Lorg/android/agoo/d/b/b;Ljava/util/Map;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    .line 70
    sget-object v1, Lorg/android/agoo/d/b/b;->f:Lorg/android/agoo/d/b/b;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v1, v2, v0}, Lorg/android/agoo/d/b/b/a;->a(Lorg/android/agoo/d/b/b;Ljava/util/Map;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lorg/android/agoo/d/b/b/a;J)J
    .locals 1

    .prologue
    .line 40
    iput-wide p1, p0, Lorg/android/agoo/d/b/b/a;->j:J

    return-wide p1
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 421
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 422
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 423
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    add-int/lit8 v0, v3, -0x1

    if-ge v1, v0, :cond_0

    .line 425
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 428
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lorg/android/agoo/d/b/b/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 395
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 396
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 399
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 401
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 402
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 405
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lorg/android/agoo/d/b/b/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 409
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 410
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 412
    :cond_1
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 417
    :cond_2
    return-object v2
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 40
    .line 4433
    :try_start_0
    const-string v0, "AppStore"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4435
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4436
    const-string v1, "agoo_push_errorid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4437
    const-string v1, "agoo_push_path"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4438
    const-string v1, "agoo_connect_type"

    const-string v2, "spdy"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4439
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4441
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 373
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    const-string v0, "SpdyClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect url["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_0
    if-eqz p1, :cond_2

    .line 378
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 379
    if-eqz v0, :cond_1

    .line 382
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 383
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 384
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 385
    const-string v3, "SpdyClient"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "header--->["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_2
    return-void
.end method

.method static synthetic a(Lorg/android/agoo/d/b/b/a;Lorg/android/agoo/d/b/b;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/android/agoo/d/b/b/a;->a(Lorg/android/agoo/d/b/b;Ljava/util/Map;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final a(Lorg/android/agoo/d/b/b;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/android/agoo/d/b/b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->f:Lorg/android/agoo/d/b/p;

    if-eqz v0, :cond_0

    .line 4083
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 543
    if-eqz v0, :cond_0

    .line 544
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/android/agoo/d/b/b/a;->a(Z)V

    .line 545
    sget-object v0, Lorg/android/agoo/d/b/h;->d:Lorg/android/agoo/d/b/h;

    iput-object v0, p0, Lorg/android/agoo/d/b/b/a;->a:Lorg/android/agoo/d/b/h;

    .line 546
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->f:Lorg/android/agoo/d/b/p;

    iget-object v1, p0, Lorg/android/agoo/d/b/b/a;->l:Ljava/lang/Object;

    iget-wide v2, p0, Lorg/android/agoo/d/b/b/a;->m:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lorg/android/agoo/d/b/p;->a(Ljava/lang/Object;JLorg/android/agoo/d/b/b;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 549
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 77
    return-void
.end method

.method static synthetic b(Lorg/android/agoo/d/b/b/a;J)J
    .locals 1

    .prologue
    .line 40
    iput-wide p1, p0, Lorg/android/agoo/d/b/b/a;->n:J

    return-wide p1
.end method

.method static synthetic b(Lorg/android/agoo/d/b/b/a;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/android/agoo/d/b/b/a;->f()V

    return-void
.end method

.method static synthetic c(Lorg/android/agoo/d/b/b/a;)J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lorg/android/agoo/d/b/b/a;->n:J

    return-wide v0
.end method

.method static synthetic d(Lorg/android/agoo/d/b/b/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->l:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lorg/android/agoo/d/b/b/a;)Lorg/android/agoo/d/b/p;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->f:Lorg/android/agoo/d/b/p;

    return-object v0
.end method

.method static synthetic f(Lorg/android/agoo/d/b/b/a;)J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lorg/android/agoo/d/b/b/a;->m:J

    return-wide v0
.end method

.method private final f()V
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->d:Lorg/android/spdy/SpdySession;

    if-eqz v0, :cond_0

    .line 194
    :try_start_0
    const-string v0, "SpdyClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "session.streamReset("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/android/agoo/d/b/b/a;->m:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->d:Lorg/android/spdy/SpdySession;

    iget-wide v2, p0, Lorg/android/agoo/d/b/b/a;->m:J

    const/16 v1, -0x7de

    invoke-virtual {v0, v2, v3, v1}, Lorg/android/spdy/SpdySession;->streamReset(JI)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    :goto_0
    :try_start_1
    const-string v0, "SpdyClient"

    const-string v1, "session.close()"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->d:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->closeSession()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/d/b/b/a;->d:Lorg/android/spdy/SpdySession;

    .line 207
    :cond_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    const-string v1, "SpdyClient"

    const-string v2, "disconnect"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[BLorg/android/agoo/d/b/o;)I
    .locals 8

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 149
    const/4 v2, 0x0

    .line 154
    :try_start_0
    iget-object v3, p0, Lorg/android/agoo/d/b/b/a;->a:Lorg/android/agoo/d/b/h;

    sget-object v4, Lorg/android/agoo/d/b/h;->b:Lorg/android/agoo/d/b/h;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/android/agoo/d/b/b/a;->d:Lorg/android/spdy/SpdySession;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/android/agoo/d/b/b/a;->k:Ljava/net/URL;

    if-eqz v3, :cond_2

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 156
    iget-object v3, p0, Lorg/android/agoo/d/b/b/a;->k:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 157
    iget-object v4, p0, Lorg/android/agoo/d/b/b/a;->k:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v4

    .line 158
    const-string v5, "http://%s:%d%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x2

    aput-object p1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 160
    const-string v4, "SpdyClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "send[baseUrl:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v4, Lorg/android/spdy/SpdyRequest;

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v6, "POST"

    sget-object v7, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    invoke-direct {v4, v5, v6, v7}, Lorg/android/spdy/SpdyRequest;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;)V

    .line 165
    if-eqz p2, :cond_0

    array-length v5, p2

    if-lez v5, :cond_0

    .line 166
    new-instance v2, Lorg/android/spdy/SpdyDataProvider;

    invoke-direct {v2, p2}, Lorg/android/spdy/SpdyDataProvider;-><init>([B)V

    .line 167
    invoke-static {p2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    .line 169
    :cond_0
    const-string v5, "%s_%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 170
    if-eqz p3, :cond_1

    .line 171
    iget-object v3, p0, Lorg/android/agoo/d/b/b/a;->h:Ljava/util/Map;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_1
    iget-object v3, p0, Lorg/android/agoo/d/b/b/a;->d:Lorg/android/spdy/SpdySession;

    invoke-virtual {v3, v4, v2, v1, p0}, Lorg/android/spdy/SpdySession;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 179
    :cond_2
    :goto_0
    return v0

    .line 177
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lorg/android/agoo/d/b/h;->c:Lorg/android/agoo/d/b/h;

    iput-object v0, p0, Lorg/android/agoo/d/b/b/a;->a:Lorg/android/agoo/d/b/h;

    .line 212
    invoke-direct {p0}, Lorg/android/agoo/d/b/b/a;->f()V

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/android/agoo/d/b/b/a;->a(Z)V

    .line 214
    sget-object v0, Lorg/android/agoo/d/b/h;->d:Lorg/android/agoo/d/b/h;

    iput-object v0, p0, Lorg/android/agoo/d/b/b/a;->a:Lorg/android/agoo/d/b/h;

    .line 215
    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;JLorg/android/agoo/d/b/p;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lorg/android/agoo/d/b/p;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    if-eqz p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p7, :cond_1

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectContext==null||url==null || eventHandler==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    iput-object p2, p0, Lorg/android/agoo/d/b/b/a;->b:Landroid/content/Context;

    .line 94
    iput-object p1, p0, Lorg/android/agoo/d/b/b/a;->l:Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/android/agoo/d/b/b/a;->a(Z)V

    .line 96
    iput-object p7, p0, Lorg/android/agoo/d/b/b/a;->f:Lorg/android/agoo/d/b/p;

    .line 98
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->b:Landroid/content/Context;

    const-string v1, "AppStore"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 101
    const-string v1, "agoo_connect_type"

    const-string v2, "spdy"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 105
    :goto_0
    :try_start_1
    invoke-static {p3, p4}, Lorg/android/agoo/d/b/b/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    sget-object v0, Lorg/android/agoo/d/b/h;->a:Lorg/android/agoo/d/b/h;

    iput-object v0, p0, Lorg/android/agoo/d/b/b/a;->a:Lorg/android/agoo/d/b/h;

    .line 107
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->c:Lorg/android/spdy/SpdyAgent;

    if-eqz v0, :cond_3

    .line 108
    iput-object p3, p0, Lorg/android/agoo/d/b/b/a;->e:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/android/agoo/d/b/b/a;->k:Ljava/net/URL;

    .line 110
    new-instance v1, Lorg/android/spdy/SpdyRequest;

    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->k:Ljava/net/URL;

    const-string v2, "GET"

    sget-object v3, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    invoke-direct {v1, v0, v2, v3}, Lorg/android/spdy/SpdyRequest;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;)V

    .line 113
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 114
    invoke-virtual {v1, p4}, Lorg/android/spdy/SpdyRequest;->addHeaders(Ljava/util/Map;)V

    .line 116
    :cond_2
    new-instance v2, Lorg/android/spdy/SpdyDataProvider;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lorg/android/spdy/SpdyDataProvider;-><init>([B)V

    .line 117
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->c:Lorg/android/spdy/SpdyAgent;

    iget-object v3, p0, Lorg/android/agoo/d/b/b/a;->e:Ljava/lang/String;

    iget-object v4, p0, Lorg/android/agoo/d/b/b/a;->e:Ljava/lang/String;

    iget-object v6, p0, Lorg/android/agoo/d/b/b/a;->o:Lorg/android/spdy/SessionCb;

    const/4 v7, 0x2

    move-object v5, p0

    invoke-virtual/range {v0 .. v7}, Lorg/android/spdy/SpdyAgent;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Ljava/lang/Object;Lorg/android/spdy/Spdycb;Lorg/android/spdy/SessionCb;I)Lorg/android/spdy/SpdySession;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/d/b/b/a;->d:Lorg/android/spdy/SpdySession;
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    :cond_3
    :goto_1
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 121
    sget-object v1, Lorg/android/agoo/d/b/b;->g:Lorg/android/agoo/d/b/b;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v1, v2, v0}, Lorg/android/agoo/d/b/b/a;->a(Lorg/android/agoo/d/b/b;Ljava/util/Map;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 123
    :catch_1
    move-exception v0

    .line 125
    sget-object v1, Lorg/android/agoo/d/b/b;->a:Lorg/android/agoo/d/b/b;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v1, v2, v0}, Lorg/android/agoo/d/b/b/a;->a(Lorg/android/agoo/d/b/b;Ljava/util/Map;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public final b()J
    .locals 4

    .prologue
    .line 132
    const/4 v0, -0x1

    .line 134
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/d/b/b/a;->d:Lorg/android/spdy/SpdySession;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lorg/android/agoo/d/b/b/a;->d:Lorg/android/spdy/SpdySession;

    invoke-virtual {v1}, Lorg/android/spdy/SpdySession;->submitPing()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 142
    :cond_0
    :goto_0
    int-to-long v0, v0

    return-wide v0

    .line 138
    :catch_0
    move-exception v1

    .line 139
    sget-object v2, Lorg/android/agoo/d/b/b;->e:Lorg/android/agoo/d/b/b;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v2, v3, v1}, Lorg/android/agoo/d/b/b/a;->a(Lorg/android/agoo/d/b/b;Ljava/util/Map;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 220
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->c:Lorg/android/spdy/SpdyAgent;

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "SpdyClient"

    const-string v1, "closing"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lorg/android/agoo/d/b/b/a;->f()V

    .line 223
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->c:Lorg/android/spdy/SpdyAgent;

    invoke-virtual {v0}, Lorg/android/spdy/SpdyAgent;->close()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/d/b/b/a;->c:Lorg/android/spdy/SpdyAgent;

    .line 225
    const-string v0, "SpdyClient"

    const-string v1, "closed"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 233
    const-string v0, "SpdyClient"

    const-string v1, "shutdown....."

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v0, Lorg/android/agoo/d/b/b/b;

    invoke-direct {v0, p0}, Lorg/android/agoo/d/b/b/b;-><init>(Lorg/android/agoo/d/b/b/a;)V

    invoke-static {v0}, Lcom/umeng/message/proguard/v;->a(Ljava/lang/Runnable;)V

    .line 242
    return-void
.end method

.method public final e()Lorg/android/agoo/d/b/h;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->a:Lorg/android/agoo/d/b/h;

    return-object v0
.end method

.method public final spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJ[BILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 297
    :try_start_0
    check-cast p7, Ljava/lang/String;

    .line 298
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    if-nez p5, :cond_2

    .line 302
    const-string v0, "SpdyClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "spdyDataChunkRecvCB,data=null,streamId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_2
    const-string v0, "SpdyClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "spdyDataChunkRecvCB,data="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->e:Ljava/lang/String;

    invoke-static {p7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2083
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 306
    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->f:Lorg/android/agoo/d/b/p;

    iget-object v1, p0, Lorg/android/agoo/d/b/b/a;->l:Ljava/lang/Object;

    invoke-interface {v0, v1, p5}, Lorg/android/agoo/d/b/p;->a(Ljava/lang/Object;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    sget-object v1, Lorg/android/agoo/d/b/b;->c:Lorg/android/agoo/d/b/b;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v1, v2, v0}, Lorg/android/agoo/d/b/b/a;->a(Lorg/android/agoo/d/b/b;Ljava/util/Map;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 311
    :cond_3
    :try_start_1
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->g:Ljava/util/Map;

    invoke-interface {v0, p7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/d/b/b/d;

    .line 312
    if-eqz v0, :cond_0

    .line 2520
    iget-object v1, v0, Lorg/android/agoo/d/b/b/d;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 314
    iget-object v1, p0, Lorg/android/agoo/d/b/b/a;->g:Ljava/util/Map;

    invoke-interface {v1, p7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 262
    :try_start_0
    check-cast p6, Ljava/lang/String;

    .line 263
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->h:Ljava/util/Map;

    invoke-interface {v0, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 267
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/d/b/o;

    .line 269
    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Lorg/android/agoo/d/b/b/a;->g:Ljava/util/Map;

    invoke-interface {v1, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/android/agoo/d/b/b/d;

    .line 271
    if-eqz v1, :cond_0

    .line 272
    iget-object v2, p0, Lorg/android/agoo/d/b/b/a;->l:Ljava/lang/Object;

    .line 1533
    iget v2, v1, Lorg/android/agoo/d/b/b/d;->a:I

    .line 274
    invoke-virtual {v1}, Lorg/android/agoo/d/b/b/d;->a()[B

    .line 272
    invoke-interface {v0, p6, v2}, Lorg/android/agoo/d/b/o;->a(Ljava/lang/String;I)V

    .line 275
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->h:Ljava/util/Map;

    invoke-interface {v0, p6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->g:Ljava/util/Map;

    invoke-interface {v0, p6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    const-string v1, "SpdyClient"

    const-string v2, "spdyDataRecvCallback"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public final spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/android/spdy/SpdySession;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 329
    invoke-static {p4}, Lorg/android/agoo/d/b/b/a;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 331
    const/4 v0, -0x1

    .line 332
    :try_start_0
    check-cast p5, Ljava/lang/String;

    .line 333
    const-string v1, ":status"

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 334
    const-string v0, ":status"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 336
    :goto_0
    const-string v0, "SpdyClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "spdyOnStreamResponse PATH["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3365
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->e:Ljava/lang/String;

    invoke-static {v0, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3366
    const/4 v0, 0x1

    .line 338
    :goto_1
    if-eqz v0, :cond_2

    .line 339
    iput-wide p2, p0, Lorg/android/agoo/d/b/b/a;->m:J

    .line 340
    const/16 v0, 0xc8

    if-ne v1, v0, :cond_1

    .line 341
    sget-object v0, Lorg/android/agoo/d/b/h;->b:Lorg/android/agoo/d/b/h;

    iput-object v0, p0, Lorg/android/agoo/d/b/b/a;->a:Lorg/android/agoo/d/b/h;

    .line 342
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->f:Lorg/android/agoo/d/b/p;

    iget-object v1, p0, Lorg/android/agoo/d/b/b/a;->l:Ljava/lang/Object;

    iget-wide v4, p0, Lorg/android/agoo/d/b/b/a;->j:J

    move-wide v2, p2

    invoke-interface/range {v0 .. v6}, Lorg/android/agoo/d/b/p;->a(Ljava/lang/Object;JJLjava/util/Map;)V

    .line 349
    :goto_2
    const-string v0, ":status"

    invoke-interface {p4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :goto_3
    return-void

    .line 3368
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 345
    :cond_1
    invoke-static {v1}, Lorg/android/agoo/d/b/b;->b(I)Lorg/android/agoo/d/b/b;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http httpStatusCode["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v6, v2}, Lorg/android/agoo/d/b/b/a;->a(Lorg/android/agoo/d/b/b;Ljava/util/Map;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 357
    :catch_0
    move-exception v0

    .line 358
    sget-object v1, Lorg/android/agoo/d/b/b;->b:Lorg/android/agoo/d/b/b;

    invoke-direct {p0, v1, v6, v0}, Lorg/android/agoo/d/b/b/a;->a(Lorg/android/agoo/d/b/b;Ljava/util/Map;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 351
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/android/agoo/d/b/b/a;->g:Ljava/util/Map;

    invoke-interface {v0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/d/b/b/d;

    .line 352
    if-nez v0, :cond_3

    .line 353
    new-instance v0, Lorg/android/agoo/d/b/b/d;

    invoke-direct {v0, p0, v1, v6}, Lorg/android/agoo/d/b/b/d;-><init>(Lorg/android/agoo/d/b/b/a;ILjava/util/Map;)V

    .line 355
    :cond_3
    iget-object v1, p0, Lorg/android/agoo/d/b/b/a;->g:Ljava/util/Map;

    invoke-interface {v1, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_4
    move v1, v0

    goto/16 :goto_0
.end method

.method public final spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 290
    return-void
.end method

.method public final spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JILjava/lang/Object;Lorg/android/spdy/SuperviseData;)V
    .locals 0

    .prologue
    .line 556
    return-void
.end method
