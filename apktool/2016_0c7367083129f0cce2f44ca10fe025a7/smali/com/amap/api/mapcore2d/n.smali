.class Lcom/amap/api/mapcore2d/n;
.super Ljava/lang/Object;
.source "CircleDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/x;


# instance fields
.field private a:Lcom/amap/api/maps2d/model/LatLng;

.field private b:D

.field private c:F

.field private d:I

.field private e:I

.field private f:F

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Lcom/amap/api/mapcore2d/b;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/n;->a:Lcom/amap/api/maps2d/model/LatLng;

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/n;->b:D

    .line 17
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/mapcore2d/n;->c:F

    .line 18
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/mapcore2d/n;->d:I

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore2d/n;->e:I

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore2d/n;->f:F

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/n;->g:Z

    .line 26
    const-string v1, "CircleDelegateIme"

    .line 27
    iput-object p1, p0, Lcom/amap/api/mapcore2d/n;->i:Lcom/amap/api/mapcore2d/b;

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/n;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/n;->h:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    const-string v2, "CircleDelegateImp"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/amap/api/mapcore2d/n;->b:D

    .line 128
    return-void
.end method

.method public a(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    iput p1, p0, Lcom/amap/api/mapcore2d/n;->f:F

    .line 57
    iget-object v0, p0, Lcom/amap/api/mapcore2d/n;->i:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 58
    return-void
.end method

.method public a(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    iput p1, p0, Lcom/amap/api/mapcore2d/n;->d:I

    .line 148
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide v6, 0x412e848000000000L    # 1000000.0

    .line 93
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/n;->g()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amap/api/mapcore2d/n;->b:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/n;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/n;->i:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->b:Lcom/amap/api/mapcore2d/ay$e;

    .line 97
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/n;->h()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ay$e;->a(F)F

    move-result v0

    .line 98
    new-instance v1, Lcom/amap/api/mapcore2d/u;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/n;->a:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/n;->a:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v1, v2, v3}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    .line 100
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 101
    iget-object v3, p0, Lcom/amap/api/mapcore2d/n;->i:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->s()Lcom/amap/api/mapcore2d/bf;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 102
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 103
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/n;->k()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 108
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/n;->j()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/n;->i()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    iput-object p1, p0, Lcom/amap/api/mapcore2d/n;->a:Lcom/amap/api/maps2d/model/LatLng;

    .line 118
    return-void
.end method

.method public a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/n;->g:Z

    .line 68
    iget-object v0, p0, Lcom/amap/api/mapcore2d/n;->i:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 69
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/amap/api/mapcore2d/ac;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ac;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amap/api/mapcore2d/n;->i:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/b;->a(Ljava/lang/String;)Z

    .line 43
    iget-object v0, p0, Lcom/amap/api/mapcore2d/n;->i:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 44
    return-void
.end method

.method public b(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 137
    iput p1, p0, Lcom/amap/api/mapcore2d/n;->c:F

    .line 138
    return-void
.end method

.method public b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    iput p1, p0, Lcom/amap/api/mapcore2d/n;->e:I

    .line 158
    return-void
.end method

.method public b(Lcom/amap/api/maps2d/model/LatLng;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/n;->b:D

    iget-object v2, p0, Lcom/amap/api/mapcore2d/n;->a:Lcom/amap/api/maps2d/model/LatLng;

    invoke-static {v2, p1}, Lcom/amap/api/maps2d/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)F

    move-result v2

    float-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 173
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amap/api/mapcore2d/n;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 49
    const-string v0, "Circle"

    invoke-static {v0}, Lcom/amap/api/mapcore2d/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/n;->h:Ljava/lang/String;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/n;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    iget v0, p0, Lcom/amap/api/mapcore2d/n;->f:F

    return v0
.end method

.method public e()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/n;->g:Z

    return v0
.end method

.method public f()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public g()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amap/api/mapcore2d/n;->a:Lcom/amap/api/maps2d/model/LatLng;

    return-object v0
.end method

.method public h()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/n;->b:D

    return-wide v0
.end method

.method public i()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    iget v0, p0, Lcom/amap/api/mapcore2d/n;->c:F

    return v0
.end method

.method public j()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 152
    iget v0, p0, Lcom/amap/api/mapcore2d/n;->d:I

    return v0
.end method

.method public k()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    iget v0, p0, Lcom/amap/api/mapcore2d/n;->e:I

    return v0
.end method

.method public l()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/n;->a:Lcom/amap/api/maps2d/model/LatLng;

    .line 168
    return-void
.end method
