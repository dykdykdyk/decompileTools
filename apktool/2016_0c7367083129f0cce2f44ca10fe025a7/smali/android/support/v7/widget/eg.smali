.class public abstract Landroid/support/v7/widget/eg;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field A:I

.field q:Landroid/support/v7/widget/bq;

.field r:Landroid/support/v7/widget/RecyclerView;

.field s:Landroid/support/v7/widget/es;

.field public t:Z

.field u:Z

.field v:Z

.field w:Z

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6334
    iput-boolean v0, p0, Landroid/support/v7/widget/eg;->t:Z

    .line 6336
    iput-boolean v0, p0, Landroid/support/v7/widget/eg;->u:Z

    .line 6338
    iput-boolean v0, p0, Landroid/support/v7/widget/eg;->v:Z

    .line 6344
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/eg;->w:Z

    .line 9041
    return-void
.end method

.method public static a(III)I
    .locals 2

    .prologue
    .line 6497
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 6498
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 6499
    sparse-switch v1, :sswitch_data_0

    .line 6506
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 6503
    :sswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 6499
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(IIIIZ)I
    .locals 6

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/high16 v3, -0x80000000

    const/4 v1, 0x0

    .line 7933
    sub-int v0, p0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7936
    if-ltz p3, :cond_1

    move v1, v2

    move v0, p3

    .line 7971
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    .line 7939
    :cond_1
    if-eqz p4, :cond_3

    .line 7940
    if-ne p3, v5, :cond_2

    .line 7941
    sparse-switch p1, :sswitch_data_0

    :sswitch_0
    move v0, v1

    .line 7950
    goto :goto_0

    :sswitch_1
    move v1, p1

    .line 7946
    goto :goto_0

    .line 7952
    :cond_2
    if-ne p3, v4, :cond_6

    move v0, v1

    .line 7954
    goto :goto_0

    .line 7957
    :cond_3
    if-ne p3, v5, :cond_4

    move v1, p1

    .line 7959
    goto :goto_0

    .line 7960
    :cond_4
    if-ne p3, v4, :cond_6

    .line 7962
    if-eq p1, v3, :cond_5

    if-ne p1, v2, :cond_0

    :cond_5
    move v1, v3

    .line 7963
    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    .line 7941
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 7184
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 17948
    iget-object v0, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->c()I

    move-result v0

    .line 7184
    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/eh;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8994
    new-instance v0, Landroid/support/v7/widget/eh;

    invoke-direct {v0}, Landroid/support/v7/widget/eh;-><init>()V

    .line 8995
    sget-object v1, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 8997
    sget v2, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_android_orientation:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/eh;->a:I

    .line 8998
    sget v2, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_spanCount:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/eh;->b:I

    .line 8999
    sget v2, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_reverseLayout:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroid/support/v7/widget/eh;->c:Z

    .line 9000
    sget v2, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_stackFromEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroid/support/v7/widget/eh;->d:Z

    .line 9001
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9002
    return-object v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 7148
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/eg;->f(I)Landroid/view/View;

    move-result-object v0

    .line 7149
    if-eqz v0, :cond_1

    .line 7150
    iget-object v0, p0, Landroid/support/v7/widget/eg;->q:Landroid/support/v7/widget/bq;

    .line 17160
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bq;->a(I)I

    move-result v1

    .line 17161
    iget-object v2, v0, Landroid/support/v7/widget/bq;->a:Landroid/support/v7/widget/bs;

    invoke-interface {v2, v1}, Landroid/support/v7/widget/bs;->b(I)Landroid/view/View;

    move-result-object v2

    .line 17162
    if-eqz v2, :cond_1

    .line 17165
    iget-object v3, v0, Landroid/support/v7/widget/bq;->b:Landroid/support/v7/widget/br;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/br;->d(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17166
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/bq;->b(Landroid/view/View;)Z

    .line 17168
    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/bq;->a:Landroid/support/v7/widget/bs;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/bs;->a(I)V

    .line 7152
    :cond_1
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/eg;Landroid/support/v7/widget/es;)V
    .locals 1

    .prologue
    .line 6327
    .line 26672
    iget-object v0, p0, Landroid/support/v7/widget/eg;->s:Landroid/support/v7/widget/es;

    if-ne v0, p1, :cond_0

    .line 26673
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/eg;->s:Landroid/support/v7/widget/es;

    .line 6327
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 8069
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 8070
    iget-object v1, v0, Landroid/support/v7/widget/ei;->d:Landroid/graphics/Rect;

    .line 8071
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p1

    iget v3, v0, Landroid/support/v7/widget/ei;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p2

    iget v4, v0, Landroid/support/v7/widget/ei;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int v4, p3, v4

    iget v5, v0, Landroid/support/v7/widget/ei;->rightMargin:I

    sub-int/2addr v4, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p4, v1

    iget v0, v0, Landroid/support/v7/widget/ei;->bottomMargin:I

    sub-int v0, v1, v0

    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 8074
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/eg;)Z
    .locals 1

    .prologue
    .line 6327
    iget-boolean v0, p0, Landroid/support/v7/widget/eg;->v:Z

    return v0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 7294
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/eg;->f(I)Landroid/view/View;

    .line 19301
    iget-object v0, p0, Landroid/support/v7/widget/eg;->q:Landroid/support/v7/widget/bq;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bq;->d(I)V

    .line 7295
    return-void
