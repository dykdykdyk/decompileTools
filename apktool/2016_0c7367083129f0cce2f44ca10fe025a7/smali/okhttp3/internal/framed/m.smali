.class public final Lokhttp3/internal/framed/m;
.super Ljava/lang/Object;
.source "FramedConnection.java"


# instance fields
.field public a:Ljava/net/Socket;

.field public b:Ljava/lang/String;

.field public c:Lokio/BufferedSource;

.field public d:Lokio/BufferedSink;

.field public e:Lokhttp3/internal/framed/n;

.field public f:Lokhttp3/ap;

.field g:Lokhttp3/internal/framed/an;

.field h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    sget-object v0, Lokhttp3/internal/framed/n;->m:Lokhttp3/internal/framed/n;

    iput-object v0, p0, Lokhttp3/internal/framed/m;->e:Lokhttp3/internal/framed/n;

    .line 524
    sget-object v0, Lokhttp3/ap;->c:Lokhttp3/ap;

    iput-object v0, p0, Lokhttp3/internal/framed/m;->f:Lokhttp3/ap;

    .line 525
    sget-object v0, Lokhttp3/internal/framed/an;->a:Lokhttp3/internal/framed/an;

    iput-object v0, p0, Lokhttp3/internal/framed/m;->g:Lokhttp3/internal/framed/an;

    .line 533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/framed/m;->h:Z

    .line 534
    return-void
.end method
