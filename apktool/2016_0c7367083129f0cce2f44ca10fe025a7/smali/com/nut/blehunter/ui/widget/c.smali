.class public final Lcom/nut/blehunter/ui/widget/c;
.super Landroid/support/v7/widget/ef;
.source "DividerItemDecoration.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-direct {p0}, Landroid/support/v7/widget/ef;-><init>()V

    .line 16
    iput-boolean v3, p0, Lcom/nut/blehunter/ui/widget/c;->b:Z

    .line 17
    iput-boolean v3, p0, Lcom/nut/blehunter/ui/widget/c;->c:Z

    .line 21
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010214

    aput v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nut/blehunter/ui/widget/c;->a:Landroid/graphics/drawable/Drawable;

    .line 24
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;B)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/widget/c;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/widget/c;->b:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/widget/c;->c:Z

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/ef;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/nut/blehunter/ui/widget/c;->b:Z

    .line 17
    iput-boolean v0, p0, Lcom/nut/blehunter/ui/widget/c;->c:Z

    .line 35
    iput-object p1, p0, Lcom/nut/blehunter/ui/widget/c;->a:Landroid/graphics/drawable/Drawable;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/widget/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/widget/c;->b:Z

    .line 42
    iput-boolean p2, p0, Lcom/nut/blehunter/ui/widget/c;->c:Z

    .line 43
    return-void
.end method

.method private static a(Landroid/support/v7/widget/RecyclerView;)I
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/eg;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/eg;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 1318
    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    .line 129
    return v0

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DividerItemDecoration can only be used with a LinearLayoutManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/eg;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/eg;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 1361
    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    .line 139
    return v0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DividerItemDecoration can only be used with a LinearLayoutManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/eu;)V
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/c;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 66
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/ef;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/eu;)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-static {p2}, Lcom/nut/blehunter/ui/widget/c;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v8

    .line 73
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v9

    .line 75
    if-ne v8, v6, :cond_2

    .line 76
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 77
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    .line 78
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    move v4, v1

    move v5, v3

    move v3, v2

    move v1, v0

    move v0, v2

    .line 85
    :goto_1
    iget-boolean v7, p0, Lcom/nut/blehunter/ui/widget/c;->b:Z

    if-eqz v7, :cond_3

    :goto_2
    move v7, v2

    move v2, v0

    :goto_3
    if-ge v7, v9, :cond_7

    .line 86
    invoke-virtual {p2, v7}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 87
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 89
    if-ne v8, v6, :cond_5

    .line 90
    invoke-static {p2}, Lcom/nut/blehunter/ui/widget/c;->b(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 91
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v0, v0, Landroid/support/v7/widget/ei;->bottomMargin:I

    sub-int v0, v2, v0

    .line 92
    sub-int v2, v0, v1

    move v3, v4

    move v4, v5

    .line 106
    :goto_4
    iget-object v5, p0, Lcom/nut/blehunter/ui/widget/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    iget-object v5, p0, Lcom/nut/blehunter/ui/widget/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 85
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_3

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 81
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 82
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    move v4, v2

    move v5, v2

    move v11, v0

    move v0, v1

    move v1, v11

    goto :goto_1

    :cond_3
    move v2, v6

    .line 85
    goto :goto_2

    .line 94
    :cond_4
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v2

    iget v0, v0, Landroid/support/v7/widget/ei;->topMargin:I

    sub-int/2addr v2, v0

    .line 95
    add-int v0, v2, v1

    move v3, v4

    move v4, v5

    goto :goto_4

    .line 98
    :cond_5
    invoke-static {p2}, Lcom/nut/blehunter/ui/widget/c;->b(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 99
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/ei;->rightMargin:I

    sub-int v0, v4, v0

    .line 100
    sub-int v4, v0, v1

    move v11, v2

    move v2, v3

    move v3, v0

    move v0, v11

    goto :goto_4

    .line 102
    :cond_6
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/ei;->leftMargin:I

    sub-int/2addr v4, v0

    .line 103
    add-int v0, v4, v1

    move v11, v2

    move v2, v3

    move v3, v0

    move v0, v11

    goto :goto_4

    .line 111
    :cond_7
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/c;->c:Z

    if-eqz v0, :cond_0

    if-lez v9, :cond_0

    .line 112
    add-int/lit8 v0, v9, -0x1

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 113
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 114
    if-ne v8, v6, :cond_8

    .line 115
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v0, v0, Landroid/support/v7/widget/ei;->bottomMargin:I

    add-int v3, v2, v0

    .line 116
    add-int v2, v3, v1

    .line 121
    :goto_5
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 122
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 118
    :cond_8
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/ei;->rightMargin:I

    add-int v5, v4, v0

    .line 119
    add-int v4, v5, v1

    goto :goto_5
.end method

.method public final a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/eu;)V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/ef;->a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/eu;)V

    .line 49
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/c;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_0

    .line 56
    invoke-static {p3}, Lcom/nut/blehunter/ui/widget/c;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 57
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method
