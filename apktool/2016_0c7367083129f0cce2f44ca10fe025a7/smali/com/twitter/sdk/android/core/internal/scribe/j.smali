.class final Lcom/twitter/sdk/android/core/internal/scribe/j;
.super Ljava/lang/Object;
.source "ScribeFilesSender.java"

# interfaces
.implements Lio/fabric/sdk/android/services/b/af;


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Ljava/io/ByteArrayOutputStream;

.field final synthetic c:Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;[ZLjava/io/ByteArrayOutputStream;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/j;->c:Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/j;->a:[Z

    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/scribe/j;->b:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 119
    new-array v0, p2, [B

    .line 120
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 122
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/j;->a:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/j;->b:Ljava/io/ByteArrayOutputStream;

    invoke-static {}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->a()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/j;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 129
    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/j;->a:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v3

    goto :goto_0
.end method
