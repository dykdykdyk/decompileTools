.class final Lokhttp3/internal/framed/q;
.super Lokhttp3/internal/b;
.source "FramedConnection.java"


# instance fields
.field final synthetic a:Lokhttp3/internal/framed/t;

.field final synthetic c:Lokhttp3/internal/framed/p;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/p;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/t;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lokhttp3/internal/framed/q;->c:Lokhttp3/internal/framed/p;

    iput-object p4, p0, Lokhttp3/internal/framed/q;->a:Lokhttp3/internal/framed/t;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    .prologue
    .line 658
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/q;->c:Lokhttp3/internal/framed/p;

    iget-object v0, v0, Lokhttp3/internal/framed/p;->c:Lokhttp3/internal/framed/e;

    invoke-static {v0}, Lokhttp3/internal/framed/e;->f(Lokhttp3/internal/framed/e;)Lokhttp3/internal/framed/n;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/framed/q;->a:Lokhttp3/internal/framed/t;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/n;->a(Lokhttp3/internal/framed/t;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :goto_0
    return-void

    .line 659
    :catch_0
    move-exception v0

    .line 660
    invoke-static {}, Lokhttp3/internal/d/g;->b()Lokhttp3/internal/d/g;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FramedConnection.Listener failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lokhttp3/internal/framed/q;->c:Lokhttp3/internal/framed/p;

    iget-object v4, v4, Lokhttp3/internal/framed/p;->c:Lokhttp3/internal/framed/e;

    invoke-static {v4}, Lokhttp3/internal/framed/e;->a(Lokhttp3/internal/framed/e;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/internal/d/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 662
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/q;->a:Lokhttp3/internal/framed/t;

    sget-object v1, Lokhttp3/internal/framed/a;->b:Lokhttp3/internal/framed/a;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/t;->a(Lokhttp3/internal/framed/a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 666
    :catch_1
    move-exception v0

    goto :goto_0
.end method
