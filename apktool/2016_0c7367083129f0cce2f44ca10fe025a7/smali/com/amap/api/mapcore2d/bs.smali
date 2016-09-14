.class Lcom/amap/api/mapcore2d/bs;
.super Lcom/amap/api/mapcore2d/e;
.source "TileServer.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/bz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore2d/e",
        "<",
        "Lcom/amap/api/mapcore2d/bp;",
        "Lcom/amap/api/mapcore2d/bp;",
        ">;",
        "Lcom/amap/api/mapcore2d/bz;"
    }
.end annotation


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/amap/api/mapcore2d/am;

.field private f:Lcom/amap/api/mapcore2d/ay;

.field private g:Lcom/amap/api/mapcore2d/al;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;Lcom/amap/api/mapcore2d/am;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/e;-><init>(Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;)V

    .line 313
    new-instance v0, Lcom/amap/api/mapcore2d/al;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/al;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bs;->g:Lcom/amap/api/mapcore2d/al;

    .line 37
    iput-object p3, p0, Lcom/amap/api/mapcore2d/bs;->e:Lcom/amap/api/mapcore2d/am;

    .line 38
    iput-object p2, p0, Lcom/amap/api/mapcore2d/bs;->d:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/amap/api/mapcore2d/bo;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/bo;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bs;->a:Lcom/amap/api/mapcore2d/bl;

    .line 40
    iget-object v0, p1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/ay$d;->a(Lcom/amap/api/mapcore2d/bz;)V

    .line 41
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bs;->f:Lcom/amap/api/mapcore2d/ay;

    .line 42
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bs;->a()V

    .line 43
    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcom/amap/api/mapcore2d/am;FZ)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;",
            "Lcom/amap/api/mapcore2d/am;",
            "FZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-object v0

    .line 201
    :cond_1
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/am;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p2, Lcom/amap/api/mapcore2d/am;->p:Lcom/amap/api/mapcore2d/bk;

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p2, Lcom/amap/api/mapcore2d/am;->p:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bk;->clear()V

    .line 211
    iget v2, p2, Lcom/amap/api/mapcore2d/am;->c:I

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-gtz v2, :cond_0

    iget v2, p2, Lcom/amap/api/mapcore2d/am;->d:I

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-ltz v2, :cond_0

    .line 215
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 216
    if-lez v3, :cond_0

    .line 224
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 225
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    .line 226
    if-eqz v0, :cond_3

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    iget v5, v0, Lcom/amap/api/mapcore2d/bp;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget v5, v0, Lcom/amap/api/mapcore2d/bp;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget v5, v0, Lcom/amap/api/mapcore2d/bp;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    iget-object v5, p2, Lcom/amap/api/mapcore2d/am;->n:Lcom/amap/api/mapcore2d/az;

    .line 237
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/amap/api/mapcore2d/az;->a(Ljava/lang/String;)I

    move-result v4

    .line 239
    new-instance v5, Lcom/amap/api/mapcore2d/bp;

    iget v6, v0, Lcom/amap/api/mapcore2d/bp;->b:I

    iget v7, v0, Lcom/amap/api/mapcore2d/bp;->c:I

    iget v8, v0, Lcom/amap/api/mapcore2d/bp;->d:I

    iget v9, p2, Lcom/amap/api/mapcore2d/am;->l:I

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/amap/api/mapcore2d/bp;-><init>(IIII)V

    .line 242
    iput v4, v5, Lcom/amap/api/mapcore2d/bp;->g:I

    .line 243
    iget-object v0, v0, Lcom/amap/api/mapcore2d/bp;->f:Landroid/graphics/PointF;

    iput-object v0, v5, Lcom/amap/api/mapcore2d/bp;->f:Landroid/graphics/PointF;

    .line 245
    iget-object v0, p2, Lcom/amap/api/mapcore2d/am;->p:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, v5}, Lcom/amap/api/mapcore2d/bk;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore2d/bs;->a(Lcom/amap/api/mapcore2d/bp;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p4, :cond_3

    .line 251
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->g:Lcom/amap/api/mapcore2d/al;

    invoke-virtual {v0, v5}, Lcom/amap/api/mapcore2d/al;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 252
    iget-boolean v0, p2, Lcom/amap/api/mapcore2d/am;->f:Z

    if-nez v0, :cond_2

    .line 253
    const/4 v0, -0x1

    iput v0, v5, Lcom/amap/api/mapcore2d/bp;->a:I

    .line 255
    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 259
    goto/16 :goto_0
.end method

.method private a(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->a:Lcom/amap/api/mapcore2d/bl;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->a:Lcom/amap/api/mapcore2d/bl;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore2d/bl;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method private a(Lcom/amap/api/mapcore2d/bp;)Z
    .locals 1

    .prologue
    .line 310
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/amap/api/mapcore2d/bp;->g:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->g:Lcom/amap/api/mapcore2d/al;

    if-nez v0, :cond_1

    .line 140
    :cond_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 134
    if-eqz v2, :cond_0

    .line 137
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 138
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bs;->g:Lcom/amap/api/mapcore2d/al;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore2d/al;->a(Lcom/amap/api/mapcore2d/bp;)V

    .line 137
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private j()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 167
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    if-nez v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v1

    .line 174
    if-lez v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->e:Lcom/amap/api/mapcore2d/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/am;->a()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;)",
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

    .line 52
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-object v1

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bs;->a(Ljava/util/List;)V

    .line 74
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->e:Lcom/amap/api/mapcore2d/am;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->j:Lcom/amap/api/mapcore2d/by;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->e:Lcom/amap/api/mapcore2d/am;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->k:Lcom/amap/api/maps2d/model/TileProvider;

    if-eqz v0, :cond_5

    .line 88
    :cond_2
    new-instance v2, Lcom/amap/api/mapcore2d/bt;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bs;->e:Lcom/amap/api/mapcore2d/am;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/am;->k:Lcom/amap/api/maps2d/model/TileProvider;

    invoke-direct {v2, v0, p1, v3}, Lcom/amap/api/mapcore2d/bt;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/amap/api/maps2d/model/TileProvider;)V

    .line 92
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->e:Lcom/amap/api/mapcore2d/am;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore2d/bt;->a(Lcom/amap/api/mapcore2d/am;)V

    .line 94
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bt;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bt;->a(Lcom/amap/api/mapcore2d/am;)V

    .line 101
    :goto_1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bs;->c(Ljava/util/ArrayList;)V

    .line 102
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    if-nez v1, :cond_4

    :cond_3
    move-object v1, v0

    .line 103
    goto :goto_0

    .line 105
    :cond_4
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ay$a;->b()V

    move-object v1, v0

    .line 106
    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    if-nez p1, :cond_1

    .line 127
    :cond_0
    return-void

    .line 115
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 116
    if-eqz v2, :cond_0

    .line 119
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 120
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bs;->g:Lcom/amap/api/mapcore2d/al;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore2d/al;->b(Lcom/amap/api/mapcore2d/bp;)Z

    move-result v0

    .line 121
    if-nez v0, :cond_2

    .line 122
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 123
    add-int/lit8 v0, v1, -0x1

    .line 124
    add-int/lit8 v1, v2, -0x1

    .line 119
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method public a(ZZ)V
    .locals 5

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bs;->j()Z

    move-result v0

    .line 265
    if-nez v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    .line 271
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/au;->b()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    .line 272
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/ay$d;->c()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v4, v4, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    .line 273
    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/ay$d;->d()I

    move-result v4

    .line 269
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amap/api/mapcore2d/au;->a(Lcom/amap/api/mapcore2d/u;III)Ljava/util/ArrayList;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 281
    if-lez v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->e:Lcom/amap/api/mapcore2d/am;

    .line 291
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    .line 292
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/ay$d;->e()F

    move-result v2

    .line 291
    invoke-direct {p0, v0, v1, v2, p2}, Lcom/amap/api/mapcore2d/bs;->a(Ljava/util/ArrayList;Lcom/amap/api/mapcore2d/am;FZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 294
    if-eqz v1, :cond_2

    .line 295
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/amap/api/mapcore2d/bs;->a(Ljava/util/ArrayList;Z)V

    .line 299
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 304
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 306
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    goto :goto_0
.end method

.method protected b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 330
    if-nez p1, :cond_1

    move-object v2, v5

    .line 405
    :cond_0
    :goto_0
    return-object v2

    .line 335
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 336
    if-nez v4, :cond_2

    move-object v2, v5

    .line 337
    goto :goto_0

    .line 345
    :cond_2
    const/4 v3, 0x0

    move-object v2, v5

    :goto_1
    if-ge v3, v4, :cond_0

    .line 346
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    .line 347
    if-eqz v0, :cond_9

    .line 350
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    if-nez v1, :cond_4

    :cond_3
    move-object v2, v5

    .line 352
    goto :goto_0

    .line 354
    :cond_4
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk;->size()I

    .line 363
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->e:Lcom/amap/api/mapcore2d/am;

    iget-boolean v1, v1, Lcom/amap/api/mapcore2d/am;->f:Z

    if-eqz v1, :cond_9

    .line 370
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->e:Lcom/amap/api/mapcore2d/am;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/am;->o:Lcom/amap/api/mapcore2d/s;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/s;->a(Lcom/amap/api/mapcore2d/bp;)I

    move-result v6

    .line 371
    if-ltz v6, :cond_7

    .line 373
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 374
    add-int/lit8 v4, v4, -0x1

    .line 375
    add-int/lit8 v3, v3, -0x1

    .line 379
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->e:Lcom/amap/api/mapcore2d/am;

    iget-object v7, v1, Lcom/amap/api/mapcore2d/am;->p:Lcom/amap/api/mapcore2d/bk;

    .line 380
    if-eqz v7, :cond_9

    .line 384
    monitor-enter v7

    .line 385
    :try_start_0
    invoke-virtual {v7}, Lcom/amap/api/mapcore2d/bk;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/bp;

    .line 386
    if-eqz v1, :cond_5

    .line 389
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/bp;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 390
    iput v6, v1, Lcom/amap/api/mapcore2d/bp;->g:I

    .line 391
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$a;->b()V

    .line 395
    :cond_6
    monitor-exit v7

    move v0, v3

    move v1, v4

    .line 345
    :goto_2
    add-int/lit8 v3, v0, 0x1

    move v4, v1

    goto :goto_1

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 397
    :cond_7
    if-nez v2, :cond_8

    .line 398
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 400
    :goto_3
    new-instance v2, Lcom/amap/api/mapcore2d/bp;

    invoke-direct {v2, v0}, Lcom/amap/api/mapcore2d/bp;-><init>(Lcom/amap/api/mapcore2d/bp;)V

    .line 401
    const/4 v0, -0x1

    iput v0, v2, Lcom/amap/api/mapcore2d/bp;->a:I

    .line 402
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v3

    move-object v2, v1

    move v1, v4

    goto :goto_2

    :cond_8
    move-object v1, v2

    goto :goto_3

    :cond_9
    move v0, v3

    move v1, v4

    goto :goto_2
.end method

.method public b()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/amap/api/mapcore2d/e;->b()V

    .line 28
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->g:Lcom/amap/api/mapcore2d/al;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/al;->clear()V

    .line 29
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->f:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->f:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->f:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/ay$d;->b(Lcom/amap/api/mapcore2d/bz;)V

    .line 33
    :cond_0
    return-void
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x4

    return v0
.end method

.method protected g()I
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, v0, v0}, Lcom/amap/api/mapcore2d/bs;->a(ZZ)V

    .line 159
    return-void
.end method
