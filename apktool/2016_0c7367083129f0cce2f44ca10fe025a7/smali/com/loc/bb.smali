.class final Lcom/loc/bb;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lcom/loc/ba;


# direct methods
.method private constructor <init>(Lcom/loc/ba;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bb;->a:Lcom/loc/ba;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/ba;Ljava/io/OutputStream;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/loc/bb;-><init>(Lcom/loc/ba;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/loc/bb;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/loc/bb;->a:Lcom/loc/ba;

    .line 3000
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/ba;->c:Z

    goto :goto_0
.end method

.method public final flush()V
    .locals 2

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/loc/bb;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/loc/bb;->a:Lcom/loc/ba;

    .line 4000
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/ba;->c:Z

    goto :goto_0
.end method

.method public final write(I)V
    .locals 2

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/loc/bb;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/loc/bb;->a:Lcom/loc/ba;

    .line 1000
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/ba;->c:Z

    goto :goto_0
.end method

.method public final write([BII)V
    .locals 2

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/loc/bb;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/loc/bb;->a:Lcom/loc/ba;

    .line 2000
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/ba;->c:Z

    goto :goto_0
.end method
