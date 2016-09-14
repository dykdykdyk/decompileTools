.class public final Lcom/loc/bi;
.super Ljava/lang/Object;
.source "BaseNetManager.java"


# static fields
.field private static a:Lcom/loc/bi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/loc/bi;
    .locals 1

    sget-object v0, Lcom/loc/bi;->a:Lcom/loc/bi;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/bi;

    invoke-direct {v0}, Lcom/loc/bi;-><init>()V

    sput-object v0, Lcom/loc/bi;->a:Lcom/loc/bi;

    :cond_0
    sget-object v0, Lcom/loc/bi;->a:Lcom/loc/bi;

    return-object v0
.end method

.method private static a(Lcom/loc/bq;Z)Lcom/loc/br;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/h;
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Lcom/loc/h;

    const-string v1, "requeust is null"

    invoke-direct {v0, v1}, Lcom/loc/h;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/loc/h; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 0
    :catch_0
    move-exception v0

    throw v0

    .line 1000
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/loc/bq;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p0}, Lcom/loc/bq;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/loc/h;

    const-string v1, "request url is empty"

    invoke-direct {v0, v1}, Lcom/loc/h;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/loc/h; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 0
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/loc/h;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/loc/bq;->e:Ljava/net/Proxy;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lcom/loc/bn;

    iget v1, p0, Lcom/loc/bq;->c:I

    iget v3, p0, Lcom/loc/bq;->d:I

    invoke-direct {v2, v1, v3, v0, p1}, Lcom/loc/bn;-><init>(IILjava/net/Proxy;Z)V

    .line 2000
    invoke-virtual {p0}, Lcom/loc/bq;->e()[B

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v0, v0

    if-nez v0, :cond_7

    :cond_3
    invoke-virtual {p0}, Lcom/loc/bq;->c()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 0
    :goto_1
    invoke-virtual {p0}, Lcom/loc/bq;->b()Ljava/util/Map;

    move-result-object v3

    .line 3000
    invoke-virtual {p0}, Lcom/loc/bq;->e()[B

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v4, v0

    if-nez v4, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/loc/bq;->a()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/bn;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4}, Lcom/loc/eq;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 0
    :cond_5
    invoke-virtual {v2, v1, v3, v0}, Lcom/loc/bn;->a(Ljava/lang/String;Ljava/util/Map;[B)Lcom/loc/br;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/loc/bq;->e:Ljava/net/Proxy;

    goto :goto_0

    .line 2000
    :cond_7
    invoke-virtual {p0}, Lcom/loc/bq;->a()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/loc/bq;->c()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_8
    invoke-static {v0}, Lcom/loc/bn;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/loc/bq;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lcom/loc/h; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v1, v0

    goto :goto_1
.end method

.method public static a(Lcom/loc/bq;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/h;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/loc/bi;->a(Lcom/loc/bq;Z)Lcom/loc/br;
    :try_end_0
    .catch Lcom/loc/h; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/loc/br;->a:[B

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/loc/h;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/loc/bq;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/h;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/loc/bi;->a(Lcom/loc/bq;Z)Lcom/loc/br;
    :try_end_0
    .catch Lcom/loc/h; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/loc/br;->a:[B

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "BaseNetManager"

    const-string v2, "makeSyncPostRequest"

    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/loc/h;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/loc/bq;)Lcom/loc/br;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/h;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/loc/bi;->a(Lcom/loc/bq;Z)Lcom/loc/br;
    :try_end_0
    .catch Lcom/loc/h; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "BaseNetManager"

    const-string v2, "makeSyncPostRequest"

    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/loc/h;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
