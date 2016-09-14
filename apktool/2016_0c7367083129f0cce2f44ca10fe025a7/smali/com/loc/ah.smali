.class public final Lcom/loc/ah;
.super Ljava/lang/Object;
.source "ClassLoaderFactory.java"


# static fields
.field private static final a:Lcom/loc/ah;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/loc/ag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/loc/ah;

    invoke-direct {v0}, Lcom/loc/ah;-><init>()V

    sput-object v0, Lcom/loc/ah;->a:Lcom/loc/ah;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/loc/ah;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/loc/ah;
    .locals 1

    sget-object v0, Lcom/loc/ah;->a:Lcom/loc/ah;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Lcom/loc/eo;)Lcom/loc/ag;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 0
    monitor-enter p0

    .line 1000
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Lcom/loc/eo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/loc/eo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 0
    :goto_0
    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "sdkInfo or context referance is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1000
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 0
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Lcom/loc/eo;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/loc/ah;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ag;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    :try_start_2
    new-instance v1, Lcom/loc/am;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, p2, v4}, Lcom/loc/am;-><init>(Landroid/content/Context;Lcom/loc/eo;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/loc/ah;->b:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/loc/ao;->a(Landroid/content/Context;Lcom/loc/eo;)Lcom/loc/ao;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    :cond_3
    :goto_1
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public final b(Landroid/content/Context;Lcom/loc/eo;)Lcom/loc/ag;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/ah;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/loc/eo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ag;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/loc/ag;->a(Landroid/content/Context;Lcom/loc/eo;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/loc/am;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/loc/am;-><init>(Landroid/content/Context;Lcom/loc/eo;Z)V

    invoke-virtual {v0, p1, p2}, Lcom/loc/ag;->a(Landroid/content/Context;Lcom/loc/eo;)V

    iget-object v1, p0, Lcom/loc/ah;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/loc/eo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/loc/ao;->a(Landroid/content/Context;Lcom/loc/eo;)Lcom/loc/ao;

    goto :goto_0
.end method
