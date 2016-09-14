.class Lcom/amap/api/mapcore2d/bt;
.super Lcom/amap/api/mapcore2d/bh;
.source "TileServerHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore2d/bh",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/amap/api/mapcore2d/bp;",
        ">;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/amap/api/mapcore2d/bp;",
        ">;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private f:Lcom/amap/api/mapcore2d/am;

.field private g:Lcom/amap/api/maps2d/model/TileProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/amap/api/maps2d/model/TileProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;",
            "Lcom/amap/api/maps2d/model/TileProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore2d/bh;-><init>(Ljava/lang/Object;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    .line 43
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bt;->b:Landroid/content/Context;

    .line 44
    iput-object p3, p0, Lcom/amap/api/mapcore2d/bt;->g:Lcom/amap/api/maps2d/model/TileProvider;

    .line 45
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ct;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/bt;->a(Ljava/net/Proxy;)V

    .line 46
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/bt;->a(I)V

    .line 47
    const v0, 0xc350

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/bt;->b(I)V

    .line 48
    return-void
.end method

.method private a(Lcom/amap/api/mapcore2d/bp;I)V
    .locals 6

    .prologue
    .line 154
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->p:Lcom/amap/api/mapcore2d/bk;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    iget-object v2, v0, Lcom/amap/api/mapcore2d/am;->p:Lcom/amap/api/mapcore2d/bk;

    .line 163
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    monitor-enter v3

    .line 165
    :try_start_0
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v4

    .line 167
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    .line 168
    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bk;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    .line 169
    if-eqz v0, :cond_3

    .line 172
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bp;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 173
    iput p2, v0, Lcom/amap/api/mapcore2d/bp;->g:I

    .line 177
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 167
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private a(Landroid/graphics/Bitmap;)[B
    .locals 4

    .prologue
    .line 141
    const-string v1, "Bitmap2Bytes"

    .line 143
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 144
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 146
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v0

    const-string v2, "TileServerHandler"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a([BLcom/amap/api/mapcore2d/bp;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 106
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v6

    .line 137
    :cond_1
    :goto_0
    return v0

    .line 109
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    iget v0, p2, Lcom/amap/api/mapcore2d/bp;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v0, p2, Lcom/amap/api/mapcore2d/bp;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v0, p2, Lcom/amap/api/mapcore2d/bp;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->n:Lcom/amap/api/mapcore2d/az;

    if-nez v0, :cond_4

    :cond_3
    move v0, v6

    .line 117
    goto :goto_0

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->n:Lcom/amap/api/mapcore2d/az;

    const/4 v3, 0x0

    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v4, v1

    .line 119
    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/az;->a([B[BZLjava/util/List;Ljava/lang/String;)I

    move-result v0

    .line 121
    if-gez v0, :cond_5

    move v0, v6

    .line 122
    goto :goto_0

    .line 124
    :cond_5
    invoke-direct {p0, p2, v0}, Lcom/amap/api/mapcore2d/bt;->a(Lcom/amap/api/mapcore2d/bp;I)V

    .line 125
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    iget-boolean v1, v1, Lcom/amap/api/mapcore2d/am;->f:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 129
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/am;->n:Lcom/amap/api/mapcore2d/az;

    .line 130
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/az;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 129
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore2d/bt;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/am;->o:Lcom/amap/api/mapcore2d/s;

    if-eqz v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/am;->o:Lcom/amap/api/mapcore2d/s;

    iget v3, p2, Lcom/amap/api/mapcore2d/bp;->b:I

    iget v4, p2, Lcom/amap/api/mapcore2d/bp;->c:I

    iget v5, p2, Lcom/amap/api/mapcore2d/bp;->d:I

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/amap/api/mapcore2d/s;->a([BIII)Z

    goto :goto_0
.end method

.method protected synthetic a([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bt;->b([B)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/amap/api/mapcore2d/am;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    .line 52
    return-void
.end method

.method protected b([B)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 101
    :cond_0
    return-object v1

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 84
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    .line 86
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore2d/bt;->a([BLcom/amap/api/mapcore2d/bp;)I

    move-result v4

    .line 87
    if-gez v4, :cond_4

    .line 88
    if-nez v1, :cond_2

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    :cond_2
    new-instance v4, Lcom/amap/api/mapcore2d/bp;

    invoke-direct {v4, v0}, Lcom/amap/api/mapcore2d/bp;-><init>(Lcom/amap/api/mapcore2d/bp;)V

    .line 92
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    iget-boolean v0, v0, Lcom/amap/api/mapcore2d/am;->h:Z

    if-eqz v0, :cond_3

    iget v0, v4, Lcom/amap/api/mapcore2d/bp;->d:I

    const/16 v5, 0x9

    if-le v0, v5, :cond_3

    iget v0, v4, Lcom/amap/api/mapcore2d/bp;->b:I

    iget v5, v4, Lcom/amap/api/mapcore2d/bp;->c:I

    iget v6, v4, Lcom/amap/api/mapcore2d/bp;->d:I

    .line 94
    invoke-static {v0, v5, v6}, Lcom/amap/api/mapcore2d/cj;->a(III)Z

    move-result v0

    if-nez v0, :cond_3

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/amap/api/mapcore2d/bp;->h:Z

    .line 98
    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method protected b()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 55
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->g:Lcom/amap/api/maps2d/model/TileProvider;

    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bt;->g:Lcom/amap/api/maps2d/model/TileProvider;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget v2, v0, Lcom/amap/api/mapcore2d/bp;->b:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget v3, v0, Lcom/amap/api/mapcore2d/bp;->c:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget v0, v0, Lcom/amap/api/mapcore2d/bp;->d:I

    .line 56
    invoke-interface {v1, v2, v3, v0}, Lcom/amap/api/maps2d/model/TileProvider;->getTile(III)Lcom/amap/api/maps2d/model/Tile;

    move-result-object v0

    .line 58
    iget-object v0, v0, Lcom/amap/api/maps2d/model/Tile;->data:[B

    .line 61
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/amap/api/mapcore2d/bh;->b()[B

    move-result-object v0

    goto :goto_0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bt;->d()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    .line 67
    new-instance v3, Lcom/amap/api/mapcore2d/bp;

    invoke-direct {v3, v0}, Lcom/amap/api/mapcore2d/bp;-><init>(Lcom/amap/api/mapcore2d/bp;)V

    .line 68
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_0
    return-object v1
.end method

.method public e()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    const-string v1, "User-Agent"

    const-string v2, "AMAP_SDK_Android_2DMap_2.9.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "platinfo"

    const-string v2, "platform=Android&sdkversion=%s&product=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "2.9.0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "2dmap"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "X-INFO"

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bt;->b:Landroid/content/Context;

    .line 195
    invoke-static {v2}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "key"

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bt;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/cm;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v1, "logversion"

    const-string v2, "2.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 209
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget-boolean v0, v0, Lcom/amap/api/mapcore2d/bp;->h:Z

    if-eqz v0, :cond_0

    .line 210
    invoke-static {}, Lcom/amap/api/mapcore2d/aw;->a()Lcom/amap/api/mapcore2d/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/aw;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 211
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget v0, v0, Lcom/amap/api/mapcore2d/bp;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget v0, v0, Lcom/amap/api/mapcore2d/bp;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 212
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget v0, v0, Lcom/amap/api/mapcore2d/bp;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    .line 210
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    .line 214
    :cond_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget v0, v0, Lcom/amap/api/mapcore2d/bp;->d:I

    int-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v1, v0

    .line 215
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget v0, v0, Lcom/amap/api/mapcore2d/bp;->b:I

    .line 216
    if-lt v0, v1, :cond_1

    .line 217
    sub-int/2addr v0, v1

    move v1, v0

    .line 221
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    iget-object v2, v0, Lcom/amap/api/mapcore2d/am;->j:Lcom/amap/api/mapcore2d/by;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget v3, v0, Lcom/amap/api/mapcore2d/bp;->c:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 222
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget v0, v0, Lcom/amap/api/mapcore2d/bp;->d:I

    .line 221
    invoke-virtual {v2, v1, v3, v0}, Lcom/amap/api/mapcore2d/by;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 218
    :cond_1
    if-gez v0, :cond_2

    .line 219
    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_1
.end method
