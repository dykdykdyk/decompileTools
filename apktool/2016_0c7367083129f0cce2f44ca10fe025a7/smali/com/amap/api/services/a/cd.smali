.class public Lcom/amap/api/services/a/cd;
.super Ljava/lang/Object;
.source "ClassLoaderFactory.java"


# static fields
.field private static final a:Lcom/amap/api/services/a/cd;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/api/services/a/cc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/amap/api/services/a/cd;

    invoke-direct {v0}, Lcom/amap/api/services/a/cd;-><init>()V

    sput-object v0, Lcom/amap/api/services/a/cd;->a:Lcom/amap/api/services/a/cd;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/a/cd;->b:Ljava/util/Map;

    .line 18
    return-void
.end method

.method public static a()Lcom/amap/api/services/a/cd;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/amap/api/services/a/cd;->a:Lcom/amap/api/services/a/cd;

    return-object v0
.end method

.method private a(Lcom/amap/api/services/a/ba;)Z
    .locals 1

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/amap/api/services/a/ba;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Lcom/amap/api/services/a/ba;)Lcom/amap/api/services/a/cc;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/amap/api/services/a/cd;->a(Lcom/amap/api/services/a/ba;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "sdkInfo or context referance is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 29
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v2

    .line 30
    iget-object v0, p0, Lcom/amap/api/services/a/cd;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/cc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    if-nez v0, :cond_2

    .line 33
    :try_start_2
    new-instance v1, Lcom/amap/api/services/a/cg;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, p2, v4}, Lcom/amap/api/services/a/cg;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/ba;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/services/a/cd;->b:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {p1, p2}, Lcom/amap/api/services/a/ch;->a(Landroid/content/Context;Lcom/amap/api/services/a/ba;)Lcom/amap/api/services/a/ch;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    .line 41
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Lcom/amap/api/services/a/ba;)Lcom/amap/api/services/a/cc;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amap/api/services/a/cd;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/cc;

    .line 48
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1, p2}, Lcom/amap/api/services/a/cc;->a(Landroid/content/Context;Lcom/amap/api/services/a/ba;)V

    .line 56
    :goto_0
    return-object v0

    .line 51
    :cond_0
    new-instance v0, Lcom/amap/api/services/a/cg;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/amap/api/services/a/cg;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/ba;Z)V

    .line 52
    invoke-virtual {v0, p1, p2}, Lcom/amap/api/services/a/cc;->a(Landroid/content/Context;Lcom/amap/api/services/a/ba;)V

    .line 53
    iget-object v1, p0, Lcom/amap/api/services/a/cd;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {p1, p2}, Lcom/amap/api/services/a/ch;->a(Landroid/content/Context;Lcom/amap/api/services/a/ba;)Lcom/amap/api/services/a/ch;

    goto :goto_0
.end method
