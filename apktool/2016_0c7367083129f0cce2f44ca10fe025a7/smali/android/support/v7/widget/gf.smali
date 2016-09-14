.class public final Landroid/support/v7/widget/gf;
.super Landroid/support/v7/a/b;
.source "Toolbar.java"


# instance fields
.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2202
    invoke-direct {p0}, Landroid/support/v7/a/b;-><init>()V

    .line 2195
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/gf;->b:I

    .line 2203
    const v0, 0x800013

    iput v0, p0, Landroid/support/v7/widget/gf;->a:I

    .line 2204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 2198
    invoke-direct {p0, p1, p2}, Landroid/support/v7/a/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2195
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/gf;->b:I

    .line 2199
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/a/b;)V
    .locals 1

    .prologue
    .line 2222
    invoke-direct {p0, p1}, Landroid/support/v7/a/b;-><init>(Landroid/support/v7/a/b;)V

    .line 2195
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/gf;->b:I

    .line 2223
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/gf;)V
    .locals 1

    .prologue
    .line 2216
    invoke-direct {p0, p1}, Landroid/support/v7/a/b;-><init>(Landroid/support/v7/a/b;)V

    .line 2195
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/gf;->b:I

    .line 2218
    iget v0, p1, Landroid/support/v7/widget/gf;->b:I

    iput v0, p0, Landroid/support/v7/widget/gf;->b:I

    .line 2219
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 2233
    invoke-direct {p0, p1}, Landroid/support/v7/a/b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2195
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/gf;->b:I

    .line 2234
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 2226
    invoke-direct {p0, p1}, Landroid/support/v7/a/b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2195
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/gf;->b:I

    .line 3237
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/support/v7/widget/gf;->leftMargin:I

    .line 3238
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/support/v7/widget/gf;->topMargin:I

    .line 3239
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/support/v7/widget/gf;->rightMargin:I

    .line 3240
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroid/support/v7/widget/gf;->bottomMargin:I

    .line 2230
    return-void
.end method
