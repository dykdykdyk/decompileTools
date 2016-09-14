.class public Landroid/support/v7/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->b:I

    .line 47
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v0

    const/16 v1, 0x140

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 49
    :goto_0
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 50
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout_allowStacking:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->a:Z

    .line 52
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 133
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStacked(Z)V
    .locals 2

    .prologue
    .line 118
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->setOrientation(I)V

    .line 119
    if-eqz p1, :cond_2

    const/4 v0, 0x5

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->setGravity(I)V

    .line 120
    sget v0, Landroid/support/v7/appcompat/R$id;->spacer:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_0

    .line 122
    if-eqz p1, :cond_3

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    .line 127
    add-int/lit8 v0, v0, -0x2

    :goto_3
    if-ltz v0, :cond_4

    .line 128
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 127
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :cond_2
    const/16 v0, 0x50

    goto :goto_1

    .line 122
    :cond_3
    const/4 v0, 0x4

    goto :goto_2

    .line 130
    :cond_4
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 67
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 68
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->a:Z

    if-eqz v0, :cond_1

    .line 69
    iget v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->b:I

    if-le v5, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 73
    :cond_0
    iput v5, p0, Landroid/support/v7/widget/ButtonBarLayout;->b:I

    .line 80
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->a()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_5

    .line 81
    const/high16 v0, -0x80000000

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v1, v2

    .line 87
    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 88
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->a:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_6

    .line 93
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v0

    .line 94
    const/high16 v4, -0x1000000

    and-int/2addr v0, v4

    .line 95
    const/high16 v4, 0x1000000

    if-ne v0, v4, :cond_2

    move v3, v2

    .line 106
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 107
    invoke-direct {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    move v1, v2

    .line 112
    :cond_3
    if-eqz v1, :cond_4

    .line 113
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 115
    :cond_4
    return-void

    :cond_5
    move v0, p1

    move v1, v3

    .line 85
    goto :goto_0

    .line 100
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v6

    move v0, v3

    move v4, v3

    :goto_2
    if-ge v0, v6, :cond_7

    .line 101
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v4, v7

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 103
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v0, v4

    if-le v0, v5, :cond_2

    move v3, v2

    goto :goto_1
.end method

.method public setAllowStacking(Z)V
    .locals 2

    .prologue
    .line 56
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->a:Z

    if-eq v0, p1, :cond_1

    .line 57
    iput-boolean p1, p0, Landroid/support/v7/widget/ButtonBarLayout;->a:Z

    .line 58
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->requestLayout()V

    .line 63
    :cond_1
    return-void
.end method
