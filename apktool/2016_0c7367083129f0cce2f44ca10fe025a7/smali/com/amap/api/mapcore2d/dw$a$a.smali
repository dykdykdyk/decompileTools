.class Lcom/amap/api/mapcore2d/dw$a$a;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/dw$a;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/dw$a;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/amap/api/mapcore2d/dw$a$a;->a:Lcom/amap/api/mapcore2d/dw$a;

    .line 894
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 895
    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/dw$a;Ljava/io/OutputStream;Lcom/amap/api/mapcore2d/dw$1;)V
    .locals 0

    .prologue
    .line 892
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/dw$a$a;-><init>(Lcom/amap/api/mapcore2d/dw$a;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 918
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :goto_0
    return-void

    .line 920
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw$a$a;->a:Lcom/amap/api/mapcore2d/dw$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/dw$a;->a(Lcom/amap/api/mapcore2d/dw$a;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 927
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :goto_0
    return-void

    .line 929
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw$a$a;->a:Lcom/amap/api/mapcore2d/dw$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/dw$a;->a(Lcom/amap/api/mapcore2d/dw$a;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 900
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    :goto_0
    return-void

    .line 902
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw$a$a;->a:Lcom/amap/api/mapcore2d/dw$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/dw$a;->a(Lcom/amap/api/mapcore2d/dw$a;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2

    .prologue
    .line 909
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    :goto_0
    return-void

    .line 911
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw$a$a;->a:Lcom/amap/api/mapcore2d/dw$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/dw$a;->a(Lcom/amap/api/mapcore2d/dw$a;Z)Z

    goto :goto_0
.end method
