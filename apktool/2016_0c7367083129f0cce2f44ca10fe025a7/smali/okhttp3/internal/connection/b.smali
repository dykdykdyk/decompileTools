.class public final Lokhttp3/internal/connection/b;
.super Ljava/lang/Object;
.source "ConnectionSpecSelector.java"


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/q;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Z

.field d:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/connection/b;->b:I

    .line 46
    iput-object p1, p0, Lokhttp3/internal/connection/b;->a:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method final a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 2

    .prologue
    .line 135
    iget v0, p0, Lokhttp3/internal/connection/b;->b:I

    move v1, v0

    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 136
    iget-object v0, p0, Lokhttp3/internal/connection/b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/q;

    invoke-virtual {v0, p1}, Lokhttp3/q;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x1

    .line 140
    :goto_1
    return v0

    .line 135
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
