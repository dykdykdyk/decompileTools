.class public final Landroid/support/a/a/b;
.super Landroid/support/a/a/j;
.source "AnimatedVectorDrawableCompat.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private b:Landroid/support/a/a/d;

.field private c:Landroid/content/Context;

.field private d:Landroid/animation/ArgbEvaluator;

.field private final e:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/a/a/b;-><init>(Landroid/content/Context;B)V

    .line 83
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/a/a/b;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/a/a/b;-><init>(Landroid/content/Context;B)V

    .line 87
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/support/a/a/j;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/a/a/b;->d:Landroid/animation/ArgbEvaluator;

    .line 635
    new-instance v0, Landroid/support/a/a/c;

    invoke-direct {v0, p0}, Landroid/support/a/a/c;-><init>(Landroid/support/a/a/b;)V

    iput-object v0, p0, Landroid/support/a/a/b;->e:Landroid/graphics/drawable/Drawable$Callback;

    .line 92
    iput-object p1, p0, Landroid/support/a/a/b;->c:Landroid/content/Context;

    .line 96
    new-instance v0, Landroid/support/a/a/d;

    invoke-direct {v0}, Landroid/support/a/a/d;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    .line 99
    return-void
.end method

.method static synthetic a(Landroid/support/a/a/b;)Landroid/graphics/drawable/Drawable$Callback;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/a/a/b;->e:Landroid/graphics/drawable/Drawable$Callback;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/a/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Landroid/support/a/a/b;

    invoke-direct {v0, p0}, Landroid/support/a/a/b;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/a/a/b;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 163
    return-object v0
.end method

