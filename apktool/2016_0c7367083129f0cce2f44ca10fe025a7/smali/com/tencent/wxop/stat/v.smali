.class public Lcom/tencent/wxop/stat/v;
.super Ljava/lang/Object;


# static fields
.field static volatile a:I

.field static volatile b:J

.field static volatile c:J

.field private static d:Lcom/tencent/wxop/stat/b/f;

.field private static volatile e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/tencent/wxop/stat/a/b;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile h:J

.field private static volatile i:J

.field private static volatile j:J

.field private static k:Ljava/lang/String;

.field private static volatile l:I

.field private static volatile m:Ljava/lang/String;

.field private static volatile n:Ljava/lang/String;

.field private static o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static q:Lcom/tencent/wxop/stat/b/b;

.field private static r:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static volatile s:Z

.field private static t:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/v;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/v;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/tencent/wxop/stat/v;->g:Ljava/util/Map;

    sput-wide v2, Lcom/tencent/wxop/stat/v;->h:J

    sput-wide v2, Lcom/tencent/wxop/stat/v;->i:J

    sput-wide v2, Lcom/tencent/wxop/stat/v;->j:J

    const-string v0, ""

    sput-object v0, Lcom/tencent/wxop/stat/v;->k:Ljava/lang/String;

    sput v4, Lcom/tencent/wxop/stat/v;->l:I

    const-string v0, ""

    sput-object v0, Lcom/tencent/wxop/stat/v;->m:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/wxop/stat/v;->n:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/v;->o:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/v;->p:Ljava/util/Map;

    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->c()Lcom/tencent/wxop/stat/b/b;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    sput-object v5, Lcom/tencent/wxop/stat/v;->r:Ljava/lang/Thread$UncaughtExceptionHandler;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/wxop/stat/v;->s:Z

    sput v4, Lcom/tencent/wxop/stat/v;->a:I

    sput-wide v2, Lcom/tencent/wxop/stat/v;->b:J

    sput-object v5, Lcom/tencent/wxop/stat/v;->t:Landroid/content/Context;

    sput-wide v2, Lcom/tencent/wxop/stat/v;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/tencent/wxop/stat/w;)I
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/tencent/wxop/stat/v;->i:J

    sget-wide v6, Lcom/tencent/wxop/stat/v;->j:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->d()J

    move-result-wide v6

    sput-wide v6, Lcom/tencent/wxop/stat/v;->j:J

    :cond_0
    sget-wide v6, Lcom/tencent/wxop/stat/v;->j:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_a

    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->d()J

    move-result-wide v4

    sput-wide v4, Lcom/tencent/wxop/stat/v;->j:J

    invoke-static {p0}, Lcom/tencent/wxop/stat/ai;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/ai;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wxop/stat/ai;->b(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/c;

    move-result-object v0

    .line 1000
    iget v0, v0, Lcom/tencent/wxop/stat/b/c;->c:I

    .line 0
    if-eq v0, v1, :cond_1

    invoke-static {p0}, Lcom/tencent/wxop/stat/ai;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/ai;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wxop/stat/ai;->b(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/c;

    move-result-object v0

    .line 2000
    iput v1, v0, Lcom/tencent/wxop/stat/b/c;->c:I

    .line 0
    :cond_1
    invoke-static {}, Lcom/tencent/wxop/stat/t;->r()V

    sput v2, Lcom/tencent/wxop/stat/v;->a:I

    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/v;->k:Ljava/lang/String;

    move v0, v1

    :goto_0
    sget-object v3, Lcom/tencent/wxop/stat/v;->k:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/wxop/stat/b/l;->a(Lcom/tencent/wxop/stat/w;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3000
    iget-object v4, p1, Lcom/tencent/wxop/stat/w;->a:Ljava/lang/String;

    .line 0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/wxop/stat/v;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    sget-object v4, Lcom/tencent/wxop/stat/v;->p:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    :goto_1
    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/tencent/wxop/stat/b/l;->a(Lcom/tencent/wxop/stat/w;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/tencent/wxop/stat/t;->s()I

    move-result v0

    invoke-static {}, Lcom/tencent/wxop/stat/t;->p()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-static {p0}, Lcom/tencent/wxop/stat/b/l;->t(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/wxop/stat/v;->b(Landroid/content/Context;Lcom/tencent/wxop/stat/w;)V

    :goto_2
    sget-object v0, Lcom/tencent/wxop/stat/v;->p:Ljava/util/Map;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-boolean v0, Lcom/tencent/wxop/stat/v;->s:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/tencent/wxop/stat/t;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/tencent/wxop/stat/v;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    const-string v1, "The Context of StatService.testSpeed() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/b;->d(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    sput-boolean v2, Lcom/tencent/wxop/stat/v;->s:Z

    :cond_5
    sget v0, Lcom/tencent/wxop/stat/v;->l:I

    return v0

    :cond_6
    sget-object v0, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    const-string v1, "Exceed StatConfig.getMaxDaySessionNumbers()."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/b;->e(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-static {p0, p1}, Lcom/tencent/wxop/stat/v;->b(Landroid/content/Context;Lcom/tencent/wxop/stat/w;)V

    goto :goto_2

    :cond_8
    invoke-static {v0}, Lcom/tencent/wxop/stat/v;->g(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/f;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/tencent/wxop/stat/v;->d:Lcom/tencent/wxop/stat/b/f;

    new-instance v3, Lcom/tencent/wxop/stat/z;

    invoke-direct {v3, v0}, Lcom/tencent/wxop/stat/z;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_9
    move v1, v0

    goto :goto_1

    :cond_a
    move v0, v2

    goto/16 :goto_0
.end method

.method static synthetic a(J)J
    .locals 0

    sput-wide p0, Lcom/tencent/wxop/stat/v;->h:J

    return-wide p0
.end method

.method static synthetic a(Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    sput-object p0, Lcom/tencent/wxop/stat/v;->r:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Properties;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/v;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/tencent/wxop/stat/t;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/v;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    const-string v1, "The Context of StatService.sendNetworkDetector() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/b;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Lcom/tencent/wxop/stat/a/f;

    invoke-direct {v1, v0}, Lcom/tencent/wxop/stat/a/f;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/tencent/wxop/stat/l;->b(Landroid/content/Context;)Lcom/tencent/wxop/stat/l;

    move-result-object v0

    new-instance v2, Lcom/tencent/wxop/stat/q;

    invoke-direct {v2}, Lcom/tencent/wxop/stat/q;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wxop/stat/l;->a(Lcom/tencent/wxop/stat/a/d;Lcom/tencent/wxop/stat/k;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/tencent/wxop/stat/t;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/wxop/stat/v;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    const-string v1, "The Context of StatService.trackCustomEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/b;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    sget-object v0, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    const-string v1, "The event_id of StatService.trackCustomEvent() can not be null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/b;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/tencent/wxop/stat/a/b;

    invoke-direct {v0, p1}, Lcom/tencent/wxop/stat/a/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/wxop/stat/v;->g(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/f;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/wxop/stat/v;->d:Lcom/tencent/wxop/stat/b/f;

    new-instance v3, Lcom/tencent/wxop/stat/r;

    invoke-direct {v3, v1, v0}, Lcom/tencent/wxop/stat/r;-><init>(Landroid/content/Context;Lcom/tencent/wxop/stat/a/b;)V

    invoke-virtual {v2, v3}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lcom/tencent/wxop/stat/t;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/wxop/stat/v;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    const-string v1, "The Context of StatService.reportSdkSelfException() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/b;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/tencent/wxop/stat/v;->g(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/f;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/wxop/stat/v;->d:Lcom/tencent/wxop/stat/b/f;

    new-instance v2, Lcom/tencent/wxop/stat/p;

    invoke-direct {v2, v0, p1}, Lcom/tencent/wxop/stat/p;-><init>(Landroid/content/Context;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static a()Z
    .locals 2

    sget v0, Lcom/tencent/wxop/stat/v;->a:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/wxop/stat/v;->b:J

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/wxop/stat/t;->c()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    const-string v2, "MTA StatService is disable."

    invoke-virtual {v1, v2}, Lcom/tencent/wxop/stat/b/b;->d(Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    const-string v1, "2.0.3"

    invoke-static {}, Lcom/tencent/wxop/stat/t;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MTA SDK version, current: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,required: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wxop/stat/b/b;->g(Ljava/lang/Object;)V

    :cond_1
    if-nez p0, :cond_2

    const-string v1, "Context or mtaSdkVersion in StatService.startStatService() is null, please check it!"

    sget-object v2, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v2, v1}, Lcom/tencent/wxop/stat/b/b;->d(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/wxop/stat/t;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v2, v1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {v1}, Lcom/tencent/wxop/stat/b/l;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/tencent/wxop/stat/b/l;->b(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MTA SDK version conflicted, current: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". please delete the current SDK and download the latest one. official website: http://mta.qq.com/ or http://mta.oa.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v2, v1}, Lcom/tencent/wxop/stat/b/b;->d(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/wxop/stat/t;->a(Z)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/tencent/wxop/stat/t;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const-string v1, "-"

    invoke-static {v1}, Lcom/tencent/wxop/stat/t;->b(Ljava/lang/String;)V

    :cond_5
    if-eqz p1, :cond_6

    invoke-static {p0, p1}, Lcom/tencent/wxop/stat/t;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    invoke-static {p0}, Lcom/tencent/wxop/stat/v;->g(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/f;

    move-result-object v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/tencent/wxop/stat/v;->d:Lcom/tencent/wxop/stat/b/f;

    new-instance v2, Lcom/tencent/wxop/stat/ab;

    invoke-direct {v2, p0}, Lcom/tencent/wxop/stat/ab;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method static b()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/tencent/wxop/stat/v;->a:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/wxop/stat/v;->b:J

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/tencent/wxop/stat/t;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/wxop/stat/t;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    const-string v1, "commitEvents, maxNumber=-1"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/b;->a(Ljava/lang/Object;)V

    :cond_2
    invoke-static {p0}, Lcom/tencent/wxop/stat/v;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    const-string v1, "The Context of StatService.commitEvents() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/b;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/tencent/wxop/stat/v;->t:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/wxop/stat/x;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wxop/stat/x;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/tencent/wxop/stat/v;->g(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/f;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/wxop/stat/v;->d:Lcom/tencent/wxop/stat/b/f;

    new-instance v2, Lcom/tencent/wxop/stat/y;

    invoke-direct {v2, v0}, Lcom/tencent/wxop/stat/y;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/tencent/wxop/stat/w;)V
    .locals 4

    invoke-static {p0}, Lcom/tencent/wxop/stat/v;->g(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/f;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/wxop/stat/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    const-string v1, "start new session."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/b;->g(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    sget v0, Lcom/tencent/wxop/stat/v;->l:I

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->a()I

    move-result v0

    sput v0, Lcom/tencent/wxop/stat/v;->l:I

    :cond_2
    invoke-static {}, Lcom/tencent/wxop/stat/t;->o()V

    invoke-static {}, Lcom/tencent/wxop/stat/t;->q()V

    new-instance v0, Lcom/tencent/wxop/stat/ae;

    new-instance v1, Lcom/tencent/wxop/stat/a/h;

    sget v2, Lcom/tencent/wxop/stat/v;->l:I

    invoke-static {}, Lcom/tencent/wxop/stat/v;->i()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/tencent/wxop/stat/a/h;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Lcom/tencent/wxop/stat/w;)V

    invoke-direct {v0, v1}, Lcom/tencent/wxop/stat/ae;-><init>(Lcom/tencent/wxop/stat/a/d;)V

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/ae;->a()V

    :cond_3
    return-void
.end method

.method static c()V
    .locals 2

    sget v0, Lcom/tencent/wxop/stat/v;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/wxop/stat/v;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/wxop/stat/v;->b:J

    sget-object v0, Lcom/tencent/wxop/stat/v;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/v;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 0
    invoke-static {}, Lcom/tencent/wxop/stat/t;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4000
    :cond_0
    :goto_0
    return-void

    .line 0
    :cond_1
    sget v0, Lcom/tencent/wxop/stat/t;->n:I

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/tencent/wxop/stat/v;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    const-string v1, "The Context of StatService.testSpeed() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/b;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/tencent/wxop/stat/ai;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/ai;

    move-result-object v0

    .line 4000
    invoke-static {}, Lcom/tencent/wxop/stat/t;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, v0, Lcom/tencent/wxop/stat/ai;->a:Lcom/tencent/wxop/stat/b/f;

    new-instance v2, Lcom/tencent/wxop/stat/al;

    invoke-direct {v2, v0}, Lcom/tencent/wxop/stat/al;-><init>(Lcom/tencent/wxop/stat/ai;)V

    invoke-virtual {v1, v2}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/ai;->d:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic d()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/v;->t:Landroid/content/Context;

    return-object v0
.end method

.method static d(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v2, 0xea60

    invoke-static {}, Lcom/tencent/wxop/stat/t;->k()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    sput-wide v0, Lcom/tencent/wxop/stat/v;->c:J

    const-string v0, "last_period_ts"

    sget-wide v2, Lcom/tencent/wxop/stat/v;->c:J

    invoke-static {p0, v0, v2, v3}, Lcom/tencent/wxop/stat/b/q;->a(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/v;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static e(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    sget-object p0, Lcom/tencent/wxop/stat/v;->t:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic e()Lcom/tencent/wxop/stat/b/b;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/v;->r:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method private static declared-synchronized f(Landroid/content/Context;)V
    .locals 9

    const/4 v0, 0x0

    const-class v2, Lcom/tencent/wxop/stat/v;

    monitor-enter v2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_0
    sget-object v1, Lcom/tencent/wxop/stat/v;->d:Lcom/tencent/wxop/stat/b/f;

    if-nez v1, :cond_0

    sget-object v1, Lcom/tencent/wxop/stat/t;->c:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tencent/wxop/stat/b/q;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    const-string v1, "2.0.3"

    invoke-static {v1}, Lcom/tencent/wxop/stat/b/l;->b(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v1, 0x1

    cmp-long v3, v6, v4

    if-gtz v3, :cond_2

    sget-object v1, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "MTA is disable for current version:"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",wakeup version:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/wxop/stat/b/b;->d(Ljava/lang/Object;)V

    move v1, v0

    :cond_2
    sget-object v3, Lcom/tencent/wxop/stat/t;->d:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/tencent/wxop/stat/b/q;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    sget-object v1, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "MTA is disable for current time:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",wakeup time:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/wxop/stat/b/b;->d(Ljava/lang/Object;)V

    :goto_1
    invoke-static {v0}, Lcom/tencent/wxop/stat/t;->a(Z)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/v;->t:Landroid/content/Context;

    new-instance v1, Lcom/tencent/wxop/stat/b/f;

    invoke-direct {v1}, Lcom/tencent/wxop/stat/b/f;-><init>()V

    sput-object v1, Lcom/tencent/wxop/stat/v;->d:Lcom/tencent/wxop/stat/b/f;

    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->e()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/wxop/stat/v;->k:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/tencent/wxop/stat/t;->i:J

    add-long/2addr v4, v6

    sput-wide v4, Lcom/tencent/wxop/stat/v;->h:J

    sget-object v1, Lcom/tencent/wxop/stat/v;->d:Lcom/tencent/wxop/stat/b/f;

    new-instance v3, Lcom/tencent/wxop/stat/o;

    invoke-direct {v3, v0}, Lcom/tencent/wxop/stat/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic g()J
    .locals 2

    sget-wide v0, Lcom/tencent/wxop/stat/v;->h:J

    return-wide v0
.end method

.method private static g(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/f;
    .locals 3

    sget-object v0, Lcom/tencent/wxop/stat/v;->d:Lcom/tencent/wxop/stat/b/f;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/wxop/stat/v;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/wxop/stat/v;->d:Lcom/tencent/wxop/stat/b/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {p0}, Lcom/tencent/wxop/stat/v;->f(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/wxop/stat/v;->d:Lcom/tencent/wxop/stat/b/f;

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v2, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/b/b;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/wxop/stat/t;->a(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic h()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/v;->g:Ljava/util/Map;

    return-object v0
.end method

.method private static i()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/tencent/wxop/stat/t;->b:Lcom/tencent/wxop/stat/i;

    iget v2, v2, Lcom/tencent/wxop/stat/i;->d:I

    if-eqz v2, :cond_0

    const-string v2, "v"

    sget-object v3, Lcom/tencent/wxop/stat/t;->b:Lcom/tencent/wxop/stat/i;

    iget v3, v3, Lcom/tencent/wxop/stat/i;->d:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    sget-object v2, Lcom/tencent/wxop/stat/t;->b:Lcom/tencent/wxop/stat/i;

    iget v2, v2, Lcom/tencent/wxop/stat/i;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/tencent/wxop/stat/t;->a:Lcom/tencent/wxop/stat/i;

    iget v2, v2, Lcom/tencent/wxop/stat/i;->d:I

    if-eqz v2, :cond_1

    const-string v2, "v"

    sget-object v3, Lcom/tencent/wxop/stat/t;->a:Lcom/tencent/wxop/stat/i;

    iget v3, v3, Lcom/tencent/wxop/stat/i;->d:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    sget-object v2, Lcom/tencent/wxop/stat/t;->a:Lcom/tencent/wxop/stat/i;

    iget v2, v2, Lcom/tencent/wxop/stat/i;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/tencent/wxop/stat/v;->q:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
