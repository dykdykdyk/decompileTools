.class public Lcom/nut/blehunter/ui/widget/WeekDatePicker;
.super Landroid/view/View;
.source "WeekDatePicker.java"


# instance fields
.field private A:Z

.field private B:I

.field private C:Lcom/nut/blehunter/ui/widget/aa;

.field private D:Lcom/nut/blehunter/ui/widget/z;

.field private final E:Landroid/util/SparseBooleanArray;

.field private final F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:F

.field private L:F

.field private M:Landroid/graphics/Rect;

.field private N:Landroid/graphics/Rect;

.field private O:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field private P:Lorg/threeten/bp/j;

.field private Q:Lorg/threeten/bp/j;

.field private a:Landroid/view/VelocityTracker;

.field private b:I

.field private c:I

.field private d:I

.field private final e:Lorg/threeten/bp/j;

.field private f:Lorg/threeten/bp/j;

.field private final g:Lorg/threeten/bp/d;

.field private final h:[Landroid/text/BoringLayout;

.field private final i:[Landroid/text/BoringLayout;

.field private final j:[Ljava/lang/CharSequence;

.field private final k:Landroid/text/TextPaint;

.field private final l:Landroid/text/TextPaint;

.field private final m:Landroid/graphics/Paint;

.field private n:Landroid/text/BoringLayout$Metrics;

.field private o:Landroid/text/BoringLayout$Metrics;

.field private p:Landroid/content/res/ColorStateList;

.field private q:Landroid/content/res/ColorStateList;

.field private r:Landroid/text/TextUtils$TruncateAt;

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:I

.field private v:I

.field private w:F

.field private x:Landroid/widget/OverScroller;

.field private y:Landroid/widget/OverScroller;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 155
    const v0, 0x7f01000a

    invoke-direct {p0, p1, p2, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/high16 v6, -0x80000000

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    const/16 v0, 0x15

    new-array v0, v0, [Landroid/text/BoringLayout;

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->h:[Landroid/text/BoringLayout;

    .line 87
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/text/BoringLayout;

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->i:[Landroid/text/BoringLayout;

    .line 125
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->E:Landroid/util/SparseBooleanArray;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->F:Ljava/util/List;

    .line 131
    iput v6, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->I:I

    .line 135
    iput v2, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->K:F

    .line 136
    iput v2, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->L:F

    .line 162
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 163
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 164
    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->k:Landroid/text/TextPaint;

    .line 166
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->l:Landroid/text/TextPaint;

    .line 167
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->l:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->m:Landroid/graphics/Paint;

    .line 170
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->m:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/nut/blehunter/R$styleable;->WeekDatePicker:[I

    invoke-virtual {v0, p2, v1, p3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 182
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->p:Landroid/content/res/ColorStateList;

    .line 183
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->p:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 184
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->p:Landroid/content/res/ColorStateList;

    .line 187
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->q:Landroid/content/res/ColorStateList;

    .line 188
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->q:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 189
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->q:Landroid/content/res/ColorStateList;

    .line 192
    :cond_1
    const/4 v0, 0x2

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 193
    const/4 v2, 0x3

    iget v3, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->K:F

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->K:F

    .line 195
    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 196
    cmpl-float v3, v2, v4

    if-lez v3, :cond_2

    .line 197
    invoke-direct {p0, v2}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->setTextSize(F)V

    .line 200
    :cond_2
    const/4 v2, 0x4

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 201
    cmpl-float v3, v2, v4

    if-lez v3, :cond_3

    .line 202
    invoke-direct {p0, v2}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->setLabelTextSize(F)V

    .line 205
    :cond_3
    const/4 v2, 0x6

    iget v3, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->L:F

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->L:F

    .line 207
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->j:[Ljava/lang/CharSequence;

    .line 209
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->s:Landroid/graphics/drawable/Drawable;

    .line 210
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->t:Landroid/graphics/drawable/Drawable;

    .line 212
    const/16 v2, 0xa

    sget-object v3, Lorg/threeten/bp/d;->g:Lorg/threeten/bp/d;

    .line 1187
    invoke-virtual {v3}, Lorg/threeten/bp/d;->ordinal()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 212
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 213
    invoke-static {v2}, Lorg/threeten/bp/d;->a(I)Lorg/threeten/bp/d;

    move-result-object v2

    iput-object v2, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->g:Lorg/threeten/bp/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 219
    packed-switch v0, :pswitch_data_0

    .line 234
    :goto_0
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->d()V

    .line 235
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->e()V

    .line 239
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->x:Landroid/widget/OverScroller;

    .line 240
    new-instance v0, Landroid/widget/OverScroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->y:Landroid/widget/OverScroller;

    .line 243
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->d:I

    .line 245
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->b:I

    .line 246
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->c:I

    .line 249
    iput v6, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->z:I

    .line 251
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getHeight()I

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->j(I)V

    .line 256
    invoke-static {}, Lorg/threeten/bp/j;->a()Lorg/threeten/bp/j;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->e:Lorg/threeten/bp/j;

    .line 257
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->e:Lorg/threeten/bp/j;

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->Q:Lorg/threeten/bp/j;

    .line 258
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->Q:Lorg/threeten/bp/j;

    const-wide/16 v2, 0x22

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/j;->f(J)Lorg/threeten/bp/j;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->P:Lorg/threeten/bp/j;

    .line 259
    invoke-direct {p0, v5}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->b(I)Lorg/threeten/bp/j;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->f:Lorg/threeten/bp/j;

    .line 261
    return-void

    .line 216
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 221
    :pswitch_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 224
    :pswitch_1
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 227
    :pswitch_2
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 230
    :pswitch_3
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(F)I
    .locals 5

    .prologue
    .line 857
    .line 6870
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->u:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->K:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    add-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->l(I)I

    move-result v1

    .line 858
    mul-int/lit8 v0, v1, 0x7

    .line 7866
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p1

    float-to-int v2, v2

    .line 7877
    int-to-float v2, v2

    iget v3, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->K:F

    add-float/2addr v3, v4

    rem-float/2addr v2, v3

    .line 7878
    iget v3, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->v:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 858
    add-int/2addr v0, v2

    .line 859
    if-gez v1, :cond_0

    .line 860
    add-int/lit8 v0, v0, 0x6

    .line 862
    :cond_0
    return v0
.end method

.method private a(Landroid/content/res/ColorStateList;I)I
    .locals 4

    .prologue
    .line 501
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 503
    invoke-direct {p0, p2}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    const v0, 0x101009e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_0
    invoke-direct {p0, p2}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    const v0, 0x10100a7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_1
    invoke-direct {p0, p2}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->e(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 512
    const v0, 0x10100a1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    .line 516
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 517
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 518
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    .line 517
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 522
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/widget/WeekDatePicker;I)I
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->l(I)I

    move-result v0

    return v0
.end method

.method private static a(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 1

    .prologue
    .line 1122
    if-nez p1, :cond_0

    .line 1123
    new-instance p1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {p1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    .line 1126
    :cond_0
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p1, Landroid/text/BoringLayout$Metrics;->ascent:I

    .line 1127
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput v0, p1, Landroid/text/BoringLayout$Metrics;->bottom:I

    .line 1128
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v0, p1, Landroid/text/BoringLayout$Metrics;->descent:I

    .line 1129
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iput v0, p1, Landroid/text/BoringLayout$Metrics;->leading:I

    .line 1130
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v0, p1, Landroid/text/BoringLayout$Metrics;->top:I

    .line 1131
    return-object p1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/widget/WeekDatePicker;)Lcom/nut/blehunter/ui/widget/z;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->D:Lcom/nut/blehunter/ui/widget/z;

    return-object v0
.end method

.method private a()V
    .locals 14

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getWidth()I

    move-result v0

    if-lez v0, :cond_4

    .line 1370
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getSelectedWeek()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1371
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->b(I)Lorg/threeten/bp/j;

    move-result-object v1

    .line 448
    const/4 v0, 0x0

    move v12, v0

    move-object v13, v1

    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->h:[Landroid/text/BoringLayout;

    array-length v0, v0

    if-ge v12, v0, :cond_1

    .line 1690
    iget-short v0, v13, Lorg/threeten/bp/j;->f:S

    .line 450
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 451
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->h:[Landroid/text/BoringLayout;

    aget-object v1, v1, v12

    if-nez v1, :cond_0

    .line 452
    iget-object v10, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->h:[Landroid/text/BoringLayout;

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->k:Landroid/text/TextPaint;

    iget v2, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->v:I

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->n:Landroid/text/BoringLayout$Metrics;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->r:Landroid/text/TextUtils$TruncateAt;

    iget v9, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->v:I

    invoke-static/range {v0 .. v9}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v0

    aput-object v0, v10, v12

    .line 461
    :goto_1
    const-wide/16 v0, 0x1

    invoke-virtual {v13, v0, v1}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v1

    .line 448
    add-int/lit8 v0, v12, 0x1

    move v12, v0

    move-object v13, v1

    goto :goto_0

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->h:[Landroid/text/BoringLayout;

    aget-object v1, v1, v12

    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->k:Landroid/text/TextPaint;

    iget v4, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->v:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v8, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->n:Landroid/text/BoringLayout$Metrics;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->r:Landroid/text/TextUtils$TruncateAt;

    iget v11, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->v:I

    move-object v2, v0

    invoke-virtual/range {v1 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    goto :goto_1

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->g:Lorg/threeten/bp/d;

    .line 465
    const/4 v0, 0x0

    move v12, v0

    move-object v13, v1

    :goto_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->i:[Landroid/text/BoringLayout;

    array-length v0, v0

    if-ge v12, v0, :cond_4

    .line 468
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->j:[Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 469
    sget-object v0, Lorg/threeten/bp/format/ah;->c:Lorg/threeten/bp/format/ah;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 2204
    new-instance v2, Lorg/threeten/bp/format/e;

    invoke-direct {v2}, Lorg/threeten/bp/format/e;-><init>()V

    sget-object v3, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    .line 2681
    const-string v4, "field"

    invoke-static {v3, v4}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2682
    const-string v4, "textStyle"

    invoke-static {v0, v4}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2683
    new-instance v4, Lorg/threeten/bp/format/t;

    .line 3057
    new-instance v5, Lorg/threeten/bp/format/ae;

    invoke-direct {v5}, Lorg/threeten/bp/format/ae;-><init>()V

    .line 2683
    invoke-direct {v4, v3, v0, v5}, Lorg/threeten/bp/format/t;-><init>(Lorg/threeten/bp/temporal/q;Lorg/threeten/bp/format/ah;Lorg/threeten/bp/format/aa;)V

    invoke-virtual {v2, v4}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/l;)I

    .line 2204
    invoke-virtual {v2, v1}, Lorg/threeten/bp/format/e;->a(Ljava/util/Locale;)Lorg/threeten/bp/format/b;

    move-result-object v0

    invoke-virtual {v0, v13}, Lorg/threeten/bp/format/b;->a(Lorg/threeten/bp/temporal/l;)Ljava/lang/String;

    move-result-object v0

    .line 475
    :goto_3
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->i:[Landroid/text/BoringLayout;

    aget-object v1, v1, v12

    if-nez v1, :cond_3

    .line 476
    iget-object v10, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->i:[Landroid/text/BoringLayout;

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->l:Landroid/text/TextPaint;

    iget v2, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->v:I

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->o:Landroid/text/BoringLayout$Metrics;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->r:Landroid/text/TextUtils$TruncateAt;

    iget v9, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->v:I

    invoke-static/range {v0 .. v9}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v0

    aput-object v0, v10, v12

    .line 3343
    :goto_4
    sget-object v0, Lorg/threeten/bp/d;->i:[Lorg/threeten/bp/d;

    invoke-virtual {v13}, Lorg/threeten/bp/d;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    rem-int/lit8 v1, v1, 0x7

    aget-object v1, v0, v1

    .line 465
    add-int/lit8 v0, v12, 0x1

    move v12, v0

    move-object v13, v1

    goto :goto_2

    .line 3187
    :cond_2
    invoke-virtual {v13}, Lorg/threeten/bp/d;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 471
    add-int/lit8 v0, v0, -0x1

    .line 472
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->j:[Ljava/lang/CharSequence;

    aget-object v0, v1, v0

    goto :goto_3

    .line 480
    :cond_3
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->i:[Landroid/text/BoringLayout;

    aget-object v1, v1, v12

    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->l:Landroid/text/TextPaint;

    iget v4, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->v:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v8, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->o:Landroid/text/BoringLayout$Metrics;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->r:Landroid/text/TextUtils$TruncateAt;

    iget v11, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->v:I

    move-object v2, v0

    invoke-virtual/range {v1 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    goto :goto_4

    .line 491
    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/widget/WeekDatePicker;)Lcom/nut/blehunter/ui/widget/aa;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->C:Lcom/nut/blehunter/ui/widget/aa;

    return-object v0
.end method

.method private b(I)Lorg/threeten/bp/j;
    .locals 4

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getFirstDay()Lorg/threeten/bp/j;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/j;->d(J)Lorg/threeten/bp/j;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->g:Lorg/threeten/bp/d;

    invoke-static {v1}, Lorg/threeten/bp/temporal/n;->a(Lorg/threeten/bp/d;)Lorg/threeten/bp/temporal/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/widget/WeekDatePicker;I)Lorg/threeten/bp/j;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->b(I)Lorg/threeten/bp/j;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 1023
    .line 7939
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getScrollX()I

    move-result v0

    .line 7940
    int-to-float v0, v0

    iget v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->u:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->K:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 7941
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->i(I)V

    .line 1024
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->A:Z

    .line 1025
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->C:Lcom/nut/blehunter/ui/widget/aa;

    if-eqz v0, :cond_0

    .line 1084
    new-instance v0, Lcom/nut/blehunter/ui/widget/y;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/widget/y;-><init>(Lcom/nut/blehunter/ui/widget/WeekDatePicker;)V

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->post(Ljava/lang/Runnable;)Z

    .line 1093
    :cond_0
    return-void
.end method

.method private c(I)[I
    .locals 4

    .prologue
    .line 528
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 529
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    const v0, 0x101009e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_0
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    const v0, 0x10100a1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_1
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    const v0, 0x10100a7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    .line 542
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 543
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    .line 542
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 545
    :cond_3
    return-object v3
.end method

.method private d()V
    .locals 2

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->k:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 1097
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->n:Landroid/text/BoringLayout$Metrics;

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->a(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->n:Landroid/text/BoringLayout$Metrics;

    .line 1098
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->n:Landroid/text/BoringLayout$Metrics;

    iget v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->u:I

    iput v1, v0, Landroid/text/BoringLayout$Metrics;->width:I

    .line 1099
    return-void
.end method

.method private d(I)Z
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->I:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->l:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 1103
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->o:Landroid/text/BoringLayout$Metrics;

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->a(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->o:Landroid/text/BoringLayout$Metrics;

    .line 1104
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->o:Landroid/text/BoringLayout$Metrics;

    iget v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->u:I

    iput v1, v0, Landroid/text/BoringLayout$Metrics;->width:I

    .line 1105
    return-void
.end method

.method private e(I)Z
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->H:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(I)Z
    .locals 2

    .prologue
    .line 558
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->g(I)Lorg/threeten/bp/j;

    move-result-object v0

    .line 560
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->P:Lorg/threeten/bp/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->P:Lorg/threeten/bp/j;

    invoke-virtual {v1, v0}, Lorg/threeten/bp/j;->d(Lorg/threeten/bp/a/a;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->P:Lorg/threeten/bp/j;

    invoke-virtual {v1, v0}, Lorg/threeten/bp/j;->c(Lorg/threeten/bp/a/a;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->Q:Lorg/threeten/bp/j;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->Q:Lorg/threeten/bp/j;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/j;->d(Lorg/threeten/bp/a/a;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->Q:Lorg/threeten/bp/j;

    invoke-virtual {v1, v0}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/a/a;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->F:Ljava/util/List;

    invoke-virtual {v0}, Lorg/threeten/bp/j;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(I)Lorg/threeten/bp/j;
    .locals 4

    .prologue
    .line 566
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->f:Lorg/threeten/bp/j;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v0

    return-object v0
.end method

.method private getFirstDay()Lorg/threeten/bp/j;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->P:Lorg/threeten/bp/j;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->P:Lorg/threeten/bp/j;

    .line 383
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->e:Lorg/threeten/bp/j;

    goto :goto_0
.end method

.method private getTextDirectionHeuristic()Landroid/support/v4/text/TextDirectionHeuristicCompat;
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 419
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    .line 421
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 440
    :goto_0
    return-object v0

    .line 426
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 428
    :goto_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 431
    if-eqz v0, :cond_2

    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_0

    .line 426
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 431
    :cond_2
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_0

    .line 434
    :pswitch_0
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->ANYRTL_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_0

    .line 436
    :pswitch_1
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_0

    .line 438
    :pswitch_2
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_0

    .line 440
    :pswitch_3
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LOCALE:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private h(I)V
    .locals 2

    .prologue
    .line 689
    iget v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->H:I

    if-eq v0, p1, :cond_1

    .line 691
    iput p1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->H:I

    .line 694
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->D:Lcom/nut/blehunter/ui/widget/z;

    if-eqz v0, :cond_0

    .line 695
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->g(I)Lorg/threeten/bp/j;

    move-result-object v0

    .line 696
    new-instance v1, Lcom/nut/blehunter/ui/widget/x;

    invoke-direct {v1, p0, v0}, Lcom/nut/blehunter/ui/widget/x;-><init>(Lcom/nut/blehunter/ui/widget/WeekDatePicker;Lorg/threeten/bp/j;)V

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->post(Ljava/lang/Runnable;)Z

    .line 704
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->invalidate()V

    .line 708
    :cond_1
    iget v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->H:I

    div-int/lit8 v0, v0, 0x7

    .line 709
    iget v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->H:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->H:I

    rem-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_2

    .line 710
    add-int/lit8 v0, v0, -0x1

    .line 712
    :cond_2
    iget v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->G:I

    if-eq v0, v1, :cond_3

    .line 713
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->i(I)V

    .line 716
    :cond_3
    return-void
.end method

.method private i(I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 947
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getScrollX()I

    move-result v1

    .line 949
    iget v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->G:I

    if-eq v0, p1, :cond_0

    .line 950
    iput p1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->G:I

    .line 951
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->c()V

    .line 954
    :cond_0
    iget v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->u:I

    iget v3, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->K:F

    float-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/2addr v0, p1

    .line 956
    sub-int v3, v0, v1

    .line 958
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->z:I

    .line 959
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->y:Landroid/widget/OverScroller;

    const/16 v5, 0x320

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 960
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->invalidate()V

    .line 961
    return-void
.end method

.method private j(I)V
    .locals 1

    .prologue
    .line 966
    iget v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->K:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x0

    .line 967
    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->u:I

    .line 968
    iget v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->u:I

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->v:I

    .line 970
    iget v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->G:I

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->m(I)V

    .line 972
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->d()V

    .line 973
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->e()V

    .line 974
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->a()V

    .line 976
    return-void
.end method

.method private k(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1032
    iget v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->u:I

    iget v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->K:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    .line 1034
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->z:I

    .line 1035
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->x:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2, v3, v0, v3}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1036
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->invalidate()V

    .line 1037
    return-void
.end method

.method private l(I)I
    .locals 3

    .prologue
    .line 1069
    int-to-float v0, p1

    iget v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->u:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->K:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private m(I)V
    .locals 2

    .prologue
    .line 1077
    iget v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->u:I

    iget v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->K:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->scrollTo(II)V

    .line 1078
    return-void
.end method

.method private setLabelTextSize(F)V
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->l:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->l:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1057
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->e()V

    .line 1058
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->a()V

    .line 1059
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->invalidate()V

    .line 1061
    :cond_0
    return-void
.end method

.method private setTextSize(F)V
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->k:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->k:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1047
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->d()V

    .line 1048
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->requestLayout()V

    .line 1049
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->invalidate()V

    .line 1051
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 776
    iget v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->G:I

    if-eq p1, v0, :cond_0

    .line 777
    iput p1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->G:I

    .line 778
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->c()V

    .line 780
    :cond_0
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->m(I)V

    .line 781
    return-void
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 754
    .line 5882
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->x:Landroid/widget/OverScroller;

    .line 5883
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5884
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->y:Landroid/widget/OverScroller;

    .line 5885
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5890
    :cond_0
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5892
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    .line 5893
    iget v2, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->z:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 5894
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getStartX()I

    move-result v2

    iput v2, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->z:I

    .line 5897
    :cond_1
    iget v2, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->z:I

    sub-int v2, v1, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->scrollBy(II)V

    .line 5898
    iput v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->z:I

    .line 5900
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6016
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->x:Landroid/widget/OverScroller;

    if-ne v0, v1, :cond_2

    .line 6017
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->b()V

    .line 5904
    :cond_2
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->postInvalidate()V

    .line 755
    :cond_3
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 844
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 845
    return-void
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->r:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 759
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 760
    return-void
.end method

.method public getSelectedWeek()I
    .locals 1

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getScrollX()I

    move-result v0

    .line 772
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->l(I)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .prologue
    .line 303
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 305
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->u:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->K:F

    add-float v3, v1, v2

    .line 307
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v4

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getSelectedWeek()I

    move-result v1

    add-int/lit8 v5, v1, -0x1

    .line 311
    int-to-float v1, v5

    mul-float/2addr v1, v3

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 315
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v1, 0x3

    if-ge v2, v1, :cond_3

    .line 316
    mul-int/lit8 v6, v2, 0x7

    add-int v7, v5, v2

    .line 1326
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 1328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->i:[Landroid/text/BoringLayout;

    const/4 v9, 0x0

    aget-object v1, v1, v9

    invoke-virtual {v1}, Landroid/text/BoringLayout;->getHeight()I

    move-result v9

    .line 1329
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->v:I

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    .line 1330
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->h:[Landroid/text/BoringLayout;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/text/BoringLayout;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    .line 1331
    int-to-float v10, v10

    sub-float v10, v1, v10

    .line 1333
    const/4 v1, 0x0

    :goto_1
    const/4 v11, 0x7

    if-ge v1, v11, :cond_2

    .line 1334
    mul-int/lit8 v11, v7, 0x7

    add-int/2addr v11, v1

    .line 1335
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->h:[Landroid/text/BoringLayout;

    add-int v13, v6, v1

    aget-object v12, v12, v13

    .line 1336
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->i:[Landroid/text/BoringLayout;

    aget-object v13, v13, v1

    .line 1338
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->F:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 1339
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->s:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->M:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->s:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->c(I)[I

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1341
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->s:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1344
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->l:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->q:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v11}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->a(Landroid/content/res/ColorStateList;I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/text/TextPaint;->setColor(I)V

    .line 1345
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/text/BoringLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1347
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->k:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->p:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->a(Landroid/content/res/ColorStateList;I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setColor(I)V

    .line 1349
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 1350
    const/4 v14, 0x0

    int-to-float v15, v9

    add-float/2addr v15, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->L:F

    move/from16 v16, v0

    add-float v15, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->E:Landroid/util/SparseBooleanArray;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->J:I

    sub-int v15, v11, v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1353
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->t:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->N:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->t:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->c(I)[I

    move-result-object v11

    invoke-virtual {v14, v11}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1355
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->t:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1358
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/BoringLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1360
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1362
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->v:I

    int-to-float v11, v11

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1333
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1365
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 317
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 315
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0

    .line 320
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 322
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 721
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 737
    :goto_0
    :sswitch_0
    return v0

    .line 725
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 737
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 731
    :sswitch_1
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->k(I)V

    goto :goto_0

    .line 734
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->k(I)V

    goto :goto_0

    .line 725
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    .line 266
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 267
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 268
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 270
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v3, v0, :cond_4

    .line 272
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getMeasuredWidth()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 277
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v4, v0, :cond_2

    move v0, v2

    .line 297
    :cond_1
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->setMeasuredDimension(II)V

    .line 270
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->o:Landroid/text/BoringLayout$Metrics;

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v5, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->o:Landroid/text/BoringLayout$Metrics;

    iget v5, v5, Landroid/text/BoringLayout$Metrics;->descent:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v0, v5

    .line 281
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v0

    .line 283
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getMeasuredWidth()I

    move-result v0

    .line 284
    if-nez v0, :cond_3

    move v0, v1

    .line 288
    :cond_3
    div-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    int-to-float v0, v0

    iget v5, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->L:F

    add-float/2addr v0, v5

    float-to-int v0, v0

    .line 290
    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_1

    .line 291
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 299
    :cond_4
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 786
    instance-of v0, p1, Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;

    if-nez v0, :cond_0

    .line 787
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 795
    :goto_0
    return-void

    .line 791
    :cond_0
    check-cast p1, Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;

    .line 792
    invoke-virtual {p1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 794
    invoke-static {p1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;->a(Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->a(I)V

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 390
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 392
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getTextDirectionHeuristic()Landroid/support/v4/text/TextDirectionHeuristicCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->O:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 393
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 799
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 801
    new-instance v1, Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;

    invoke-direct {v1, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 802
    iget v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->G:I

    invoke-static {v1, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;->a(Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;I)I

    .line 804
    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 2

    .prologue
    .line 849
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 851
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->l(I)I

    move-result v0

    invoke-direct {p0, p3}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->l(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 852
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->a()V

    .line 854
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 571
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 573
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->j(I)V

    .line 3980
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3987
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->h:[Landroid/text/BoringLayout;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroid/text/BoringLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->v:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->h:[Landroid/text/BoringLayout;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroid/text/BoringLayout;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->v:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->h:[Landroid/text/BoringLayout;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/text/BoringLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->h:[Landroid/text/BoringLayout;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/text/BoringLayout;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->v:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->M:Landroid/graphics/Rect;

    .line 3997
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 3999
    iget v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->v:I

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    .line 4000
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->h:[Landroid/text/BoringLayout;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroid/text/BoringLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 4001
    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->h:[Landroid/text/BoringLayout;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroid/text/BoringLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 4003
    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 4004
    iget-object v4, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 4005
    new-instance v5, Landroid/graphics/Rect;

    div-int/lit8 v6, v3, 0x2

    sub-int v6, v1, v6

    int-to-float v7, v2

    add-float/2addr v7, v0

    int-to-float v4, v4

    sub-float v4, v7, v4

    float-to-int v4, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {v5, v6, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->N:Landroid/graphics/Rect;

    .line 4009
    :goto_1
    return-void

    .line 3990
    :cond_0
    iput-object v7, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->M:Landroid/graphics/Rect;

    goto :goto_0

    .line 4010
    :cond_1
    iput-object v7, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->N:Landroid/graphics/Rect;

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/high16 v6, -0x80000000

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 580
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    :goto_0
    return v1

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->a:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 585
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->a:Landroid/view/VelocityTracker;

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 590
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    move v1, v2

    .line 662
    goto :goto_0

    .line 593
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 595
    iget v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->w:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 597
    iget-boolean v4, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->A:Z

    if-nez v4, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->d:I

    if-le v4, v5, :cond_2

    .line 599
    :cond_3
    iget-boolean v4, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->A:Z

    if-nez v4, :cond_4

    .line 601
    iput v6, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->I:I

    .line 602
    iput-boolean v2, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->A:Z

    .line 603
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 604
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->B:I

    move v0, v1

    .line 607
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->scrollBy(II)V

    .line 609
    iput v3, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->w:F

    .line 610
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->invalidate()V

    goto :goto_1

    .line 617
    :pswitch_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->y:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    .line 618
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->y:Landroid/widget/OverScroller;

    invoke-virtual {v0, v2}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 625
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->w:F

    .line 627
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->A:Z

    if-nez v0, :cond_5

    .line 628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->a(F)I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->I:I

    .line 630
    :cond_5
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->invalidate()V

    goto :goto_1

    .line 619
    :cond_6
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->x:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7

    .line 620
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->x:Landroid/widget/OverScroller;

    invoke-virtual {v0, v2}, Landroid/widget/OverScroller;->forceFinished(Z)V

    goto :goto_2

    .line 622
    :cond_7
    iput-boolean v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->A:Z

    goto :goto_2

    .line 635
    :pswitch_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->a:Landroid/view/VelocityTracker;

    .line 636
    const/16 v3, 0x1f4

    iget v4, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->c:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 637
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 639
    iget-boolean v3, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->A:Z

    if-eqz v3, :cond_9

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->b:I

    if-le v3, v4, :cond_9

    .line 4910
    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    .line 4912
    iget v3, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->B:I

    invoke-direct {p0, v3}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->l(I)I

    move-result v3

    .line 4913
    iget v4, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->u:I

    int-to-float v4, v4

    iget v5, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->K:F

    add-float/2addr v4, v5

    .line 4916
    packed-switch v0, :pswitch_data_1

    .line 4922
    :pswitch_3
    float-to-int v0, v4

    mul-int/2addr v0, v3

    .line 4929
    :goto_3
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getScrollX()I

    move-result v3

    sub-int/2addr v0, v3

    .line 4931
    iput v6, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->z:I

    .line 4932
    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->x:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getScrollY()I

    move-result v5

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 4934
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->invalidate()V

    .line 653
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 654
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->a:Landroid/view/VelocityTracker;

    .line 657
    :pswitch_4
    iput v6, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->I:I

    .line 658
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->invalidate()V

    goto/16 :goto_1

    .line 4918
    :pswitch_5
    float-to-int v0, v4

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v0, v3

    .line 4919
    goto :goto_3

    .line 4925
    :pswitch_6
    float-to-int v0, v4

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v0, v3

    goto :goto_3

    .line 642
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 643
    iget-boolean v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->A:Z

    if-nez v1, :cond_a

    .line 644
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->a(F)I

    move-result v0

    .line 646
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->h(I)V

    goto :goto_4

    .line 648
    :cond_a
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->A:Z

    if-eqz v0, :cond_8

    .line 649
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->b()V

    goto :goto_4

    .line 590
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 4916
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_5
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public scrollTo(II)V
    .locals 4

    .prologue
    .line 672
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->P:Lorg/threeten/bp/j;

    if-eqz v0, :cond_0

    if-gez p1, :cond_0

    .line 673
    const/4 p1, 0x0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->Q:Lorg/threeten/bp/j;

    if-eqz v0, :cond_1

    .line 677
    iget v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->u:I

    int-to-float v0, v0

    iget v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->K:F

    add-float/2addr v0, v1

    sget-object v1, Lorg/threeten/bp/temporal/b;->i:Lorg/threeten/bp/temporal/b;

    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getFirstDay()Lorg/threeten/bp/j;

    move-result-object v2

    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->Q:Lorg/threeten/bp/j;

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/temporal/b;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;)J

    move-result-wide v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    .line 679
    int-to-float v1, p1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    .line 680
    float-to-int p1, v0

    .line 684
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 685
    return-void
.end method

.method public setDateAvailable(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 831
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 832
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 833
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->F:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 835
    invoke-static {}, Lorg/threeten/bp/j;->a()Lorg/threeten/bp/j;

    move-result-object v0

    .line 6839
    invoke-virtual {v0}, Lorg/threeten/bp/j;->c()I

    move-result v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->f:Lorg/threeten/bp/j;

    invoke-virtual {v1}, Lorg/threeten/bp/j;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 6667
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->h(I)V

    .line 836
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->r:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    .line 814
    iput-object p1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->r:Landroid/text/TextUtils$TruncateAt;

    .line 816
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->a()V

    .line 817
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->invalidate()V

    .line 819
    :cond_0
    return-void
.end method

.method public setOnDateSelectedListener(Lcom/nut/blehunter/ui/widget/z;)V
    .locals 0

    .prologue
    .line 767
    iput-object p1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->D:Lcom/nut/blehunter/ui/widget/z;

    .line 768
    return-void
.end method

.method public setOnWeekChangedListener(Lcom/nut/blehunter/ui/widget/aa;)V
    .locals 0

    .prologue
    .line 763
    iput-object p1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->C:Lcom/nut/blehunter/ui/widget/aa;

    .line 764
    return-void
.end method
