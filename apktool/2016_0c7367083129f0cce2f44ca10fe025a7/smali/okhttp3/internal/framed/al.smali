.class final Lokhttp3/internal/framed/al;
.super Ljava/util/zip/Inflater;
.source "NameValueBlockReader.java"


# instance fields
.field final synthetic a:Lokhttp3/internal/framed/aj;


# direct methods
.method constructor <init>(Lokhttp3/internal/framed/aj;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lokhttp3/internal/framed/al;->a:Lokhttp3/internal/framed/aj;

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method


# virtual methods
.method public final inflate([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 68
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lokhttp3/internal/framed/al;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    sget-object v0, Lokhttp3/internal/framed/aq;->a:[B

    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/al;->setDictionary([B)V

    .line 70
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 72
    :cond_0
    return v0
.end method
