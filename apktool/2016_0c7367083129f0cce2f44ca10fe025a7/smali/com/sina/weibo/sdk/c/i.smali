.class final Lcom/sina/weibo/sdk/c/i;
.super Ljava/lang/Object;
.source "WBAgentHandler.java"


# static fields
.field static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/c/f;",
            ">;"
        }
    .end annotation
.end field

.field static b:I

.field private static c:Lcom/sina/weibo/sdk/c/i;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sina/weibo/sdk/c/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x5

    sput v0, Lcom/sina/weibo/sdk/c/i;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/c/i;->a:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/c/i;->d:Ljava/util/Map;

    .line 43
    const-string v0, "WBAgent"

    const-string v1, "init handler"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/d/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static declared-synchronized a()Lcom/sina/weibo/sdk/c/i;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/sina/weibo/sdk/c/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sina/weibo/sdk/c/i;->c:Lcom/sina/weibo/sdk/c/i;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/sina/weibo/sdk/c/i;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/c/i;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/c/i;->c:Lcom/sina/weibo/sdk/c/i;

    .line 34
    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/c/i;->c:Lcom/sina/weibo/sdk/c/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final declared-synchronized a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/c/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1118
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v1, Lcom/sina/weibo/sdk/c/j;

    invoke-direct {v1, p0, v0}, Lcom/sina/weibo/sdk/c/j;-><init>(Lcom/sina/weibo/sdk/c/i;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sina/weibo/sdk/c/h;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 1119
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/c/f;

    .line 1120
    invoke-static {v0}, Lcom/sina/weibo/sdk/c/b;->a(Lcom/sina/weibo/sdk/c/f;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
