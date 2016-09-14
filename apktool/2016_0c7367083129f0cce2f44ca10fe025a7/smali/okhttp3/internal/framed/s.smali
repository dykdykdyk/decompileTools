.class final Lokhttp3/internal/framed/s;
.super Lokhttp3/internal/b;
.source "FramedConnection.java"


# instance fields
.field final synthetic a:Lokhttp3/internal/framed/ap;

.field final synthetic c:Lokhttp3/internal/framed/p;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/p;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/ap;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lokhttp3/internal/framed/s;->c:Lokhttp3/internal/framed/p;

    iput-object p4, p0, Lokhttp3/internal/framed/s;->a:Lokhttp3/internal/framed/ap;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 735
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/s;->c:Lokhttp3/internal/framed/p;

    iget-object v0, v0, Lokhttp3/internal/framed/p;->c:Lokhttp3/internal/framed/e;

    iget-object v0, v0, Lokhttp3/internal/framed/e;->i:Lokhttp3/internal/framed/d;

    iget-object v1, p0, Lokhttp3/internal/framed/s;->a:Lokhttp3/internal/framed/ap;

    invoke-interface {v0, v1}, Lokhttp3/internal/framed/d;->a(Lokhttp3/internal/framed/ap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
