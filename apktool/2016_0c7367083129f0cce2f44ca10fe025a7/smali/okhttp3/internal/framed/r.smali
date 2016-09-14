.class final Lokhttp3/internal/framed/r;
.super Lokhttp3/internal/b;
.source "FramedConnection.java"


# instance fields
.field final synthetic a:Lokhttp3/internal/framed/p;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/p;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lokhttp3/internal/framed/r;->a:Lokhttp3/internal/framed/p;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lokhttp3/internal/framed/r;->a:Lokhttp3/internal/framed/p;

    iget-object v0, v0, Lokhttp3/internal/framed/p;->c:Lokhttp3/internal/framed/e;

    invoke-static {v0}, Lokhttp3/internal/framed/e;->f(Lokhttp3/internal/framed/e;)Lokhttp3/internal/framed/n;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/framed/r;->a:Lokhttp3/internal/framed/p;

    iget-object v1, v1, Lokhttp3/internal/framed/p;->c:Lokhttp3/internal/framed/e;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/n;->a(Lokhttp3/internal/framed/e;)V

    .line 719
    return-void
.end method
