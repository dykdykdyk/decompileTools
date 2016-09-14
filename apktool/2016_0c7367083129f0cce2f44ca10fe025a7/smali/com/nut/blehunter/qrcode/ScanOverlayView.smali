.class public Lcom/nut/blehunter/qrcode/ScanOverlayView;
.super Landroid/view/View;
.source "ScanOverlayView.java"


# instance fields
.field a:I

.field b:Z

.field private c:Lcom/nut/blehunter/qrcode/a/f;

.field private final d:Landroid/graphics/Paint;

.field private final e:I

.field private final f:I

.field private final g:Landroid/graphics/Bitmap;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->a:I

    .line 35
    iput v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->h:I

    .line 37
    iput v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->i:I

    .line 39
    iput-boolean v1, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->b:Z

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->d:Landroid/graphics/Paint;

    .line 46
    invoke-virtual {p0}, Lcom/nut/blehunter/qrcode/ScanOverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    const v1, 0x7f0a007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->e:I

    .line 48
    const v1, 0x7f0a005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->f:I

    .line 49
    const v1, 0x7f020245

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->g:Landroid/graphics/Bitmap;

    .line 50
    return-void
.end method


# virtual methods
.method public getMaxLineHeight()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->i:I

    return v0
.end method

.method public getMinLineHeight()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->h:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->c:Lcom/nut/blehunter/qrcode/a/f;

    if-nez v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->c:Lcom/nut/blehunter/qrcode/a/f;

    invoke-virtual {v0}, Lcom/nut/blehunter/qrcode/a/f;->e()Landroid/graphics/Rect;

    move-result-object v8

    .line 62
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->c:Lcom/nut/blehunter/qrcode/a/f;

    invoke-virtual {v0}, Lcom/nut/blehunter/qrcode/a/f;->f()Landroid/graphics/Rect;

    move-result-object v0

    .line 63
    if-eqz v8, :cond_0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    .line 70
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->e:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    int-to-float v3, v9

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->d:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 72
    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 73
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    int-to-float v5, v9

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v6, v0

    iget-object v7, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->d:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 74
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v3, v9

    int-to-float v4, v10

    iget-object v5, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x32

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 79
    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x32

    int-to-float v4, v0

    iget-object v5, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 80
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x32

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 81
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x4

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x4

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x32

    int-to-float v4, v0

    iget-object v5, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 82
    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x4

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x32

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 83
    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x32

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 84
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x32

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x4

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 85
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x4

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x32

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x4

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 87
    iget v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->a:I

    if-nez v0, :cond_2

    .line 88
    iget v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->h:I

    .line 89
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->i:I

    .line 90
    iget v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->h:I

    iput v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->a:I

    .line 93
    :cond_2
    iget v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->a:I

    iget v1, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->i:I

    if-lt v0, v1, :cond_3

    .line 94
    iget v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->i:I

    iput v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->a:I

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->g:Landroid/graphics/Bitmap;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->a:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 98
    iget v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->a:I

    iget v1, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->i:I

    if-lt v0, v1, :cond_4

    .line 99
    iget v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->h:I

    iput v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->a:I

    .line 104
    :goto_1
    iget-boolean v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->b:Z

    if-eqz v0, :cond_0

    .line 105
    iget v0, v8, Landroid/graphics/Rect;->left:I

    iget v1, v8, Landroid/graphics/Rect;->top:I

    iget v2, v8, Landroid/graphics/Rect;->right:I

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nut/blehunter/qrcode/ScanOverlayView;->postInvalidate(IIII)V

    goto/16 :goto_0

    .line 101
    :cond_4
    iget v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->a:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->a:I

    goto :goto_1
.end method

.method public setCameraManager(Lcom/nut/blehunter/qrcode/a/f;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->c:Lcom/nut/blehunter/qrcode/a/f;

    .line 54
    return-void
.end method

.method public setLineHeight(I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcom/nut/blehunter/qrcode/ScanOverlayView;->a:I

    .line 123
    return-void
.end method