.end method

.method static b(III)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7827
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 7828
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 7829
    if-lez p2, :cond_1

    if-eq p0, p2, :cond_1

    .line 7840
    :cond_0
    :goto_0
    return v0

    .line 7832
    :cond_1
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 7836
    :sswitch_0
    if-lt v3, p0, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 7834
    goto :goto_0

    .line 7838
    :sswitch_2
    if-ne v3, p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 7832
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic b(Landroid/support/v7/widget/eg;)Z
    .locals 1

    .prologue
    .line 6327
    iget-boolean v0, p0, Landroid/support/v7/widget/eg;->t:Z

    return v0
.end method

.method public static c(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 7984
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    iget-object v0, v0, Landroid/support/v7/widget/ei;->d:Landroid/graphics/Rect;

    .line 7985
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic c(Landroid/support/v7/widget/eg;)Z
    .locals 1

    .prologue
    .line 6327
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/eg;->t:Z

    return v0
.end method

.method public static d(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 7998
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    iget-object v0, v0, Landroid/support/v7/widget/ei;->d:Landroid/graphics/Rect;

    .line 7999
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static e(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 8138
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 23245
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    iget-object v0, v0, Landroid/support/v7/widget/ei;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 8138
    sub-int v0, v1, v0

    return v0
.end method

.method public static f(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 8150
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 24215
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    iget-object v0, v0, Landroid/support/v7/widget/ei;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 8150
    sub-int v0, v1, v0

    return v0
.end method

.method public static g(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 8162
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 24260
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    iget-object v0, v0, Landroid/support/v7/widget/ei;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 8162
    add-int/2addr v0, v1

    return v0
.end method

.method public static h(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 8174
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 25230
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    iget-object v0, v0, Landroid/support/v7/widget/ei;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 8174
    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 6903
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 8870
    iget-object v1, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v1

    if-nez v1, :cond_1

    .line 8873
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/eg;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/dx;->b()I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/ei;
    .locals 1

    .prologue
    .line 6886
    new-instance v0, Landroid/support/v7/widget/ei;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/ei;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ei;
    .locals 1

    .prologue
    .line 6862
    instance-of v0, p1, Landroid/support/v7/widget/ei;

    if-eqz v0, :cond_0

    .line 6863
    new-instance v0, Landroid/support/v7/widget/ei;

    check-cast p1, Landroid/support/v7/widget/ei;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ei;-><init>(Landroid/support/v7/widget/ei;)V

    .line 6867
    :goto_0
    return-object v0

    .line 6864
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 6865
    new-instance v0, Landroid/support/v7/widget/ei;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ei;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 6867
    :cond_1
    new-instance v0, Landroid/support/v7/widget/ei;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ei;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 8283
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 8447
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 8459
    return-void
.end method

.method public final a(ILandroid/support/v7/widget/eo;)V
    .locals 1

    .prologue
    .line 7421
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/eg;->f(I)Landroid/view/View;

    move-result-object v0

    .line 7422
    invoke-direct {p0, p1}, Landroid/support/v7/widget/eg;->a(I)V

    .line 7423
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/eo;->a(Landroid/view/View;)V

    .line 7424
    return-void
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 3

    .prologue
    .line 6457
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/eg;->m()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/eg;->o()I

    move-result v1

    add-int/2addr v0, v1

    .line 6458
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/eg;->n()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/eg;->p()I

    move-result v2

    add-int/2addr v1, v2

    .line 11637
    iget-object v2, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v2

    .line 6459
    invoke-static {p2, v0, v2}, Landroid/support/v7/widget/eg;->a(III)I

    move-result v0

    .line 11644
    iget-object v2, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    .line 6460
    invoke-static {p3, v1, v2}, Landroid/support/v7/widget/eg;->a(III)I

    move-result v1

    .line 6461
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/eg;->h(II)V

    .line 6462
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 8663
    return-void
.end method

.method final a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 6362
    if-nez p1, :cond_0

    .line 6363
    iput-object v2, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    .line 6364
    iput-object v2, p0, Landroid/support/v7/widget/eg;->q:Landroid/support/v7/widget/bq;

    .line 6365
    iput v0, p0, Landroid/support/v7/widget/eg;->z:I

    .line 6366
    iput v0, p0, Landroid/support/v7/widget/eg;->A:I

    .line 6373
    :goto_0
    iput v1, p0, Landroid/support/v7/widget/eg;->x:I

    .line 6374
    iput v1, p0, Landroid/support/v7/widget/eg;->y:I

    .line 6375
    return-void

    .line 6368
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    .line 6369
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    iput-object v0, p0, Landroid/support/v7/widget/eg;->q:Landroid/support/v7/widget/bq;

    .line 6370
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/eg;->z:I

    .line 6371
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/eg;->A:I

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/eo;)V
    .locals 0

    .prologue
    .line 6737
    return-void
.end method

.method public final a(Landroid/support/v7/widget/eo;)V
    .locals 4

    .prologue
    .line 7679
    invoke-virtual {p0}, Landroid/support/v7/widget/eg;->l()I

    move-result v0

    .line 7680
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 7681
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/eg;->f(I)Landroid/view/View;

    move-result-object v1

    .line 21687
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v2

    .line 21688
    invoke-virtual {v2}, Landroid/support/v7/widget/ex;->b()Z

    move-result v3

    if-nez v3, :cond_0

    .line 21694
    invoke-virtual {v2}, Landroid/support/v7/widget/ex;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/support/v7/widget/ex;->m()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    .line 21695
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v3

    .line 21923
    iget-boolean v3, v3, Landroid/support/v7/widget/dx;->b:Z

    .line 21695
    if-nez v3, :cond_1

    .line 21696
    invoke-direct {p0, v0}, Landroid/support/v7/widget/eg;->a(I)V

    .line 21697
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/eo;->a(Landroid/support/v7/widget/ex;)V

    .line 7680
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 21699
    :cond_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/eg;->b(I)V

    .line 21700
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/eo;->c(Landroid/view/View;)V

    .line 21701
    iget-object v1, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    .line 22281
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/gm;->c(Landroid/support/v7/widget/ex;)V

    goto :goto_1

    .line 7684
    :cond_2
    return-void
.end method

.method public a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 8816
    invoke-virtual {p0}, Landroid/support/v7/widget/eg;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/support/v7/widget/eg;->a(Landroid/view/View;)I

    move-result v0

    .line 8817
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/eg;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p3}, Landroid/support/v7/widget/eg;->a(Landroid/view/View;)I

    move-result v2

    :goto_1
    move v3, v1

    move v5, v4

    .line 8819
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    .line 8821
    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 8822
    return-void

    :cond_0
    move v0, v4

    .line 8816
    goto :goto_0

    :cond_1
    move v2, v4

    .line 8817
    goto :goto_1
.end method

.method public a(Landroid/support/v7/widget/eu;)V
    .locals 0

    .prologue
    .line 6815
    return-void
.end method

.method final a(Landroid/view/View;IZ)V
    .locals 8

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x0

    .line 7074
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v2

    .line 7075
    if-nez p3, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/ex;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7077
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/gm;->b(Landroid/support/v7/widget/ex;)V

    .line 7086
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 7087
    invoke-virtual {v2}, Landroid/support/v7/widget/ex;->g()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Landroid/support/v7/widget/ex;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7088
    :cond_1
    invoke-virtual {v2}, Landroid/support/v7/widget/ex;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7089
    invoke-virtual {v2}, Landroid/support/v7/widget/ex;->f()V

    .line 7093
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/eg;->q:Landroid/support/v7/widget/bq;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3, v7}, Landroid/support/v7/widget/bq;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 7118
    :cond_2
    :goto_2
    iget-boolean v1, v0, Landroid/support/v7/widget/ei;->f:Z

    if-eqz v1, :cond_3

    .line 7122
    iget-object v1, v2, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 7123
    iput-boolean v7, v0, Landroid/support/v7/widget/ei;->f:Z

    .line 7125
    :cond_3
    return-void

    .line 7084
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/gm;->c(Landroid/support/v7/widget/ex;)V

    goto :goto_0

    .line 7091
    :cond_5
    invoke-virtual {v2}, Landroid/support/v7/widget/ex;->h()V

    goto :goto_1

    .line 7097
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    if-ne v1, v3, :cond_b

    .line 7099
    iget-object v1, p0, Landroid/support/v7/widget/eg;->q:Landroid/support/v7/widget/bq;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/bq;->c(Landroid/view/View;)I

    move-result v1

    .line 7100
    if-ne p2, v4, :cond_7

    .line 7101
    iget-object v3, p0, Landroid/support/v7/widget/eg;->q:Landroid/support/v7/widget/bq;

    invoke-virtual {v3}, Landroid/support/v7/widget/bq;->a()I

    move-result p2

    .line 7103
    :cond_7
    if-ne v1, v4, :cond_8

    .line 7104
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    .line 7106
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7108
    :cond_8
    if-eq v1, p2, :cond_2

    .line 7109
    iget-object v3, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    .line 12366
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/eg;->f(I)Landroid/view/View;

    move-result-object v4

    .line 12367
    if-nez v4, :cond_9

    .line 12368
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot move a child from non-existing index:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12371
    :cond_9
    invoke-direct {v3, v1}, Landroid/support/v7/widget/eg;->b(I)V

    .line 13335
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ei;

    .line 14314
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v5

    .line 14315
    invoke-virtual {v5}, Landroid/support/v7/widget/ex;->m()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 14316
    iget-object v6, v3, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/gm;->b(Landroid/support/v7/widget/ex;)V

    .line 14320
    :goto_3
    iget-object v3, v3, Landroid/support/v7/widget/eg;->q:Landroid/support/v7/widget/bq;

    invoke-virtual {v5}, Landroid/support/v7/widget/ex;->m()Z

    move-result v5

    invoke-virtual {v3, v4, p2, v1, v5}, Landroid/support/v7/widget/bq;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto/16 :goto_2

    .line 14318
    :cond_a
    iget-object v6, v3, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/gm;->c(Landroid/support/v7/widget/ex;)V

    goto :goto_3

    .line 7112
    :cond_b
    iget-object v1, p0, Landroid/support/v7/widget/eg;->q:Landroid/support/v7/widget/bq;

    invoke-virtual {v1, p1, p2, v7}, Landroid/support/v7/widget/bq;->a(Landroid/view/View;IZ)V

    .line 7113
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ei;->e:Z

    .line 7114
    iget-object v1, p0, Landroid/support/v7/widget/eg;->s:Landroid/support/v7/widget/es;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/eg;->s:Landroid/support/v7/widget/es;

    .line 15100
    iget-boolean v1, v1, Landroid/support/v7/widget/es;->c:Z

    .line 7114
    if-eqz v1, :cond_2

    .line 7115
    iget-object v1, p0, Landroid/support/v7/widget/eg;->s:Landroid/support/v7/widget/es;

    .line 16150
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)I

    move-result v3

    .line 17110
    iget v4, v1, Landroid/support/v7/widget/es;->a:I

    .line 15177
    if-ne v3, v4, :cond_2

    .line 15178
    iput-object p1, v1, Landroid/support/v7/widget/es;->d:Landroid/view/View;

    goto/16 :goto_2
.end method

.method public final a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 8089
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    iget-object v0, v0, Landroid/support/v7/widget/ei;->d:Landroid/graphics/Rect;

    .line 8090
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    .line 8091
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    .line 8090
    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 8096
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8097
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 8098
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8099
    iget-object v1, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->w(Landroid/support/v7/widget/RecyclerView;)Landroid/graphics/RectF;

    move-result-object v1

    .line 8100
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8101
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 8102
    iget v0, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v0

    .line 8103
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    .line 8104
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v3

    .line 8105
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v1

    .line 8106
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 8102
    invoke-virtual {p2, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 8110
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 8111
    return-void
.end method

.method final a(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .prologue
    .line 8792
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 8794
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->m()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/eg;->q:Landroid/support/v7/widget/bq;

    iget-object v0, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bq;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8795
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    iget-object v1, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/eg;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 8798
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/support/v7/widget/eo;)V
    .locals 3

    .prologue
    .line 7410
    .line 20136
    iget-object v0, p0, Landroid/support/v7/widget/eg;->q:Landroid/support/v7/widget/bq;

    .line 20140
    iget-object v1, v0, Landroid/support/v7/widget/bq;->a:Landroid/support/v7/widget/bs;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/bs;->a(Landroid/view/View;)I

    move-result v1

    .line 20141
    if-ltz v1, :cond_1

    .line 20144
    iget-object v2, v0, Landroid/support/v7/widget/bq;->b:Landroid/support/v7/widget/br;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/br;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20145
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bq;->b(Landroid/view/View;)Z

    .line 20147
    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/bq;->a:Landroid/support/v7/widget/bs;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/bs;->a(I)V

    .line 7411
    :cond_1
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/eo;->a(Landroid/view/View;)V

    .line 7412
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    .line 8759
    iget-object v1, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    iget-object v1, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 25776
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v1

    .line 25777
    iget-object v2, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 25778
    :cond_0
    :goto_0
    return-void

    .line 25780
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    .line 25781
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    .line 25782
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    .line 25783
    invoke-static {v2, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 25780
    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 25785
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25786
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/dx;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    goto :goto_0

    .line 25783
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 6518
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 6519
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 6521
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/ei;)Z
    .locals 1

    .prologue
    .line 6845
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Landroid/view/View;IILandroid/support/v7/widget/ei;)Z
    .locals 2

    .prologue
    .line 7794
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/eg;->w:Z

    if-eqz v0, :cond_0

    .line 7796
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/ei;->width:I

    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/eg;->b(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7797
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/ei;->height:I

    invoke-static {v0, p3, v1}, Landroid/support/v7/widget/eg;->b(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 6679
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 6680
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    .line 6682
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 6920
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 8889
    iget-object v1, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v1

    if-nez v1, :cond_1

    .line 8892
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/eg;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/dx;->b()I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 8541
    const/4 v0, 0x0

    return v0
.end method

.method public abstract b()Landroid/support/v7/widget/ei;
.end method

.method public final b(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 7214
    iget-object v1, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_1

    .line 7224
    :cond_0
    :goto_0
    return-object v0

    .line 7217
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 7218
    if-eqz v1, :cond_0

    .line 7221
    iget-object v2, p0, Landroid/support/v7/widget/eg;->q:Landroid/support/v7/widget/bq;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/bq;->d(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 7224
    goto :goto_0
.end method

.method public b(II)V
    .locals 0

    .prologue
    .line 8469
    return-void
.end method

.method final b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 9006
    .line 9007
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 9008
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 9006
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/eg;->e(II)V

    .line 9010
    return-void
.end method

.method final b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/eo;)V
    .locals 1

    .prologue
    .line 6633
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/eg;->u:Z

    .line 6634
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/eg;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/eo;)V

    .line 6635
    return-void
.end method

.method final b(Landroid/support/v7/widget/eo;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 7715
    .line 22352
    iget-object v0, p1, Landroid/support/v7/widget/eo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7717
    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 22356
    iget-object v0, p1, Landroid/support/v7/widget/eo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    iget-object v0, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 7719
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v3

    .line 7720
    invoke-virtual {v3}, Landroid/support/v7/widget/ex;->b()Z

    move-result v4

    if-nez v4, :cond_2

    .line 7728
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/ex;->a(Z)V

    .line 7729
    invoke-virtual {v3}, Landroid/support/v7/widget/ex;->n()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7730
    iget-object v4, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v0, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 7732
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    if-eqz v4, :cond_1

    .line 7733
    iget-object v4, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/eb;->c(Landroid/support/v7/widget/ex;)V

    .line 7735
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ex;->a(Z)V

    .line 7736
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/eo;->b(Landroid/view/View;)V

    .line 7717
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 22360
    :cond_3
    iget-object v0, p1, Landroid/support/v7/widget/eo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 22361
    iget-object v0, p1, Landroid/support/v7/widget/eo;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 22362
    iget-object v0, p1, Landroid/support/v7/widget/eo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7739
    :cond_4
    if-lez v2, :cond_5

    .line 7740
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 7742
    :cond_5
    return-void
.end method

.method public final b(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8195
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 8196
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 8201
    :goto_0
    return-void

    .line 8199
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 8200
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 8586
    const/4 v0, 0x0

    return v0
.end method

.method public c(I)Landroid/view/View;
    .locals 5

    .prologue
    .line 7241
    invoke-virtual {p0}, Landroid/support/v7/widget/eg;->l()I

    move-result v2

    .line 7242
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 7243
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/eg;->f(I)Landroid/view/View;

    move-result-object v0

    .line 7244
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v3

    .line 7245
    if-eqz v3, :cond_1

    .line 7248
    invoke-virtual {v3}, Landroid/support/v7/widget/ex;->c()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/ex;->b()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 18646
    iget-boolean v4, v4, Landroid/support/v7/widget/eu;->g:Z

    .line 7249
    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/ex;->m()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7253
    :cond_0
    :goto_1
    return-object v0

    .line 7242
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 7253
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c(II)V
    .locals 0

    .prologue
    .line 8495
    return-void
.end method

.method public final c(Landroid/support/v7/widget/eo;)V
    .locals 2

    .prologue
    .line 8698
    invoke-virtual {p0}, Landroid/support/v7/widget/eg;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 8699
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/eg;->f(I)Landroid/view/View;

    move-result-object v1

    .line 8700
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ex;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8701
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/eg;->a(ILandroid/support/v7/widget/eo;)V

    .line 8698
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8704
    :cond_1
    return-void
.end method

.method public c(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)V
    .locals 2

    .prologue
    .line 6800
    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6801
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 6624
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 8526
    const/4 v0, 0x0

    return v0
.end method

.method public d()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 8657
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 6953
    return-void
.end method

.method public d(II)V
    .locals 0

    .prologue
    .line 8511
    return-void
.end method

.method public e(Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 8571
    const/4 v0, 0x0

    return v0
.end method

.method final e(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6378
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/eg;->z:I

    .line 6379
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/eg;->x:I

    .line 6380
    iget v0, p0, Landroid/support/v7/widget/eg;->x:I

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->a:Z

    if-nez v0, :cond_0

    .line 6381
    iput v1, p0, Landroid/support/v7/widget/eg;->z:I

    .line 6384
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/eg;->A:I

    .line 6385
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/eg;->y:I

    .line 6386
    iget v0, p0, Landroid/support/v7/widget/eg;->y:I

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->a:Z

    if-nez v0, :cond_1

    .line 6387
    iput v1, p0, Landroid/support/v7/widget/eg;->A:I

    .line 6389
    :cond_1
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 6930
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 8556
    const/4 v0, 0x0

    return v0
.end method

.method public final f(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 7442
    iget-object v0, p0, Landroid/support/v7/widget/eg;->q:Landroid/support/v7/widget/bq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/eg;->q:Landroid/support/v7/widget/bq;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bq;->b(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final f(II)V
    .locals 17

    .prologue
    .line 6405
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/eg;->l()I

    move-result v9

    .line 6406
    if-nez v9, :cond_0

    .line 6407
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    .line 6435
    :goto_0
    return-void

    .line 6410
    :cond_0
    const v4, 0x7fffffff

    .line 6411
    const v6, 0x7fffffff

    .line 6412
    const/high16 v5, -0x80000000

    .line 6413
    const/high16 v7, -0x80000000

    .line 6415
    const/4 v3, 0x0

    move v8, v3

    :goto_1
    if-ge v8, v9, :cond_1

    .line 6416
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/eg;->f(I)Landroid/view/View;

    move-result-object v10

    .line 6417
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6418
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->u(Landroid/support/v7/widget/RecyclerView;)Landroid/graphics/Rect;

    move-result-object v11

    .line 11121
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ei;

    .line 11122
    iget-object v12, v3, Landroid/support/v7/widget/ei;->d:Landroid/graphics/Rect;

    .line 11123
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v13

    iget v14, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    iget v14, v3, Landroid/support/v7/widget/ei;->leftMargin:I

    sub-int/2addr v13, v14

    .line 11124
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v14

    iget v15, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    iget v15, v3, Landroid/support/v7/widget/ei;->topMargin:I

    sub-int/2addr v14, v15

    .line 11125
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v15

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    add-int v15, v15, v16

    iget v0, v3, Landroid/support/v7/widget/ei;->rightMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    .line 11126
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v12

    iget v3, v3, Landroid/support/v7/widget/ei;->bottomMargin:I

    add-int/2addr v3, v10

    .line 11123
    invoke-virtual {v11, v13, v14, v15, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 6420
    iget v3, v11, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_5

    .line 6421
    iget v3, v11, Landroid/graphics/Rect;->left:I

    .line 6423
    :goto_2
    iget v4, v11, Landroid/graphics/Rect;->right:I

    if-le v4, v5, :cond_4

    .line 6424
    iget v4, v11, Landroid/graphics/Rect;->right:I

    .line 6426
    :goto_3
    iget v5, v11, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_3

    .line 6427
    iget v5, v11, Landroid/graphics/Rect;->top:I

    .line 6429
    :goto_4
    iget v6, v11, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_2

    .line 6430
    iget v6, v11, Landroid/graphics/Rect;->bottom:I

    .line 6415
    :goto_5
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    goto :goto_1

    .line 6433
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->u(Landroid/support/v7/widget/RecyclerView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 6434
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->u(Landroid/support/v7/widget/RecyclerView;)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v7/widget/eg;->a(Landroid/graphics/Rect;II)V

    goto/16 :goto_0

    :cond_2
    move v6, v7

    goto :goto_5

    :cond_3
    move v5, v6

    goto :goto_4

    :cond_4
    move v4, v5

    goto :goto_3

    :cond_5
    move v3, v4

    goto :goto_2
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 6940
    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 8601
    const/4 v0, 0x0

    return v0
.end method

.method public g(I)V
    .locals 4

    .prologue
    .line 7611
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7612
    iget-object v1, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    .line 20232
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0}, Landroid/support/v7/widget/bq;->a()I

    move-result v2

    .line 20233
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 20234
    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/bq;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 20233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7614
    :cond_0
    return-void
.end method

.method public final g(II)V
    .locals 1

    .prologue
    .line 8619
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    .line 8620
    return-void
.end method

.method public h(I)V
    .locals 4

    .prologue
    .line 7623
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7624
    iget-object v1, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    .line 21194
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0}, Landroid/support/v7/widget/bq;->a()I

    move-result v2

    .line 21195
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 21196
    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/bq;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 21195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7626
    :cond_0
    return-void
.end method

.method public final h(II)V
    .locals 1

    .prologue
    .line 8630
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;II)V

    .line 8631
    return-void
.end method

.method public i(I)V
    .locals 0

    .prologue
    .line 8683
    return-void
.end method

.method i()Z
    .locals 1

    .prologue
    .line 9023
    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 6468
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 6469
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 6471
    :cond_0
    return-void
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 6987
    iget-object v0, p0, Landroid/support/v7/widget/eg;->s:Landroid/support/v7/widget/es;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/eg;->s:Landroid/support/v7/widget/es;

    .line 12100
    iget-boolean v0, v0, Landroid/support/v7/widget/es;->c:Z

    .line 6987
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 7433
    iget-object v0, p0, Landroid/support/v7/widget/eg;->q:Landroid/support/v7/widget/bq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/eg;->q:Landroid/support/v7/widget/bq;

    invoke-virtual {v0}, Landroid/support/v7/widget/bq;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 7505
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 7514
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 7523
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()I
    .locals 1

    .prologue
    .line 7532
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final q()V
    .locals 1

    .prologue
    .line 8666
    iget-object v0, p0, Landroid/support/v7/widget/eg;->s:Landroid/support/v7/widget/es;

    if-eqz v0, :cond_0

    .line 8667
    iget-object v0, p0, Landroid/support/v7/widget/eg;->s:Landroid/support/v7/widget/es;

    invoke-virtual {v0}, Landroid/support/v7/widget/es;->a()V

    .line 8669
    :cond_0
    return-void
.end method
