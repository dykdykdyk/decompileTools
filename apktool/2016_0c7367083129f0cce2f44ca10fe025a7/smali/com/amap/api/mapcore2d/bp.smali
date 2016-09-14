.class Lcom/amap/api/mapcore2d/bp;
.super Ljava/lang/Object;
.source "TileCoordinate.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public f:Landroid/graphics/PointF;

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>(IIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput v1, p0, Lcom/amap/api/mapcore2d/bp;->a:I

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore2d/bp;->g:I

    .line 99
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bp;->h:Z

    .line 39
    iput p1, p0, Lcom/amap/api/mapcore2d/bp;->b:I

    .line 40
    iput p2, p0, Lcom/amap/api/mapcore2d/bp;->c:I

    .line 41
    iput p3, p0, Lcom/amap/api/mapcore2d/bp;->d:I

    .line 42
    iput p4, p0, Lcom/amap/api/mapcore2d/bp;->e:I

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore2d/bp;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput v1, p0, Lcom/amap/api/mapcore2d/bp;->a:I

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore2d/bp;->g:I

    .line 99
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bp;->h:Z

    .line 46
    iget v0, p1, Lcom/amap/api/mapcore2d/bp;->b:I

    iput v0, p0, Lcom/amap/api/mapcore2d/bp;->b:I

    .line 47
    iget v0, p1, Lcom/amap/api/mapcore2d/bp;->c:I

    iput v0, p0, Lcom/amap/api/mapcore2d/bp;->c:I

    .line 48
    iget v0, p1, Lcom/amap/api/mapcore2d/bp;->d:I

    iput v0, p0, Lcom/amap/api/mapcore2d/bp;->d:I

    .line 49
    iget v0, p1, Lcom/amap/api/mapcore2d/bp;->e:I

    iput v0, p0, Lcom/amap/api/mapcore2d/bp;->e:I

    .line 50
    iget-object v0, p1, Lcom/amap/api/mapcore2d/bp;->f:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bp;->f:Landroid/graphics/PointF;

    .line 51
    iget v0, p1, Lcom/amap/api/mapcore2d/bp;->a:I

    iput v0, p0, Lcom/amap/api/mapcore2d/bp;->a:I

    .line 52
    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/mapcore2d/bp;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/amap/api/mapcore2d/bp;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bp;-><init>(Lcom/amap/api/mapcore2d/bp;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bp;->a()Lcom/amap/api/mapcore2d/bp;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    if-ne p0, p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    instance-of v2, p1, Lcom/amap/api/mapcore2d/bp;

    if-nez v2, :cond_2

    move v0, v1

    .line 65
    goto :goto_0

    .line 68
    :cond_2
    check-cast p1, Lcom/amap/api/mapcore2d/bp;

    .line 69
    iget v2, p0, Lcom/amap/api/mapcore2d/bp;->b:I

    iget v3, p1, Lcom/amap/api/mapcore2d/bp;->b:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/amap/api/mapcore2d/bp;->c:I

    iget v3, p1, Lcom/amap/api/mapcore2d/bp;->c:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/amap/api/mapcore2d/bp;->d:I

    iget v3, p1, Lcom/amap/api/mapcore2d/bp;->d:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/amap/api/mapcore2d/bp;->e:I

    iget v3, p1, Lcom/amap/api/mapcore2d/bp;->e:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/amap/api/mapcore2d/bp;->b:I

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->c:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->d:I

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
