.class public final Lokhttp3/internal/connection/a;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Lokhttp3/ag;


# instance fields
.field public final a:Lokhttp3/am;


# direct methods
.method public constructor <init>(Lokhttp3/am;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lokhttp3/internal/connection/a;->a:Lokhttp3/am;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/ah;)Lokhttp3/ay;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    check-cast p1, Lokhttp3/internal/b/q;

    .line 1063
    iget-object v1, p1, Lokhttp3/internal/b/q;->c:Lokhttp3/as;

    .line 2055
    iget-object v2, p1, Lokhttp3/internal/b/q;->a:Lokhttp3/internal/connection/f;

    .line 3048
    iget-object v0, v1, Lokhttp3/as;->b:Ljava/lang/String;

    .line 41
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 42
    :goto_0
    iget-object v3, p0, Lokhttp3/internal/connection/a;->a:Lokhttp3/am;

    invoke-virtual {v2, v3, v0}, Lokhttp3/internal/connection/f;->a(Lokhttp3/am;Z)Lokhttp3/internal/b/p;

    move-result-object v0

    .line 43
    invoke-virtual {v2}, Lokhttp3/internal/connection/f;->b()Lokhttp3/internal/connection/c;

    move-result-object v3

    .line 45
    invoke-virtual {p1, v1, v2, v0, v3}, Lokhttp3/internal/b/q;->a(Lokhttp3/as;Lokhttp3/internal/connection/f;Lokhttp3/internal/b/p;Lokhttp3/n;)Lokhttp3/ay;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
