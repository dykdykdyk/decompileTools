.class public Lcom/nut/blehunter/ui/widget/LoadingIndicator;
.super Landroid/view/View;
.source "LoadingIndicator.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->a:Landroid/graphics/Paint;

    .line 26
    const/16 v0, 0x1e

    iput v0, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->e:I

    .line 28
    iget v0, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->e:I

    iput v0, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->f:I

    .line 32
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020256

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->b:Landroid/graphics/Bitmap;

    .line 33
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020257

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->c:Landroid/graphics/Bitmap;

    .line 34
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 47
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 48
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 49
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->d:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 52
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 53
    iget v0, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->f:I

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->d:I

    .line 54
    iget v0, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->f:I

    .line 55
    iget v0, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->f:I

    const/16 v1, 0x46

    if-le v0, v1, :cond_0

    .line 56
    iget v0, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->e:I

    iput v0, p0, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->f:I

    .line 58
    :cond_0
    const-wide/16 v0, 0x19

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/widget/LoadingIndicator;->postInvalidateDelayed(J)V

    .line 59
    return-void
.end method
