.class public final Landroid/support/v7/widget/fd;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final i:Landroid/view/animation/Interpolator;


# instance fields
.field a:Ljava/lang/Runnable;

.field b:I

.field c:I

.field private d:Landroid/support/v7/widget/ct;

.field private e:Landroid/widget/Spinner;

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/widget/fd;->i:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/fd;)Landroid/support/v7/widget/ct;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/widget/fd;->d:Landroid/support/v7/widget/ct;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/widget/fd;Landroid/support/v7/a/c;)Landroid/support/v7/widget/fg;
    .locals 4

    .prologue
    .line 2289
    new-instance v0, Landroid/support/v7/widget/fg;

    invoke-virtual {p0}, Landroid/support/v7/widget/fd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/support/v7/widget/fg;-><init>(Landroid/support/v7/widget/fd;Landroid/content/Context;Landroid/support/v7/a/c;)V

    .line 2291
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/fg;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2292
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Landroid/support/v7/widget/fd;->g:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/fg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    return-object v0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/widget/fd;->e:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/fd;->e:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 169
    invoke-direct {p0}, Landroid/support/v7/widget/fd;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return v4

    .line 171
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/fd;->e:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/fd;->removeView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Landroid/support/v7/widget/fd;->d:Landroid/support/v7/widget/ct;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/fd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v0, p0, Landroid/support/v7/widget/fd;->e:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/fd;->setTabSelected(I)V

    goto :goto_0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 274
    iget-object v0, p0, Landroid/support/v7/widget/fd;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Landroid/support/v7/widget/fd;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/fd;->post(Ljava/lang/Runnable;)Z

    .line 278
    :cond_0
    return-void
.end method

.method protected final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 221
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 223
    invoke-virtual {p0}, Landroid/support/v7/widget/fd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/view/a;->a(Landroid/content/Context;)Landroid/support/v7/view/a;

    move-result-object v1

    .line 2092
    iget-object v0, v1, Landroid/support/v7/view/a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2094
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    .line 2095
    iget-object v3, v1, Landroid/support/v7/view/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2096
    invoke-virtual {v1}, Landroid/support/v7/view/a;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2098
    sget v4, Landroid/support/v7/appcompat/R$dimen;->abc_action_bar_stacked_max_height:I

    .line 2099
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2098
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2101
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 226
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/fd;->setContentHeight(I)V

    .line 2113
    iget-object v0, v1, Landroid/support/v7/view/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->abc_action_bar_stacked_tab_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 227
    iput v0, p0, Landroid/support/v7/widget/fd;->c:I

    .line 228
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 283
    iget-object v0, p0, Landroid/support/v7/widget/fd;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Landroid/support/v7/widget/fd;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/fd;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 286
    :cond_0
    return-void
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 369
    return-void
.end method

