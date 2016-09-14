.class final Lokhttp3/aq;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lokhttp3/g;


# instance fields
.field final a:Lokhttp3/am;

.field final b:Lokhttp3/internal/b/t;

.field c:Lokhttp3/as;

.field private d:Z


# direct methods
.method protected constructor <init>(Lokhttp3/am;Lokhttp3/as;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lokhttp3/aq;->a:Lokhttp3/am;

    .line 45
    iput-object p2, p0, Lokhttp3/aq;->c:Lokhttp3/as;

    .line 46
    new-instance v0, Lokhttp3/internal/b/t;

    invoke-direct {v0, p1}, Lokhttp3/internal/b/t;-><init>(Lokhttp3/am;)V

    iput-object v0, p0, Lokhttp3/aq;->b:Lokhttp3/internal/b/t;

    .line 47
    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/as;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lokhttp3/aq;->c:Lokhttp3/as;

    return-object v0
.end method

.method public final a(Lokhttp3/i;)V
    .locals 3

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/aq;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 76
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lokhttp3/aq;->d:Z

    .line 77
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    iget-object v0, p0, Lokhttp3/aq;->a:Lokhttp3/am;

    .line 4354
    iget-object v0, v0, Lokhttp3/am;->a:Lokhttp3/v;

    .line 78
    new-instance v1, Lokhttp3/ar;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lokhttp3/ar;-><init>(Lokhttp3/aq;Lokhttp3/i;B)V

    invoke-virtual {v0, v1}, Lokhttp3/v;->a(Lokhttp3/ar;)V

    .line 79
    return-void
.end method

.method public final b()Lokhttp3/ay;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/aq;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 56
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lokhttp3/aq;->d:Z

    .line 57
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    iget-object v0, p0, Lokhttp3/aq;->a:Lokhttp3/am;

    .line 1354
    iget-object v0, v0, Lokhttp3/am;->a:Lokhttp3/v;

    .line 59
    invoke-virtual {v0, p0}, Lokhttp3/v;->a(Lokhttp3/aq;)V

    .line 60
    invoke-virtual {p0}, Lokhttp3/aq;->e()Lokhttp3/ay;

    move-result-object v0

    .line 61
    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lokhttp3/aq;->a:Lokhttp3/am;

    .line 3354
    iget-object v1, v1, Lokhttp3/am;->a:Lokhttp3/v;

    .line 64
    invoke-virtual {v1, p0}, Lokhttp3/v;->b(Lokhttp3/aq;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lokhttp3/aq;->a:Lokhttp3/am;

    .line 2354
    iget-object v1, v1, Lokhttp3/am;->a:Lokhttp3/v;

    .line 64
    invoke-virtual {v1, p0}, Lokhttp3/v;->b(Lokhttp3/aq;)V

    .line 62
    return-object v0
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 82
    iget-object v0, p0, Lokhttp3/aq;->b:Lokhttp3/internal/b/t;

    .line 5082
    iput-boolean v1, v0, Lokhttp3/internal/b/t;->c:Z

    .line 5083
    iget-object v0, v0, Lokhttp3/internal/b/t;->a:Lokhttp3/internal/connection/f;

    .line 5084
    if-eqz v0, :cond_0

    .line 5272
    iget-object v1, v0, Lokhttp3/internal/connection/f;->c:Lokhttp3/o;

    monitor-enter v1

    .line 5273
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lokhttp3/internal/connection/f;->f:Z

    .line 5274
    iget-object v2, v0, Lokhttp3/internal/connection/f;->g:Lokhttp3/internal/b/p;

    .line 5275
    iget-object v0, v0, Lokhttp3/internal/connection/f;->e:Lokhttp3/internal/connection/c;

    .line 5276
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5277
    if-eqz v2, :cond_1

    .line 5278
    invoke-interface {v2}, Lokhttp3/internal/b/p;->a()V

    :cond_0
    :goto_0
    return-void

    .line 5276
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 5279
    :cond_1
    if-eqz v0, :cond_0

    .line 5354
    iget-object v0, v0, Lokhttp3/internal/connection/c;->b:Ljava/net/Socket;

    invoke-static {v0}, Lokhttp3/internal/c;->a(Ljava/net/Socket;)V

    goto :goto_0
.end method

.method final d()Lokhttp3/ad;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lokhttp3/aq;->c:Lokhttp3/as;

    .line 6044
    iget-object v0, v0, Lokhttp3/as;->a:Lokhttp3/ad;

    .line 151
    const-string v1, "/..."

    invoke-virtual {v0, v1}, Lokhttp3/ad;->c(Ljava/lang/String;)Lokhttp3/ad;

    move-result-object v0

    return-object v0
.end method

.method final e()Lokhttp3/ay;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    iget-object v0, p0, Lokhttp3/aq;->a:Lokhttp3/am;

    .line 6371
    iget-object v0, v0, Lokhttp3/am;->e:Ljava/util/List;

    .line 157
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    iget-object v0, p0, Lokhttp3/aq;->b:Lokhttp3/internal/b/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v0, Lokhttp3/internal/b/a;

    iget-object v3, p0, Lokhttp3/aq;->a:Lokhttp3/am;

    .line 7298
    iget-object v3, v3, Lokhttp3/am;->h:Lokhttp3/t;

    .line 159
    invoke-direct {v0, v3}, Lokhttp3/internal/b/a;-><init>(Lokhttp3/t;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v3, Lokhttp3/internal/a/a;

    iget-object v0, p0, Lokhttp3/aq;->a:Lokhttp3/am;

    .line 7306
    iget-object v4, v0, Lokhttp3/am;->i:Lokhttp3/d;

    if-eqz v4, :cond_1

    iget-object v0, v0, Lokhttp3/am;->i:Lokhttp3/d;

    iget-object v0, v0, Lokhttp3/d;->a:Lokhttp3/internal/a/k;

    .line 160
    :goto_0
    invoke-direct {v3, v0}, Lokhttp3/internal/a/a;-><init>(Lokhttp3/internal/a/k;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v0, Lokhttp3/internal/connection/a;

    iget-object v3, p0, Lokhttp3/aq;->a:Lokhttp3/am;

    invoke-direct {v0, v3}, Lokhttp3/internal/connection/a;-><init>(Lokhttp3/am;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lokhttp3/aq;->b:Lokhttp3/internal/b/t;

    .line 8100
    iget-boolean v0, v0, Lokhttp3/internal/b/t;->b:Z

    .line 162
    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lokhttp3/aq;->a:Lokhttp3/am;

    .line 8380
    iget-object v0, v0, Lokhttp3/am;->f:Ljava/util/List;

    .line 163
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    :cond_0
    new-instance v0, Lokhttp3/internal/b/b;

    iget-object v3, p0, Lokhttp3/aq;->b:Lokhttp3/internal/b/t;

    .line 9100
    iget-boolean v3, v3, Lokhttp3/internal/b/t;->b:Z

    .line 166
    invoke-direct {v0, v3}, Lokhttp3/internal/b/b;-><init>(Z)V

    .line 165
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v0, Lokhttp3/internal/b/q;

    const/4 v5, 0x0

    iget-object v6, p0, Lokhttp3/aq;->c:Lokhttp3/as;

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/b/q;-><init>(Ljava/util/List;Lokhttp3/internal/connection/f;Lokhttp3/internal/b/p;Lokhttp3/n;ILokhttp3/as;)V

    .line 170
    iget-object v1, p0, Lokhttp3/aq;->c:Lokhttp3/as;

    invoke-interface {v0, v1}, Lokhttp3/ah;->a(Lokhttp3/as;)Lokhttp3/ay;

    move-result-object v0

    return-object v0

    .line 7306
    :cond_1
    iget-object v0, v0, Lokhttp3/am;->j:Lokhttp3/internal/a/k;

    goto :goto_0
.end method
