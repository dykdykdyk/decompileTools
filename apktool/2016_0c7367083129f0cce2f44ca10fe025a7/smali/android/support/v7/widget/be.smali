.class public final Landroid/support/v7/widget/be;
.super Landroid/widget/SeekBar;
.source "AppCompatSeekBar.java"


# instance fields
.field private a:Landroid/support/v7/widget/bf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 40
    sget v0, Landroid/support/v7/appcompat/R$attr;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/be;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Landroid/support/v7/widget/bf;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bf;-><init>(Landroid/widget/SeekBar;)V

    iput-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v7/widget/bf;

    .line 47
    iget-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v7/widget/bf;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/bf;->a(Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/SeekBar;->drawableStateChanged()V

    .line 59
    iget-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v7/widget/bf;

    .line 2150
    iget-object v1, v0, Landroid/support/v7/widget/bf;->c:Landroid/graphics/drawable/Drawable;

    .line 2151
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/support/v7/widget/bf;->b:Landroid/widget/SeekBar;

    .line 2152
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2153
    iget-object v0, v0, Landroid/support/v7/widget/bf;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_0
    return-void
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/SeekBar;->jumpDrawablesToCurrentState()V

    .line 65
    iget-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v7/widget/bf;

    .line 3144
    iget-object v1, v0, Landroid/support/v7/widget/bf;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3145
    iget-object v0, v0, Landroid/support/v7/widget/bf;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 66
    :cond_0
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 52
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    iget-object v2, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v7/widget/bf;

    .line 1161
    iget-object v1, v2, Landroid/support/v7/widget/bf;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 1162
    iget-object v1, v2, Landroid/support/v7/widget/bf;->b:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    .line 1163
    if-le v3, v0, :cond_3

    .line 1164
    iget-object v1, v2, Landroid/support/v7/widget/bf;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1165
    iget-object v4, v2, Landroid/support/v7/widget/bf;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1166
    if-ltz v1, :cond_1

    div-int/lit8 v1, v1, 0x2

    .line 1167
    :goto_0
    if-ltz v4, :cond_0

    div-int/lit8 v0, v4, 0x2

    .line 1168
    :cond_0
    iget-object v4, v2, Landroid/support/v7/widget/bf;->c:Landroid/graphics/drawable/Drawable;

    neg-int v5, v1

    neg-int v6, v0

    invoke-virtual {v4, v5, v6, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1170
    iget-object v0, v2, Landroid/support/v7/widget/bf;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    iget-object v1, v2, Landroid/support/v7/widget/bf;->b:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, v2, Landroid/support/v7/widget/bf;->b:Landroid/widget/SeekBar;

    .line 1171
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v3

    div-float v1, v0, v1

    .line 1172
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1173
    iget-object v0, v2, Landroid/support/v7/widget/bf;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v5, v2, Landroid/support/v7/widget/bf;->b:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1174
    const/4 v0, 0x0

    :goto_1
    if-gt v0, v3, :cond_2

    .line 1175
    iget-object v5, v2, Landroid/support/v7/widget/bf;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1176
    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 1166
    goto :goto_0

    .line 1178
    :cond_2
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 54
    :cond_3
    return-void
.end method