.method private a(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 533
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 534
    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    .line 535
    if-eqz v2, :cond_0

    .line 536
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 537
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-direct {p0, v0}, Landroid/support/a/a/b;->a(Landroid/animation/Animator;)V

    .line 536
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 541
    :cond_0
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 542
    check-cast p1, Landroid/animation/ObjectAnimator;

    .line 543
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 544
    const-string v1, "fillColor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "strokeColor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 545
    :cond_1
    iget-object v0, p0, Landroid/support/a/a/b;->d:Landroid/animation/ArgbEvaluator;

    if-nez v0, :cond_2

    .line 546
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/b;->d:Landroid/animation/ArgbEvaluator;

    .line 548
    :cond_2
    iget-object v0, p0, Landroid/support/a/a/b;->d:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 551
    :cond_3
    return-void
.end method

.method private a()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 587
    iget-object v0, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v3, v0, Landroid/support/a/a/d;->c:Ljava/util/ArrayList;

    .line 588
    if-nez v3, :cond_0

    move v0, v1

    .line 598
    :goto_0
    return v0

    .line 591
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 592
    :goto_1
    if-ge v2, v4, :cond_2

    .line 593
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 594
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    const/4 v0, 0x1

    goto :goto_0

    .line 592
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 598
    goto :goto_0
.end method


# virtual methods
.method public final applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 410
    :cond_0
    return-void
.end method

.method public final canApplyTheme()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 419
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic clearColorFilter()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/a/a/j;->clearColorFilter()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v0, v0, Landroid/support/a/a/d;->b:Landroid/support/a/a/k;

    invoke-virtual {v0, p1}, Landroid/support/a/a/k;->draw(Landroid/graphics/Canvas;)V

    .line 197
    invoke-direct {p0}, Landroid/support/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Landroid/support/a/a/b;->invalidateSelf()V

    goto :goto_0
.end method

.method public final getAlpha()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 232
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v0, v0, Landroid/support/a/a/d;->b:Landroid/support/a/a/k;

    invoke-virtual {v0}, Landroid/support/a/a/k;->getAlpha()I

    move-result v0

    goto :goto_0
.end method

.method public final getChangingConfigurations()I
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    .line 187
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/a/a/j;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget v1, v1, Landroid/support/a/a/d;->a:I

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/a/a/j;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Landroid/support/a/a/e;

    iget-object v1, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/a/a/e;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 179
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/a/a/j;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 321
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v0, v0, Landroid/support/a/a/d;->b:Landroid/support/a/a/k;

    invoke-virtual {v0}, Landroid/support/a/a/k;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 313
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v0, v0, Landroid/support/a/a/d;->b:Landroid/support/a/a/k;

    invoke-virtual {v0}, Landroid/support/a/a/k;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public final bridge synthetic getLayoutDirection()I
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/a/a/j;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getMinimumHeight()I
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/a/a/j;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getMinimumWidth()I
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/a/a/j;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 305
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v0, v0, Landroid/support/a/a/d;->b:Landroid/support/a/a/k;

    invoke-virtual {v0}, Landroid/support/a/a/k;->getOpacity()I

    move-result v0

    goto :goto_0
.end method

.method public final bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/a/a/j;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic getState()[I
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/a/a/j;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/a/a/j;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/a/a/b;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 401
    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 339
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 395
    :cond_0
    return-void

    .line 343
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 344
    :goto_0
    if-eq v0, v6, :cond_0

    .line 345
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 346
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 350
    const-string v1, "animated-vector"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 351
    sget-object v0, Landroid/support/a/a/a;->e:[I

    .line 1330
    if-nez p4, :cond_5

    .line 1331
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 355
    :goto_1
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 360
    if-eqz v1, :cond_3

    .line 361
    invoke-static {p1, v1, p4}, Landroid/support/a/a/k;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/a/a/k;

    move-result-object v1

    .line 1663
    iput-boolean v5, v1, Landroid/support/a/a/k;->d:Z

    .line 364
    iget-object v2, p0, Landroid/support/a/a/b;->e:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v1, v2}, Landroid/support/a/a/k;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 365
    iget-object v2, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v2, v2, Landroid/support/a/a/d;->b:Landroid/support/a/a/k;

    if-eqz v2, :cond_2

    .line 366
    iget-object v2, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v2, v2, Landroid/support/a/a/d;->b:Landroid/support/a/a/k;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/a/a/k;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 368
    :cond_2
    iget-object v2, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iput-object v1, v2, Landroid/support/a/a/d;->b:Landroid/support/a/a/k;

    .line 370
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 393
    :cond_4
    :goto_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 1333
    :cond_5
    invoke-virtual {p4, p3, v0, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_1

    .line 371
    :cond_6
    const-string v1, "target"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 372
    sget-object v0, Landroid/support/a/a/a;->f:[I

    .line 373
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 375
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 380
    if-eqz v2, :cond_9

    .line 381
    iget-object v3, p0, Landroid/support/a/a/b;->c:Landroid/content/Context;

    if-eqz v3, :cond_a

    .line 382
    iget-object v3, p0, Landroid/support/a/a/b;->c:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 2554
    iget-object v3, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v3, v3, Landroid/support/a/a/d;->b:Landroid/support/a/a/k;

    .line 3135
    iget-object v3, v3, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    iget-object v3, v3, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    iget-object v3, v3, Landroid/support/a/a/p;->g:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2555
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 2556
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_7

    .line 2557
    invoke-direct {p0, v2}, Landroid/support/a/a/b;->a(Landroid/animation/Animator;)V

    .line 2559
    :cond_7
    iget-object v3, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v3, v3, Landroid/support/a/a/d;->c:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    .line 2560
    iget-object v3, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/support/a/a/d;->c:Ljava/util/ArrayList;

    .line 2561
    iget-object v3, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    new-instance v4, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v4}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v4, v3, Landroid/support/a/a/d;->d:Landroid/support/v4/util/ArrayMap;

    .line 2563
    :cond_8
    iget-object v3, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v3, v3, Landroid/support/a/a/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2564
    iget-object v3, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v3, v3, Landroid/support/a/a/d;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :cond_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    .line 385
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context can\'t be null when inflating animators"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic isAutoMirrored()Z
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/a/a/j;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public final isRunning()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 572
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    .line 583
    :goto_0
    return v0

    .line 575
    :cond_0
    iget-object v0, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v3, v0, Landroid/support/a/a/d;->c:Ljava/util/ArrayList;

    .line 576
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 577
    :goto_1
    if-ge v2, v4, :cond_2

    .line 578
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 579
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    const/4 v0, 0x1

    goto :goto_0

    .line 577
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 583
    goto :goto_0
.end method

.method public final isStateful()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    .line 297
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v0, v0, Landroid/support/a/a/d;->b:Landroid/support/a/a/k;

    invoke-virtual {v0}, Landroid/support/a/a/k;->isStateful()Z

    move-result v0

    goto :goto_0
.end method

.method public final bridge synthetic jumpToCurrentState()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/a/a/j;->jumpToCurrentState()V

    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 105
    return-object p0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mutate() is not supported for older platform"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v0, v0, Landroid/support/a/a/d;->b:Landroid/support/a/a/k;

    invoke-virtual {v0, p1}, Landroid/support/a/a/k;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected final onLevelChange(I)Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    .line 224
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v0, v0, Landroid/support/a/a/d;->b:Landroid/support/a/a/k;

    invoke-virtual {v0, p1}, Landroid/support/a/a/k;->setLevel(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onStateChange([I)Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 216
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v0, v0, Landroid/support/a/a/d;->b:Landroid/support/a/a/k;

    invoke-virtual {v0, p1}, Landroid/support/a/a/k;->setState([I)Z

    move-result v0

    goto :goto_0
.end method

.method public final setAlpha(I)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v0, v0, Landroid/support/a/a/d;->b:Landroid/support/a/a/k;

    invoke-virtual {v0, p1}, Landroid/support/a/a/k;->setAlpha(I)V

    goto :goto_0
.end method

.method public final bridge synthetic setAutoMirrored(Z)V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/a/a/j;->setAutoMirrored(Z)V

    return-void
.end method

.method public final bridge synthetic setChangingConfigurations(I)V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/a/a/j;->setChangingConfigurations(I)V

    return-void
.end method

.method public final bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/support/a/a/j;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v0, v0, Landroid/support/a/a/d;->b:Landroid/support/a/a/k;

    invoke-virtual {v0, p1}, Landroid/support/a/a/k;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public final bridge synthetic setFilterBitmap(Z)V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/a/a/j;->setFilterBitmap(Z)V

    return-void
.end method

.method public final bridge synthetic setHotspot(FF)V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/support/a/a/j;->setHotspot(FF)V

    return-void
.end method

.method public final bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/a/a/j;->setHotspotBounds(IIII)V

    return-void
.end method

.method public final bridge synthetic setState([I)Z
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/a/a/j;->setState([I)Z

    move-result v0

    return v0
.end method

.method public final setTint(I)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 261
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v0, v0, Landroid/support/a/a/d;->b:Landroid/support/a/a/k;

    invoke-virtual {v0, p1}, Landroid/support/a/a/k;->setTint(I)V

    goto :goto_0
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 271
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v0, v0, Landroid/support/a/a/d;->b:Landroid/support/a/a/k;

    invoke-virtual {v0, p1}, Landroid/support/a/a/k;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v0, v0, Landroid/support/a/a/d;->b:Landroid/support/a/a/k;

    invoke-virtual {v0, p1}, Landroid/support/a/a/k;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 289
    :goto_0
    return v0

    .line 288
    :cond_0
    iget-object v0, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v0, v0, Landroid/support/a/a/d;->b:Landroid/support/a/a/k;

    invoke-virtual {v0, p1, p2}, Landroid/support/a/a/k;->setVisible(ZZ)Z

    .line 289
    invoke-super {p0, p1, p2}, Landroid/support/a/a/j;->setVisible(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public final start()V
    .locals 4

    .prologue
    .line 603
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    invoke-direct {p0}, Landroid/support/a/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v2, v0, Landroid/support/a/a/d;->c:Ljava/util/ArrayList;

    .line 613
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 614
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 615
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 616
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 614
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 618
    :cond_2
    invoke-virtual {p0}, Landroid/support/a/a/b;->invalidateSelf()V

    goto :goto_0
.end method

.method public final stop()V
    .locals 4

    .prologue
    .line 623
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 633
    :cond_0
    return-void

    .line 627
    :cond_1
    iget-object v0, p0, Landroid/support/a/a/b;->b:Landroid/support/a/a/d;

    iget-object v2, v0, Landroid/support/a/a/d;->c:Ljava/util/ArrayList;

    .line 628
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 629
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 630
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 631
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 629
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
