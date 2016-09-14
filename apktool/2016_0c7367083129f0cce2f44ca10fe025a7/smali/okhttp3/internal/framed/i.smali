.class final Lokhttp3/internal/framed/i;
.super Lokhttp3/internal/b;
.source "FramedConnection.java"


# instance fields
.field final synthetic a:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lokhttp3/internal/framed/e;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/e;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lokhttp3/internal/framed/i;->d:Lokhttp3/internal/framed/e;

    iput p4, p0, Lokhttp3/internal/framed/i;->a:I

    iput-object p5, p0, Lokhttp3/internal/framed/i;->c:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 828
    iget-object v0, p0, Lokhttp3/internal/framed/i;->d:Lokhttp3/internal/framed/e;

    invoke-static {v0}, Lokhttp3/internal/framed/e;->j(Lokhttp3/internal/framed/e;)Lokhttp3/internal/framed/an;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/internal/framed/an;->a()Z

    .line 831
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/i;->d:Lokhttp3/internal/framed/e;

    iget-object v0, v0, Lokhttp3/internal/framed/e;->i:Lokhttp3/internal/framed/d;

    iget v1, p0, Lokhttp3/internal/framed/i;->a:I

    sget-object v2, Lokhttp3/internal/framed/a;->l:Lokhttp3/internal/framed/a;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/framed/d;->a(ILokhttp3/internal/framed/a;)V

    .line 832
    iget-object v1, p0, Lokhttp3/internal/framed/i;->d:Lokhttp3/internal/framed/e;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/i;->d:Lokhttp3/internal/framed/e;

    invoke-static {v0}, Lokhttp3/internal/framed/e;->k(Lokhttp3/internal/framed/e;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lokhttp3/internal/framed/i;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 834
    monitor-exit v1

    .line 838
    :goto_0
    return-void

    .line 834
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 838
    :catch_0
    move-exception v0

    goto :goto_0
.end method
