.class final Lokhttp3/internal/framed/l;
.super Lokhttp3/internal/b;
.source "FramedConnection.java"


# instance fields
.field final synthetic a:I

.field final synthetic c:Lokhttp3/internal/framed/a;

.field final synthetic d:Lokhttp3/internal/framed/e;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/e;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/framed/a;)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lokhttp3/internal/framed/l;->d:Lokhttp3/internal/framed/e;

    iput p4, p0, Lokhttp3/internal/framed/l;->a:I

    iput-object p5, p0, Lokhttp3/internal/framed/l;->c:Lokhttp3/internal/framed/a;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 889
    iget-object v0, p0, Lokhttp3/internal/framed/l;->d:Lokhttp3/internal/framed/e;

    invoke-static {v0}, Lokhttp3/internal/framed/e;->j(Lokhttp3/internal/framed/e;)Lokhttp3/internal/framed/an;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/internal/framed/an;->c()V

    .line 890
    iget-object v1, p0, Lokhttp3/internal/framed/l;->d:Lokhttp3/internal/framed/e;

    monitor-enter v1

    .line 891
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/l;->d:Lokhttp3/internal/framed/e;

    invoke-static {v0}, Lokhttp3/internal/framed/e;->k(Lokhttp3/internal/framed/e;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lokhttp3/internal/framed/l;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 892
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
