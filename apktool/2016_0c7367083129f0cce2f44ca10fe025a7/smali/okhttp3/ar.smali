.class final Lokhttp3/ar;
.super Lokhttp3/internal/b;
.source "RealCall.java"


# instance fields
.field final synthetic a:Lokhttp3/aq;

.field private final c:Lokhttp3/i;


# direct methods
.method private constructor <init>(Lokhttp3/aq;Lokhttp3/i;)V
    .locals 4

    .prologue
    .line 100
    iput-object p1, p0, Lokhttp3/ar;->a:Lokhttp3/aq;

    .line 101
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lokhttp3/aq;->d()Lokhttp3/ad;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ad;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iput-object p2, p0, Lokhttp3/ar;->c:Lokhttp3/i;

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/aq;Lokhttp3/i;B)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lokhttp3/ar;-><init>(Lokhttp3/aq;Lokhttp3/i;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lokhttp3/ar;->a:Lokhttp3/aq;

    iget-object v0, v0, Lokhttp3/aq;->c:Lokhttp3/as;

    .line 1044
    iget-object v0, v0, Lokhttp3/as;->a:Lokhttp3/ad;

    .line 1481
    iget-object v0, v0, Lokhttp3/ad;->b:Ljava/lang/String;

    .line 106
    return-object v0
.end method

.method protected final b()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 118
    const/4 v2, 0x0

    .line 120
    :try_start_0
    iget-object v0, p0, Lokhttp3/ar;->a:Lokhttp3/aq;

    .line 2033
    invoke-virtual {v0}, Lokhttp3/aq;->e()Lokhttp3/ay;

    move-result-object v0

    .line 121
    iget-object v3, p0, Lokhttp3/ar;->a:Lokhttp3/aq;

    .line 3033
    iget-object v3, v3, Lokhttp3/aq;->b:Lokhttp3/internal/b/t;

    .line 3088
    iget-boolean v2, v3, Lokhttp3/internal/b/t;->c:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    if-eqz v2, :cond_0

    .line 123
    :try_start_1
    iget-object v0, p0, Lokhttp3/ar;->c:Lokhttp3/i;

    iget-object v2, p0, Lokhttp3/ar;->a:Lokhttp3/aq;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lokhttp3/i;->onFailure(Lokhttp3/g;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :goto_0
    iget-object v0, p0, Lokhttp3/ar;->a:Lokhttp3/aq;

    .line 4033
    iget-object v0, v0, Lokhttp3/aq;->a:Lokhttp3/am;

    .line 4354
    iget-object v0, v0, Lokhttp3/am;->a:Lokhttp3/v;

    .line 136
    invoke-virtual {v0, p0}, Lokhttp3/v;->b(Lokhttp3/ar;)V

    .line 137
    :goto_1
    return-void

    .line 126
    :cond_0
    :try_start_2
    iget-object v2, p0, Lokhttp3/ar;->c:Lokhttp3/i;

    iget-object v3, p0, Lokhttp3/ar;->a:Lokhttp3/aq;

    invoke-interface {v2, v3, v0}, Lokhttp3/i;->onResponse(Lokhttp3/g;Lokhttp3/ay;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    :goto_2
    if-eqz v1, :cond_2

    .line 131
    :try_start_3
    invoke-static {}, Lokhttp3/internal/d/g;->b()Lokhttp3/internal/d/g;

    move-result-object v2

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "Callback failure for "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lokhttp3/ar;->a:Lokhttp3/aq;

    .line 5146
    iget-object v1, v5, Lokhttp3/aq;->b:Lokhttp3/internal/b/t;

    .line 6088
    iget-boolean v1, v1, Lokhttp3/internal/b/t;->c:Z

    .line 5146
    if-eqz v1, :cond_1

    const-string v1, "canceled call"

    .line 5147
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " to "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lokhttp3/aq;->d()Lokhttp3/ad;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v0}, Lokhttp3/internal/d/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    :goto_4
    iget-object v0, p0, Lokhttp3/ar;->a:Lokhttp3/aq;

    .line 7033
    iget-object v0, v0, Lokhttp3/aq;->a:Lokhttp3/am;

    .line 7354
    iget-object v0, v0, Lokhttp3/am;->a:Lokhttp3/v;

    .line 136
    invoke-virtual {v0, p0}, Lokhttp3/v;->b(Lokhttp3/ar;)V

    goto :goto_1

    .line 5146
    :cond_1
    :try_start_4
    const-string v1, "call"

    goto :goto_3

    .line 133
    :cond_2
    iget-object v1, p0, Lokhttp3/ar;->c:Lokhttp3/i;

    iget-object v2, p0, Lokhttp3/ar;->a:Lokhttp3/aq;

    invoke-interface {v1, v2, v0}, Lokhttp3/i;->onFailure(Lokhttp3/g;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 136
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokhttp3/ar;->a:Lokhttp3/aq;

    .line 8033
    iget-object v1, v1, Lokhttp3/aq;->a:Lokhttp3/am;

    .line 8354
    iget-object v1, v1, Lokhttp3/am;->a:Lokhttp3/v;

    .line 136
    invoke-virtual {v1, p0}, Lokhttp3/v;->b(Lokhttp3/ar;)V

    throw v0

    .line 128
    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_2
.end method
