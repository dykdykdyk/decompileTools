.class abstract Lorg/android/agoo/d/b/a/b;
.super Ljava/lang/Object;
.source "AbsChunkedChannel.java"

# interfaces
.implements Lorg/android/agoo/d/b/n;


# static fields
.field private static final q:[C


# instance fields
.field volatile a:Ljava/lang/String;

.field volatile b:I

.field protected volatile c:Lorg/android/agoo/d/b/h;

.field protected volatile d:Ljava/io/InputStream;

.field protected volatile e:I

.field protected volatile f:Z

.field protected volatile g:J

.field volatile h:I

.field i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected volatile j:Landroid/content/Context;

.field private volatile k:Ljava/util/concurrent/ThreadPoolExecutor;

.field private volatile l:Lorg/android/agoo/d/b/p;

.field private volatile m:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile n:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile o:Ljava/lang/String;

.field private volatile p:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 243
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput-char v2, v0, v1

    sput-object v0, Lorg/android/agoo/d/b/a/b;->q:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v2, p0, Lorg/android/agoo/d/b/a/b;->m:Ljava/util/concurrent/Future;

    .line 48
    iput-object v2, p0, Lorg/android/agoo/d/b/a/b;->n:Ljava/util/concurrent/Future;

    .line 52
    sget-object v0, Lorg/android/agoo/d/b/h;->d:Lorg/android/agoo/d/b/h;

    iput-object v0, p0, Lorg/android/agoo/d/b/a/b;->c:Lorg/android/agoo/d/b/h;

    .line 53
    iput-object v2, p0, Lorg/android/agoo/d/b/a/b;->d:Ljava/io/InputStream;

    .line 54
    iput v3, p0, Lorg/android/agoo/d/b/a/b;->e:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/agoo/d/b/a/b;->f:Z

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/android/agoo/d/b/a/b;->g:J

    .line 57
    iput v3, p0, Lorg/android/agoo/d/b/a/b;->h:I

    .line 58
    iput-object v2, p0, Lorg/android/agoo/d/b/a/b;->p:Ljava/lang/Object;

    .line 63
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lorg/android/agoo/d/b/a/b;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/android/agoo/d/b/a/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    return-void
.end method

.method static synthetic a(Lorg/android/agoo/d/b/a/b;)V
    .locals 1

    .prologue
    .line 37
    .line 13089
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/agoo/d/b/a/b;->h:I

    .line 37
    return-void
.end method

.method private a([C)V
    .locals 4

    .prologue
    .line 332
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->l:Lorg/android/agoo/d/b/p;

    if-eqz v0, :cond_0

    .line 333
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 334
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->l:Lorg/android/agoo/d/b/p;

    iget-object v1, p0, Lorg/android/agoo/d/b/a/b;->p:Ljava/lang/Object;

    const-wide/16 v2, 0x2

    invoke-interface {v0, v1, v2, v3}, Lorg/android/agoo/d/b/p;->a(Ljava/lang/Object;J)V

    .line 337
    :cond_0
    return-void
.end method

.method private l()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 174
    const-string v0, "HttpChunked"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http chunked disconnect("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2093
    iget v2, p0, Lorg/android/agoo/d/b/a/b;->h:I

    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lorg/android/agoo/d/b/a/b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "HttpChunked"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http chunked connect["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3093
    iget v2, p0, Lorg/android/agoo/d/b/a/b;->h:I

    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] connection has been closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 180
    :cond_0
    sget-object v0, Lorg/android/agoo/d/b/h;->c:Lorg/android/agoo/d/b/h;

    iput-object v0, p0, Lorg/android/agoo/d/b/a/b;->c:Lorg/android/agoo/d/b/h;

    .line 182
    :try_start_0
    invoke-virtual {p0}, Lorg/android/agoo/d/b/a/b;->i()V

    .line 183
    invoke-virtual {p0}, Lorg/android/agoo/d/b/a/b;->j()V

    .line 184
    const-string v0, "HttpChunked"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http chunked connect["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4093
    iget v2, p0, Lorg/android/agoo/d/b/a/b;->h:I

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] connection disconnecting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lorg/android/agoo/d/b/a/b;->g()V

    .line 187
    const-string v0, "HttpChunked"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http chunked connect["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5093
    iget v2, p0, Lorg/android/agoo/d/b/a/b;->h:I

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] connection disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lorg/android/agoo/d/b/a/b;->k()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_1
    sget-object v0, Lorg/android/agoo/d/b/h;->d:Lorg/android/agoo/d/b/h;

    iput-object v0, p0, Lorg/android/agoo/d/b/a/b;->c:Lorg/android/agoo/d/b/h;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private final m()Z
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->c:Lorg/android/agoo/d/b/h;

    sget-object v1, Lorg/android/agoo/d/b/h;->c:Lorg/android/agoo/d/b/h;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->c:Lorg/android/agoo/d/b/h;

    sget-object v1, Lorg/android/agoo/d/b/h;->d:Lorg/android/agoo/d/b/h;

    if-ne v0, v1, :cond_1

    .line 354
    :cond_0
    const/4 v0, 0x1

    .line 356
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[BLorg/android/agoo/d/b/o;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 410
    const/4 v0, -0x1

    return v0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 198
    const-string v0, "HttpChunked"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http chunked disconnect("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6093
    iget v2, p0, Lorg/android/agoo/d/b/a/b;->h:I

    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lorg/android/agoo/d/b/a/b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "HttpChunked"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http chunked connect["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7093
    iget v2, p0, Lorg/android/agoo/d/b/a/b;->h:I

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] connection has been closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_0
    return-void

    .line 204
    :cond_0
    sget-object v0, Lorg/android/agoo/d/b/h;->c:Lorg/android/agoo/d/b/h;

    iput-object v0, p0, Lorg/android/agoo/d/b/a/b;->c:Lorg/android/agoo/d/b/h;

    .line 205
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/android/agoo/d/b/a/e;

    invoke-direct {v1, p0}, Lorg/android/agoo/d/b/a/e;-><init>(Lorg/android/agoo/d/b/a/b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 223
    sget-object v0, Lorg/android/agoo/d/b/h;->d:Lorg/android/agoo/d/b/h;

    iput-object v0, p0, Lorg/android/agoo/d/b/a/b;->c:Lorg/android/agoo/d/b/h;

    goto :goto_0
.end method

.method protected final a(JLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->l:Lorg/android/agoo/d/b/p;

    if-eqz v0, :cond_0

    .line 346
    sget-object v0, Lorg/android/agoo/d/b/h;->b:Lorg/android/agoo/d/b/h;

    iput-object v0, p0, Lorg/android/agoo/d/b/a/b;->c:Lorg/android/agoo/d/b/h;

    .line 347
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->l:Lorg/android/agoo/d/b/p;

    iget-object v1, p0, Lorg/android/agoo/d/b/a/b;->p:Ljava/lang/Object;

    iget v2, p0, Lorg/android/agoo/d/b/a/b;->h:I

    int-to-long v2, v2

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lorg/android/agoo/d/b/p;->a(Ljava/lang/Object;JJLjava/util/Map;)V

    .line 349
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;JLorg/android/agoo/d/b/p;)V
    .locals 3
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
    .line 116
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->j:Landroid/content/Context;

    const-string v1, "AppStore"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    const-string v1, "agoo_connect_type"

    const-string v2, "httpchunk"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    :goto_0
    if-nez p7, :cond_0

    .line 123
    const-string v0, "HttpChunked"

    const-string v1, "eventHandler == null "

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_1
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->c:Lorg/android/agoo/d/b/h;

    sget-object v1, Lorg/android/agoo/d/b/h;->b:Lorg/android/agoo/d/b/h;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->c:Lorg/android/agoo/d/b/h;

    sget-object v1, Lorg/android/agoo/d/b/h;->a:Lorg/android/agoo/d/b/h;

    if-ne v0, v1, :cond_2

    .line 128
    :cond_1
    const-string v0, "HttpChunked"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http chunked connect url: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] connectId:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1093
    iget v2, p0, Lorg/android/agoo/d/b/a/b;->h:I

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] connecting......"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_2
    iput-object p1, p0, Lorg/android/agoo/d/b/a/b;->p:Ljava/lang/Object;

    .line 1098
    :try_start_1
    new-instance v0, Lcom/umeng/message/proguard/h;

    invoke-direct {v0, p2}, Lcom/umeng/message/proguard/h;-><init>(Landroid/content/Context;)V

    .line 1185
    iget-boolean v1, v0, Lcom/umeng/message/proguard/h;->d:Z

    .line 1099
    if-eqz v1, :cond_3

    .line 1197
    iget-object v1, v0, Lcom/umeng/message/proguard/h;->a:Ljava/lang/String;

    .line 1100
    iput-object v1, p0, Lorg/android/agoo/d/b/a/b;->a:Ljava/lang/String;

    .line 1201
    iget v0, v0, Lcom/umeng/message/proguard/h;->b:I

    .line 1101
    iput v0, p0, Lorg/android/agoo/d/b/a/b;->b:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    :goto_2
    iput-object p7, p0, Lorg/android/agoo/d/b/a/b;->l:Lorg/android/agoo/d/b/p;

    .line 135
    sget-object v0, Lorg/android/agoo/d/b/h;->a:Lorg/android/agoo/d/b/h;

    iput-object v0, p0, Lorg/android/agoo/d/b/a/b;->c:Lorg/android/agoo/d/b/h;

    .line 136
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/android/agoo/d/b/a/c;

    invoke-direct {v1, p0, p3, p4}, Lorg/android/agoo/d/b/a/c;-><init>(Lorg/android/agoo/d/b/a/b;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/d/b/a/b;->m:Ljava/util/concurrent/Future;

    .line 147
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/android/agoo/d/b/a/d;

    invoke-direct {v1, p0, p5, p6}, Lorg/android/agoo/d/b/a/d;-><init>(Lorg/android/agoo/d/b/a/b;J)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/d/b/a/b;->n:Ljava/util/concurrent/Future;

    goto :goto_1

    .line 1103
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/android/agoo/d/b/a/b;->a:Ljava/lang/String;

    .line 1104
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/agoo/d/b/a/b;->b:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/String;Ljava/util/Map;)V
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
.end method

.method protected final a(Lorg/android/agoo/d/b/b;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 369
    invoke-direct {p0}, Lorg/android/agoo/d/b/a/b;->l()V

    .line 371
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lorg/android/agoo/d/b/a/b;->a(Lorg/android/agoo/d/b/b;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 373
    return-void
.end method

.method protected final a(Lorg/android/agoo/d/b/b;Ljava/util/Map;Ljava/lang/Throwable;)V
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
    .line 378
    invoke-direct {p0}, Lorg/android/agoo/d/b/a/b;->l()V

    .line 379
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->l:Lorg/android/agoo/d/b/p;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->l:Lorg/android/agoo/d/b/p;

    iget-object v1, p0, Lorg/android/agoo/d/b/a/b;->p:Ljava/lang/Object;

    iget v2, p0, Lorg/android/agoo/d/b/a/b;->h:I

    int-to-long v2, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lorg/android/agoo/d/b/p;->a(Ljava/lang/Object;JLorg/android/agoo/d/b/b;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 382
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 73
    return-void
.end method

.method public final b()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 402
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 433
    :try_start_0
    invoke-direct {p0}, Lorg/android/agoo/d/b/a/b;->l()V

    .line 434
    const-string v0, "HttpChunked"

    const-string v1, "http chunked closing"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Lorg/android/agoo/d/b/a/b;->f()V

    .line 436
    const-string v0, "HttpChunked"

    const-string v1, "http chunked closed"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 12089
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/agoo/d/b/a/b;->h:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 416
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/android/agoo/d/b/a/f;

    invoke-direct {v1, p0}, Lorg/android/agoo/d/b/a/f;-><init>(Lorg/android/agoo/d/b/a/b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 422
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final e()Lorg/android/agoo/d/b/h;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->c:Lorg/android/agoo/d/b/h;

    return-object v0
.end method

.method protected abstract f()V
.end method

.method protected abstract g()V
.end method

.method protected final h()V
    .locals 12

    .prologue
    const/16 v11, 0xd

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 249
    .line 251
    const/4 v0, 0x6

    :try_start_0
    new-array v5, v0, [C

    .line 252
    new-instance v6, Ljava/io/InputStreamReader;

    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->d:Ljava/io/InputStream;

    const-string v1, "UTF-8"

    invoke-direct {v6, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 253
    new-instance v7, Ljava/lang/StringBuffer;

    const/16 v0, 0x2000

    invoke-direct {v7, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v4, v3

    .line 254
    :goto_0
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_8

    .line 255
    const/16 v0, 0x20

    if-ne v1, v0, :cond_1

    .line 256
    sget-object v0, Lorg/android/agoo/d/b/a/b;->q:[C

    invoke-direct {p0, v0}, Lorg/android/agoo/d/b/a/b;->a([C)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 11079
    iget-object v1, p0, Lorg/android/agoo/d/b/a/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 309
    if-nez v1, :cond_0

    .line 310
    invoke-virtual {p0, v2}, Lorg/android/agoo/d/b/a/b;->a(Z)V

    .line 311
    const-string v1, "HttpChunked"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Throwable connectId:["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11093
    iget v3, p0, Lorg/android/agoo/d/b/a/b;->h:I

    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]==>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    sget-object v1, Lorg/android/agoo/d/b/b;->s:Lorg/android/agoo/d/b/b;

    invoke-virtual {p0, v1, v0}, Lorg/android/agoo/d/b/a/b;->a(Lorg/android/agoo/d/b/b;Ljava/lang/Throwable;)V

    .line 316
    :cond_0
    :goto_1
    return-void

    .line 260
    :cond_1
    :goto_2
    const/16 v0, 0x40

    if-ne v1, v0, :cond_6

    .line 261
    const/4 v0, 0x0

    int-to-char v8, v1

    :try_start_1
    aput-char v8, v5, v0

    move v0, v3

    .line 263
    :goto_3
    const/4 v8, 0x5

    if-ge v0, v8, :cond_1

    .line 264
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .line 265
    add-int/lit8 v8, v0, 0x1

    int-to-char v9, v1

    aput-char v9, v5, v8

    .line 266
    const/4 v8, 0x4

    if-lt v0, v8, :cond_5

    .line 267
    invoke-direct {p0, v5}, Lorg/android/agoo/d/b/a/b;->a([C)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 273
    :catch_1
    move-exception v0

    .line 274
    :try_start_2
    const-string v8, "HttpChunked"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "onSysData:["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8093
    iget v10, p0, Lorg/android/agoo/d/b/a/b;->h:I

    .line 274
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]==>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    .line 276
    :cond_2
    :goto_4
    const/16 v4, 0xa

    if-eq v1, v4, :cond_4

    .line 277
    if-eqz v0, :cond_3

    .line 278
    const/16 v0, 0xd

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v3

    .line 281
    :cond_3
    if-ne v1, v11, :cond_7

    move v0, v2

    .line 286
    :goto_5
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .line 287
    if-gez v1, :cond_2

    .line 291
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 292
    const-string v1, "HttpChunked"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "http msg is comming...........result="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8340
    iget-object v4, p0, Lorg/android/agoo/d/b/a/b;->l:Lorg/android/agoo/d/b/p;

    iget-object v8, p0, Lorg/android/agoo/d/b/a/b;->p:Ljava/lang/Object;

    iget v9, p0, Lorg/android/agoo/d/b/a/b;->h:I

    iget-object v9, p0, Lorg/android/agoo/d/b/a/b;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v4, v8, v1}, Lorg/android/agoo/d/b/p;->a(Ljava/lang/Object;[B)V

    .line 294
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move v4, v0

    goto/16 :goto_0

    .line 270
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_6
    move v0, v4

    .line 275
    goto :goto_4

    .line 284
    :cond_7
    int-to-char v1, v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 297
    :cond_8
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->c:Lorg/android/agoo/d/b/h;

    sget-object v1, Lorg/android/agoo/d/b/h;->b:Lorg/android/agoo/d/b/h;

    if-ne v0, v1, :cond_0

    .line 298
    const-string v0, "HttpChunked"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "connectId:["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9093
    iget v3, p0, Lorg/android/agoo/d/b/a/b;->h:I

    .line 298
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]==>server data is abort"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10079
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 300
    if-nez v0, :cond_9

    .line 301
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/android/agoo/d/b/a/b;->a(Z)V

    .line 302
    sget-object v0, Lorg/android/agoo/d/b/b;->s:Lorg/android/agoo/d/b/b;

    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connectId:["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10093
    iget v4, p0, Lorg/android/agoo/d/b/a/b;->h:I

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] server data is abort"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0, v0, v1}, Lorg/android/agoo/d/b/a/b;->a(Lorg/android/agoo/d/b/b;Ljava/lang/Throwable;)V

    .line 306
    :cond_9
    invoke-direct {p0}, Lorg/android/agoo/d/b/a/b;->l()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :cond_a
    move v4, v0

    goto/16 :goto_0
.end method

.method protected final i()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->n:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->n:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 322
    :cond_0
    return-void
.end method

.method protected final j()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->m:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->m:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 329
    :cond_0
    return-void
.end method

.method protected final k()V
    .locals 4

    .prologue
    .line 360
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->l:Lorg/android/agoo/d/b/p;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/android/agoo/d/b/a/b;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->c:Lorg/android/agoo/d/b/h;

    sget-object v1, Lorg/android/agoo/d/b/h;->b:Lorg/android/agoo/d/b/h;

    if-ne v0, v1, :cond_0

    .line 364
    iget-object v0, p0, Lorg/android/agoo/d/b/a/b;->l:Lorg/android/agoo/d/b/p;

    iget-object v1, p0, Lorg/android/agoo/d/b/a/b;->p:Ljava/lang/Object;

    iget v2, p0, Lorg/android/agoo/d/b/a/b;->h:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lorg/android/agoo/d/b/p;->b(Ljava/lang/Object;J)V

    goto :goto_0
.end method
