.class final Lokhttp3/internal/framed/o;
.super Lokhttp3/internal/framed/n;
.source "FramedConnection.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 899
    invoke-direct {p0}, Lokhttp3/internal/framed/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/internal/framed/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 901
    sget-object v0, Lokhttp3/internal/framed/a;->k:Lokhttp3/internal/framed/a;

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/t;->a(Lokhttp3/internal/framed/a;)V

    .line 902
    return-void
.end method
