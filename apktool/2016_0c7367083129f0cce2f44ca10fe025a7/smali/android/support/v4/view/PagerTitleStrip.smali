.class public Landroid/support/v4/view/PagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "PagerTitleStrip.java"


# annotations
.annotation runtime Landroid/support/v4/view/ViewPager$DecorView;
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

.field private static final SIDE_ALPHA:F = 0.6f

.field private static final TAG:Ljava/lang/String; = "PagerTitleStrip"

.field private static final TEXT_ATTRS:[I

.field private static final TEXT_SPACING:I = 0x10


# instance fields
.field mCurrText:Landroid/widget/TextView;

.field private mGravity:I

.field private mLastKnownCurrentPage:I

.field private mLastKnownPositionOffset:F

.field mNextText:Landroid/widget/TextView;

.field private mNonPrimaryAlpha:I

.field private final mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

.field mPager:Landroid/support/v4/view/ViewPager;

.field mPrevText:Landroid/widget/TextView;

.field private mScaledTextSpacing:I

.field mTextColor:I

.field private mUpdatingPositions:Z

.field private mUpdatingText:Z

.field private mWatchingAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/view/PagerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101038c

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->TEXT_ATTRS:[I

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 106
    new-instance v0, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs;

    invoke-direct {v0}, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs;-><init>()V

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v0, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase;

    invoke-direct {v0}, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase;-><init>()V

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

    goto :goto_0

    .line 68
    nop

    :array_0
    .array-data 4
        0x1010034
        0x1010095
        0x1010098
        0x10100af
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 57
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 64
    new-instance v1, Landroid/support/v4/view/PagerTitleStrip$PageListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/v4/view/PagerTitleStrip$PageListener;-><init>(Landroid/support/v4/view/PagerTitleStrip;Landroid/support/v4/view/PagerTitleStrip$1;)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    .line 123
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 124
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 125
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 127
    sget-object v1, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 128
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 129
    if-eqz v2, :cond_0

    .line 130
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v3, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 131
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v3, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 132
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v3, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 134
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 135
    if-eqz v3, :cond_1

    .line 136
    int-to-float v3, v3

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/view/PagerTitleStrip;->setTextSize(IF)V

    .line 138
    :cond_1
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 140
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    :cond_2
    const/4 v3, 0x3

    const/16 v4, 0x50

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    .line 145
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    .line 148
    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v1}, Landroid/support/v4/view/PagerTitleStrip;->setNonPrimaryAlpha(F)V

    .line 150
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 151
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 152
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 155
    if-eqz v2, :cond_3

    .line 156
    sget-object v1, Landroid/support/v4/view/PagerTitleStrip;->TEXT_ATTRS:[I

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 157
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 158
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    :cond_3
    if-eqz v0, :cond_4

    .line 162
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 163
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 164
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 171
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 172
    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    .line 173
    return-void

    .line 166
    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 167
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 168
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/support/v4/view/PagerTitleStrip;)F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    return v0
.end method

.method private static setSingleLineAllCaps(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 113
    sget-object v0, Landroid/support/v4/view/PagerTitleStrip;->IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 114
    return-void
.end method


# virtual methods
.method getMinHeight()I
    .locals 2

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 472
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 473
    if-eqz v1, :cond_0

    .line 474
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 476
    :cond_0
    return v0
.end method

.method public getTextSpacing()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 247
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 249
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 250
    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 256
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    .line 258
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 259
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->addOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 260
    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    .line 261
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/PagerAdapter;

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 262
    return-void

    .line 261
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 266
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 267
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 269
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 270
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 271
    iput-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    .line 273
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 464
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 465
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 466
    :cond_0
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 468
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, -0x2

    .line 428
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 429
    if-eq v0, v6, :cond_0

    .line 430
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must measure with an exact width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 434
    invoke-static {p2, v0, v5}, Landroid/support/v4/view/PagerTitleStrip;->getChildMeasureSpec(III)I

    move-result v1

    .line 437
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 438
    int-to-float v3, v2

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 439
    invoke-static {p1, v3, v5}, Landroid/support/v4/view/PagerTitleStrip;->getChildMeasureSpec(III)I

    move-result v3

    .line 442
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v1}, Landroid/widget/TextView;->measure(II)V

    .line 443
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v1}, Landroid/widget/TextView;->measure(II)V

    .line 444
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v1}, Landroid/widget/TextView;->measure(II)V

    .line 447
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 448
    if-ne v1, v6, :cond_1

    .line 449
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 456
    :goto_0
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    .line 457
    shl-int/lit8 v1, v1, 0x10

    invoke-static {v0, p2, v1}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v0

    .line 459
    invoke-virtual {p0, v2, v0}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    .line 460
    return-void

    .line 451
    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 452
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getMinHeight()I

    move-result v3

    .line 453
    add-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    if-nez v0, :cond_0

    .line 317
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 319
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .prologue
    .line 241
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    .line 242
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 243
    return-void
