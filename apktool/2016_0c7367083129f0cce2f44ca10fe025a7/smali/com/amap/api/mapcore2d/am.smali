.class Lcom/amap/api/mapcore2d/am;
.super Lcom/amap/api/mapcore2d/an;
.source "LayerPropertys.java"


# instance fields
.field a:Lcom/amap/api/mapcore2d/au;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:J

.field public j:Lcom/amap/api/mapcore2d/by;

.field k:Lcom/amap/api/maps2d/model/TileProvider;

.field public l:I

.field public m:Ljava/lang/String;

.field n:Lcom/amap/api/mapcore2d/az;

.field o:Lcom/amap/api/mapcore2d/s;

.field p:Lcom/amap/api/mapcore2d/bk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/mapcore2d/bk",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/String;

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/au;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/an;-><init>()V

    .line 35
    const-string v0, "LayerPropertys"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/am;->r:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/am;->b:Ljava/lang/String;

    .line 45
    const/16 v0, 0x12

    iput v0, p0, Lcom/amap/api/mapcore2d/am;->c:I

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/mapcore2d/am;->d:I

    .line 61
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/am;->e:Z

    .line 66
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/am;->s:Z

    .line 71
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/am;->f:Z

    .line 77
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/am;->g:Z

    .line 79
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/am;->h:Z

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/am;->i:J

    .line 90
    iput-object v2, p0, Lcom/amap/api/mapcore2d/am;->j:Lcom/amap/api/mapcore2d/by;

    .line 92
    iput-object v2, p0, Lcom/amap/api/mapcore2d/am;->k:Lcom/amap/api/maps2d/model/TileProvider;

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore2d/am;->l:I

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/am;->m:Ljava/lang/String;

    .line 107
    iput-object v2, p0, Lcom/amap/api/mapcore2d/am;->n:Lcom/amap/api/mapcore2d/az;

    .line 112
    iput-object v2, p0, Lcom/amap/api/mapcore2d/am;->o:Lcom/amap/api/mapcore2d/s;

    .line 117
    iput-object v2, p0, Lcom/amap/api/mapcore2d/am;->p:Lcom/amap/api/mapcore2d/bk;

    .line 120
    iput-object p1, p0, Lcom/amap/api/mapcore2d/am;->a:Lcom/amap/api/mapcore2d/au;

    .line 122
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/am;->p:Lcom/amap/api/mapcore2d/bk;

    if-nez v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/am;->p:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    .line 173
    iget v2, v0, Lcom/amap/api/mapcore2d/bp;->g:I

    if-gez v2, :cond_3

    .line 174
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/am;->e:Z

    if-nez v0, :cond_2

    goto :goto_1

    .line 180
    :cond_3
    iget-object v2, p0, Lcom/amap/api/mapcore2d/am;->n:Lcom/amap/api/mapcore2d/az;

    iget v3, v0, Lcom/amap/api/mapcore2d/bp;->g:I

    .line 181
    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/az;->a(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 185
    iget-object v3, p0, Lcom/amap/api/mapcore2d/am;->a:Lcom/amap/api/mapcore2d/au;

    iget v4, v0, Lcom/amap/api/mapcore2d/bp;->b:I

    iget v0, v0, Lcom/amap/api/mapcore2d/bp;->c:I

    invoke-virtual {v3, v4, v0}, Lcom/amap/api/mapcore2d/au;->a(II)Landroid/graphics/PointF;

    move-result-object v0

    .line 186
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 187
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/amap/api/mapcore2d/am;->a:Lcom/amap/api/mapcore2d/au;

    iget v4, v4, Lcom/amap/api/mapcore2d/au;->a:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 188
    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/amap/api/mapcore2d/am;->a:Lcom/amap/api/mapcore2d/au;

    iget v5, v5, Lcom/amap/api/mapcore2d/au;->a:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 189
    new-instance v5, Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v6, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 190
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 195
    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/am;->r:Ljava/lang/String;

    const-string v2, "drawLayer"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/am;->s:Z

    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bs;->d()V

    .line 135
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/am;->n:Lcom/amap/api/mapcore2d/az;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az;->c()V

    .line 132
    iget-object v0, p0, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bs;->c()V

    goto :goto_0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/am;->s:Z

    return v0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bs;->e()V

    .line 203
    iget-object v0, p0, Lcom/amap/api/mapcore2d/am;->o:Lcom/amap/api/mapcore2d/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/s;->a(Lcom/amap/api/mapcore2d/az;)V

    .line 204
    iget-object v0, p0, Lcom/amap/api/mapcore2d/am;->n:Lcom/amap/api/mapcore2d/az;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az;->c()V

    .line 205
    iget-object v0, p0, Lcom/amap/api/mapcore2d/am;->p:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->clear()V

    .line 207
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 142
    if-ne p0, p1, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    .line 145
    :cond_0
    instance-of v0, p1, Lcom/amap/api/mapcore2d/am;

    if-nez v0, :cond_1

    .line 146
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :cond_1
    check-cast p1, Lcom/amap/api/mapcore2d/am;

    .line 150
    iget-object v0, p0, Lcom/amap/api/mapcore2d/am;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/mapcore2d/am;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/amap/api/mapcore2d/am;->l:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/amap/api/mapcore2d/am;->b:Ljava/lang/String;

    return-object v0
.end method