.method public final onMeasure(II)V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 94
    if-ne v3, v6, :cond_6

    move v0, v1

    .line 95
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/fd;->setFillViewport(Z)V

    .line 97
    iget-object v4, p0, Landroid/support/v7/widget/fd;->d:Landroid/support/v7/widget/ct;

    invoke-virtual {v4}, Landroid/support/v7/widget/ct;->getChildCount()I

    move-result v4

    .line 98
    if-le v4, v1, :cond_8

    if-eq v3, v6, :cond_0

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_8

    .line 100
    :cond_0
    const/4 v3, 0x2

    if-le v4, v3, :cond_7

    .line 101
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v7/widget/fd;->b:I

    .line 105
    :goto_1
    iget v3, p0, Landroid/support/v7/widget/fd;->b:I

    iget v4, p0, Landroid/support/v7/widget/fd;->c:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/fd;->b:I

    .line 110
    :goto_2
    iget v3, p0, Landroid/support/v7/widget/fd;->g:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 112
    if-nez v0, :cond_9

    iget-boolean v4, p0, Landroid/support/v7/widget/fd;->f:Z

    if-eqz v4, :cond_9

    .line 114
    :goto_3
    if-eqz v1, :cond_b

    .line 116
    iget-object v1, p0, Landroid/support/v7/widget/fd;->d:Landroid/support/v7/widget/ct;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/ct;->measure(II)V

    .line 117
    iget-object v1, p0, Landroid/support/v7/widget/fd;->d:Landroid/support/v7/widget/ct;

    invoke-virtual {v1}, Landroid/support/v7/widget/ct;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    if-le v1, v4, :cond_a

    .line 1150
    invoke-direct {p0}, Landroid/support/v7/widget/fd;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1152
    iget-object v1, p0, Landroid/support/v7/widget/fd;->e:Landroid/widget/Spinner;

    if-nez v1, :cond_1

    .line 1210
    new-instance v1, Landroid/support/v7/widget/bg;

    invoke-virtual {p0}, Landroid/support/v7/widget/fd;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionDropDownStyle:I

    invoke-direct {v1, v4, v5, v6}, Landroid/support/v7/widget/bg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1212
    new-instance v4, Landroid/support/v7/widget/cu;

    invoke-direct {v4, v8, v7}, Landroid/support/v7/widget/cu;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1215
    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1153
    iput-object v1, p0, Landroid/support/v7/widget/fd;->e:Landroid/widget/Spinner;

    .line 1155
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/fd;->d:Landroid/support/v7/widget/ct;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/fd;->removeView(Landroid/view/View;)V

    .line 1156
    iget-object v1, p0, Landroid/support/v7/widget/fd;->e:Landroid/widget/Spinner;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v4}, Landroid/support/v7/widget/fd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1158
    iget-object v1, p0, Landroid/support/v7/widget/fd;->e:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1159
    iget-object v1, p0, Landroid/support/v7/widget/fd;->e:Landroid/widget/Spinner;

    new-instance v4, Landroid/support/v7/widget/ff;

    invoke-direct {v4, p0, v2}, Landroid/support/v7/widget/ff;-><init>(Landroid/support/v7/widget/fd;B)V

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1161
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/fd;->a:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 1162
    iget-object v1, p0, Landroid/support/v7/widget/fd;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/fd;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1163
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/fd;->a:Ljava/lang/Runnable;

    .line 1165
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/fd;->e:Landroid/widget/Spinner;

    iget v2, p0, Landroid/support/v7/widget/fd;->h:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 126
    :cond_4
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/widget/fd;->getMeasuredWidth()I

    move-result v1

    .line 127
    invoke-super {p0, p1, v3}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 128
    invoke-virtual {p0}, Landroid/support/v7/widget/fd;->getMeasuredWidth()I

    move-result v2

    .line 130
    if-eqz v0, :cond_5

    if-eq v1, v2, :cond_5

    .line 132
    iget v0, p0, Landroid/support/v7/widget/fd;->h:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/fd;->setTabSelected(I)V

    .line 134
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 94
    goto/16 :goto_0

    .line 103
    :cond_7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/support/v7/widget/fd;->b:I

    goto/16 :goto_1

    .line 107
    :cond_8
    iput v7, p0, Landroid/support/v7/widget/fd;->b:I

    goto/16 :goto_2

    :cond_9
    move v1, v2

    .line 112
    goto/16 :goto_3

    .line 120
    :cond_a
    invoke-direct {p0}, Landroid/support/v7/widget/fd;->b()Z

    goto :goto_4

    .line 123
    :cond_b
    invoke-direct {p0}, Landroid/support/v7/widget/fd;->b()Z

    goto :goto_4
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 374
    return-void
.end method

.method public final setAllowCollapse(Z)V
    .locals 0

    .prologue
    .line 146
    iput-boolean p1, p0, Landroid/support/v7/widget/fd;->f:Z

    .line 147
    return-void
.end method

.method public final setContentHeight(I)V
    .locals 0

    .prologue
    .line 195
    iput p1, p0, Landroid/support/v7/widget/fd;->g:I

    .line 196
    invoke-virtual {p0}, Landroid/support/v7/widget/fd;->requestLayout()V

    .line 197
    return-void
.end method

.method public final setTabSelected(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 179
    iput p1, p0, Landroid/support/v7/widget/fd;->h:I

    .line 180
    iget-object v0, p0, Landroid/support/v7/widget/fd;->d:Landroid/support/v7/widget/ct;

    invoke-virtual {v0}, Landroid/support/v7/widget/ct;->getChildCount()I

    move-result v3

    move v2, v1

    .line 181
    :goto_0
    if-ge v2, v3, :cond_3

    .line 182
    iget-object v0, p0, Landroid/support/v7/widget/fd;->d:Landroid/support/v7/widget/ct;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ct;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 183
    if-ne v2, p1, :cond_2

    const/4 v0, 0x1

    .line 184
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 185
    if-eqz v0, :cond_1

    .line 1256
    iget-object v0, p0, Landroid/support/v7/widget/fd;->d:Landroid/support/v7/widget/ct;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ct;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1257
    iget-object v4, p0, Landroid/support/v7/widget/fd;->a:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 1258
    iget-object v4, p0, Landroid/support/v7/widget/fd;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/fd;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1260
    :cond_0
    new-instance v4, Landroid/support/v7/widget/fe;

    invoke-direct {v4, p0, v0}, Landroid/support/v7/widget/fe;-><init>(Landroid/support/v7/widget/fd;Landroid/view/View;)V

    iput-object v4, p0, Landroid/support/v7/widget/fd;->a:Ljava/lang/Runnable;

    .line 1268
    iget-object v0, p0, Landroid/support/v7/widget/fd;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/fd;->post(Ljava/lang/Runnable;)Z

    .line 181
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 183
    goto :goto_1

    .line 189
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/fd;->e:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    .line 190
    iget-object v0, p0, Landroid/support/v7/widget/fd;->e:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 192
    :cond_4
    return-void
.end method