.end method

.method public setNonPrimaryAlpha(F)V
    .locals 3

    .prologue
    .line 198
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    .line 199
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 200
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    return-void
.end method

.method public setTextColor(I)V
    .locals 3

    .prologue
    .line 211
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    .line 212
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 214
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 230
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 231
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 232
    return-void
.end method

.method public setTextSpacing(I)V
    .locals 0

    .prologue
    .line 181
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    .line 182
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 183
    return-void
.end method

.method updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 1

    .prologue
    .line 322
    if-eqz p1, :cond_0

    .line 323
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 326
    :cond_0
    if-eqz p2, :cond_1

    .line 327
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 328
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 330
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    .line 331
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 332
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 333
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    .line 334
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 336
    :cond_2
    return-void
.end method

.method updateText(ILandroid/support/v4/view/PagerAdapter;)V
    .locals 6

    .prologue
    const/high16 v5, -0x80000000

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 276
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 277
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    .line 280
    if-lez p1, :cond_4

    if-eqz p2, :cond_4

    .line 281
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p2, v2}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 283
    :goto_1
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    if-ge p1, v0, :cond_3

    .line 286
    invoke-virtual {p2, p1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 285
    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    add-int/lit8 v2, p1, 0x1

    if-ge v2, v0, :cond_0

    if-eqz p2, :cond_0

    .line 290
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 292
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 296
    int-to-float v0, v0

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 297
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 298
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 299
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 300
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 301
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    .line 302
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    .line 303
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    .line 305
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 307
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    if-nez v0, :cond_1

    .line 308
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 311
    :cond_1
    iput-boolean v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    .line 312
    return-void

    :cond_2
    move v0, v1

    .line 276
    goto :goto_0

    :cond_3
    move-object v2, v3

    .line 286
    goto :goto_2

    :cond_4
    move-object v2, v3

    goto :goto_1
.end method

.method updateTextPositions(IFZ)V
    .locals 18

    .prologue
    .line 339
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    .line 345
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    .line 350
    div-int/lit8 v4, v3, 0x2

    .line 352
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v7

    .line 353
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v8

    .line 354
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v9

    .line 355
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v10

    .line 356
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v11

    .line 357
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v12

    .line 358
    add-int v2, v9, v4

    .line 359
    add-int v13, v10, v4

    .line 360
    sub-int v2, v7, v2

    sub-int v14, v2, v13

    .line 362
    const/high16 v2, 0x3f000000    # 0.5f

    add-float v2, v2, p2

    .line 363
    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, v2, v15

    if-lez v15, :cond_1

    .line 364
    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v2, v15

    .line 366
    :cond_1
    sub-int v13, v7, v13

    int-to-float v14, v14

    mul-float/2addr v2, v14

    float-to-int v2, v2

    sub-int v2, v13, v2

    .line 367
    sub-int v13, v2, v4

    .line 368
    add-int v14, v13, v3

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    move-result v2

    .line 371
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBaseline()I

    move-result v3

    .line 372
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBaseline()I

    move-result v4

    .line 373
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 374
    sub-int v2, v15, v2

    .line 375
    sub-int v3, v15, v3

    .line 376
    sub-int/2addr v15, v4

    .line 377
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v16

    add-int v16, v16, v3

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v17

    add-int v17, v17, v15

    .line 380
    move/from16 v0, v16

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 383
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x70

    .line 388
    sparse-switch v16, :sswitch_data_0

    .line 391
    add-int v4, v11, v2

    .line 392
    add-int v2, v11, v3

    .line 393
    add-int v3, v11, v15

    .line 410
    :goto_0
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    .line 411
    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v2

    .line 410
    invoke-virtual {v8, v13, v2, v14, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 413
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    sub-int v2, v13, v2

    sub-int/2addr v2, v5

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 414
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    add-int/2addr v5, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    .line 415
    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v4

    .line 414
    invoke-virtual {v8, v2, v4, v5, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 417
    sub-int v2, v7, v10

    sub-int/2addr v2, v6

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    add-int/2addr v4, v14

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 419
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    add-int v5, v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    .line 420
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    .line 419
    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 422
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 423
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    .line 424
    :goto_1
    return-void

    .line 341
    :cond_2
    if-nez p3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 396
    :sswitch_0
    sub-int/2addr v8, v11

    sub-int/2addr v8, v12

    .line 397
    sub-int v4, v8, v4

    div-int/lit8 v8, v4, 0x2

    .line 398
    add-int v4, v8, v2

    .line 399
    add-int v2, v8, v3

    .line 400
    add-int v3, v8, v15

    .line 401
    goto :goto_0

    .line 403
    :sswitch_1
    sub-int/2addr v8, v12

    sub-int/2addr v8, v4

    .line 404
    add-int v4, v8, v2

    .line 405
    add-int v2, v8, v3

    .line 406
    add-int v3, v8, v15

    goto :goto_0

    .line 388
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method
