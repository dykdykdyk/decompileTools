.class public final Landroid/support/a/a/k;
.super Landroid/support/a/a/j;
.source "VectorDrawableCompat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field static final b:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field c:Landroid/support/a/a/q;

.field d:Z

.field private e:Landroid/graphics/PorterDuffColorFilter;

.field private f:Landroid/graphics/ColorFilter;

.field private g:Z

.field private h:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final i:[F

.field private final j:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/a/a/k;->b:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/support/a/a/j;-><init>()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/a/a/k;->d:Z

    .line 107
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/a/a/k;->i:[F

    .line 108
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/k;->j:Landroid/graphics/Matrix;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/k;->k:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/support/a/a/q;

    invoke-direct {v0}, Landroid/support/a/a/q;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    .line 113
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/support/a/a/k;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/support/a/a/q;)V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/support/a/a/j;-><init>()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/a/a/k;->d:Z

    .line 107
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/a/a/k;->i:[F

    .line 108
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/k;->j:Landroid/graphics/Matrix;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/k;->k:Landroid/graphics/Rect;

    .line 116
    iput-object p1, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    .line 117
    iget-object v0, p1, Landroid/support/a/a/q;->c:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Landroid/support/a/a/q;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Landroid/support/a/a/k;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/k;->e:Landroid/graphics/PorterDuffColorFilter;

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/a/a/q;B)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/support/a/a/k;-><init>(Landroid/support/a/a/q;)V

    return-void
.end method

.method static synthetic a(IF)I
    .locals 2

    .prologue
    .line 67
    .line 22446
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 22447
    const v1, 0xffffff

    and-int/2addr v1, p0

    .line 22448
    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    .line 67
    return v0
.end method

.method private a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .prologue
    .line 259
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 260
    :cond_0
    const/4 v0, 0x0

    .line 265
    :goto_0
    return-object v0

    .line 264
    :cond_1
    invoke-virtual {p0}, Landroid/support/a/a/k;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 265
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/a/a/k;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 404
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 405
    new-instance v0, Landroid/support/a/a/k;

    invoke-direct {v0}, Landroid/support/a/a/k;-><init>()V

    .line 406
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    .line 407
    new-instance v1, Landroid/support/a/a/r;

    iget-object v2, v0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    .line 408
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/a/a/r;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object v1, v0, Landroid/support/a/a/k;->h:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 429
    :goto_0
    return-object v0

    .line 413
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 414
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 416
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v4, :cond_2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 420
    :cond_2
    if-eq v2, v4, :cond_3

    .line 421
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 424
    :catch_0
    move-exception v0

    .line 425
    const-string v1, "VectorDrawableCompat"

    const-string v2, "parser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 423
    :cond_3
    :try_start_1
    invoke-static {p0, v0, v1, p2}, Landroid/support/a/a/k;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/a/a/k;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 426
    :catch_1
    move-exception v0

    .line 427
    const-string v1, "VectorDrawableCompat"

    const-string v2, "parser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/a/a/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    new-instance v0, Landroid/support/a/a/k;

    invoke-direct {v0}, Landroid/support/a/a/k;-><init>()V

    .line 441
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/a/a/k;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 442
    return-object v0
.end method

.method private b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    iget-object v4, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    .line 575
    iget-object v5, v4, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    .line 576
    const/4 v3, 0x1

    .line 580
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 581
    invoke-static {v5}, Landroid/support/a/a/p;->a(Landroid/support/a/a/p;)Landroid/support/a/a/n;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 584
    :goto_0
    const/4 v7, 0x1

    if-eq v2, v7, :cond_a

    .line 585
    const/4 v7, 0x2

    if-ne v2, v7, :cond_8

    .line 586
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 587
    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/a/a/n;

    .line 588
    const-string v8, "path"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 589
    new-instance v3, Landroid/support/a/a/m;

    invoke-direct {v3}, Landroid/support/a/a/m;-><init>()V

    .line 14555
    sget-object v7, Landroid/support/a/a/a;->c:[I

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {p1, v0, v1, v7}, Landroid/support/a/a/j;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 14557
    move-object/from16 v0, p2

    invoke-virtual {v3, v7, v0}, Landroid/support/a/a/m;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 14558
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 591
    iget-object v2, v2, Landroid/support/a/a/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15399
    iget-object v2, v3, Landroid/support/a/a/o;->n:Ljava/lang/String;

    .line 592
    if-eqz v2, :cond_0

    .line 593
    iget-object v2, v5, Landroid/support/a/a/p;->g:Landroid/support/v4/util/ArrayMap;

    .line 16399
    iget-object v7, v3, Landroid/support/a/a/o;->n:Ljava/lang/String;

    .line 593
    invoke-virtual {v2, v7, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    :cond_0
    const/4 v2, 0x0

    .line 596
    iget v7, v4, Landroid/support/a/a/q;->a:I

    iget v3, v3, Landroid/support/a/a/m;->o:I

    or-int/2addr v3, v7

    iput v3, v4, Landroid/support/a/a/q;->a:I

    .line 622
    :goto_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v13, v3

    move v3, v2

    move v2, v13

    goto :goto_0

    .line 597
    :cond_1
    const-string v8, "clip-path"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 598
    new-instance v7, Landroid/support/a/a/l;

    invoke-direct {v7}, Landroid/support/a/a/l;-><init>()V

    .line 16444
    const-string v8, "pathData"

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Landroid/support/a/a/i;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    .line 16445
    if-eqz v8, :cond_2

    .line 16448
    sget-object v8, Landroid/support/a/a/a;->d:[I

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {p1, v0, v1, v8}, Landroid/support/a/a/j;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 16450
    invoke-virtual {v7, v8}, Landroid/support/a/a/l;->a(Landroid/content/res/TypedArray;)V

    .line 16451
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 600
    :cond_2
    iget-object v2, v2, Landroid/support/a/a/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17399
    iget-object v2, v7, Landroid/support/a/a/o;->n:Ljava/lang/String;

    .line 601
    if-eqz v2, :cond_3

    .line 602
    iget-object v2, v5, Landroid/support/a/a/p;->g:Landroid/support/v4/util/ArrayMap;

    .line 18399
    iget-object v8, v7, Landroid/support/a/a/o;->n:Ljava/lang/String;

    .line 602
    invoke-virtual {v2, v8, v7}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    :cond_3
    iget v2, v4, Landroid/support/a/a/q;->a:I

    iget v7, v7, Landroid/support/a/a/l;->o:I

    or-int/2addr v2, v7

    iput v2, v4, Landroid/support/a/a/q;->a:I

    move v2, v3

    .line 605
    goto :goto_1

    :cond_4
    const-string v8, "group"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 606
    new-instance v7, Landroid/support/a/a/n;

    invoke-direct {v7}, Landroid/support/a/a/n;-><init>()V

    .line 19206
    sget-object v8, Landroid/support/a/a/a;->b:[I

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {p1, v0, v1, v8}, Landroid/support/a/a/j;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 19217
    const/4 v9, 0x0

    iput-object v9, v7, Landroid/support/a/a/n;->l:[I

    .line 19220
    const-string v9, "rotation"

    const/4 v10, 0x5

    iget v11, v7, Landroid/support/a/a/n;->c:F

    move-object/from16 v0, p2

    invoke-static {v8, v0, v9, v10, v11}, Landroid/support/a/a/i;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    iput v9, v7, Landroid/support/a/a/n;->c:F

    .line 19223
    const/4 v9, 0x1

    iget v10, v7, Landroid/support/a/a/n;->d:F

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    iput v9, v7, Landroid/support/a/a/n;->d:F

    .line 19224
    const/4 v9, 0x2

    iget v10, v7, Landroid/support/a/a/n;->e:F

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    iput v9, v7, Landroid/support/a/a/n;->e:F

    .line 19227
    const-string v9, "scaleX"

    const/4 v10, 0x3

    iget v11, v7, Landroid/support/a/a/n;->f:F

    move-object/from16 v0, p2

    invoke-static {v8, v0, v9, v10, v11}, Landroid/support/a/a/i;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    iput v9, v7, Landroid/support/a/a/n;->f:F

    .line 19231
    const-string v9, "scaleY"

    const/4 v10, 0x4

    iget v11, v7, Landroid/support/a/a/n;->g:F

    move-object/from16 v0, p2

    invoke-static {v8, v0, v9, v10, v11}, Landroid/support/a/a/i;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    iput v9, v7, Landroid/support/a/a/n;->g:F

    .line 19234
    const-string v9, "translateX"

    const/4 v10, 0x6

    iget v11, v7, Landroid/support/a/a/n;->h:F

    move-object/from16 v0, p2

    invoke-static {v8, v0, v9, v10, v11}, Landroid/support/a/a/i;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    iput v9, v7, Landroid/support/a/a/n;->h:F

    .line 19236
    const-string v9, "translateY"

    const/4 v10, 0x7

    iget v11, v7, Landroid/support/a/a/n;->i:F

    move-object/from16 v0, p2

    invoke-static {v8, v0, v9, v10, v11}, Landroid/support/a/a/i;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    iput v9, v7, Landroid/support/a/a/n;->i:F

    .line 19239
    const/4 v9, 0x0

    .line 19240
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 19241
    if-eqz v9, :cond_5

    .line 19242
    iput-object v9, v7, Landroid/support/a/a/n;->m:Ljava/lang/String;

    .line 19251
    :cond_5
    iget-object v9, v7, Landroid/support/a/a/n;->j:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 19252
    iget-object v9, v7, Landroid/support/a/a/n;->j:Landroid/graphics/Matrix;

    iget v10, v7, Landroid/support/a/a/n;->d:F

    neg-float v10, v10

    iget v11, v7, Landroid/support/a/a/n;->e:F

    neg-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 19253
    iget-object v9, v7, Landroid/support/a/a/n;->j:Landroid/graphics/Matrix;

    iget v10, v7, Landroid/support/a/a/n;->f:F

    iget v11, v7, Landroid/support/a/a/n;->g:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 19254
    iget-object v9, v7, Landroid/support/a/a/n;->j:Landroid/graphics/Matrix;

    iget v10, v7, Landroid/support/a/a/n;->c:F

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 19255
    iget-object v9, v7, Landroid/support/a/a/n;->j:Landroid/graphics/Matrix;

    iget v10, v7, Landroid/support/a/a/n;->h:F

    iget v11, v7, Landroid/support/a/a/n;->d:F

    add-float/2addr v10, v11

    iget v11, v7, Landroid/support/a/a/n;->i:F

    iget v12, v7, Landroid/support/a/a/n;->e:F

    add-float/2addr v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 19209
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 608
    iget-object v2, v2, Landroid/support/a/a/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20198
    iget-object v2, v7, Landroid/support/a/a/n;->m:Ljava/lang/String;

    .line 610
    if-eqz v2, :cond_6

    .line 611
    iget-object v2, v5, Landroid/support/a/a/p;->g:Landroid/support/v4/util/ArrayMap;

    .line 21198
    iget-object v8, v7, Landroid/support/a/a/n;->m:Ljava/lang/String;

    .line 611
    invoke-virtual {v2, v8, v7}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    :cond_6
    iget v2, v4, Landroid/support/a/a/q;->a:I

    .line 22130
    iget v7, v7, Landroid/support/a/a/n;->k:I

    .line 614
    or-int/2addr v2, v7

    iput v2, v4, Landroid/support/a/a/q;->a:I

    :cond_7
    move v2, v3

    .line 616
    goto/16 :goto_1

    :cond_8
    const/4 v7, 0x3

    if-ne v2, v7, :cond_9

    .line 617
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 618
    const-string v7, "group"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 619
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_9
    move v2, v3

    goto/16 :goto_1

    .line 630
    :cond_a
    if-eqz v3, :cond_c

    .line 631
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 633
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 634
    const-string v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 636
    :cond_b
    const-string v3, "path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 638
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "no "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " defined"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 640
    :cond_c
    return-void
.end method


# virtual methods
.method public final bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/a/a/j;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final canApplyTheme()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    .line 367
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic clearColorFilter()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/a/a/j;->clearColorFilter()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/16 v10, 0x800

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 150
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Landroid/support/a/a/k;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/a/a/k;->copyBounds(Landroid/graphics/Rect;)V

    .line 157
    iget-object v0, p0, Landroid/support/a/a/k;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/k;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    .line 163
    iget-object v0, p0, Landroid/support/a/a/k;->f:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/support/a/a/k;->e:Landroid/graphics/PorterDuffColorFilter;

    .line 169
    :goto_1
    iget-object v1, p0, Landroid/support/a/a/k;->j:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 170
    iget-object v1, p0, Landroid/support/a/a/k;->j:Landroid/graphics/Matrix;

    iget-object v3, p0, Landroid/support/a/a/k;->i:[F

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 171
    iget-object v1, p0, Landroid/support/a/a/k;->i:[F

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 172
    iget-object v1, p0, Landroid/support/a/a/k;->i:[F

    const/4 v6, 0x4

    aget v1, v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 174
    iget-object v6, p0, Landroid/support/a/a/k;->i:[F

    aget v6, v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 175
    iget-object v7, p0, Landroid/support/a/a/k;->i:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 178
    cmpl-float v6, v6, v9

    if-nez v6, :cond_2

    cmpl-float v6, v7, v9

    if-eqz v6, :cond_d

    :cond_2
    move v1, v2

    .line 183
    :goto_2
    iget-object v3, p0, Landroid/support/a/a/k;->k:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 184
    iget-object v3, p0, Landroid/support/a/a/k;->k:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 185
    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 186
    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 188
    if-lez v2, :cond_0

    if-lez v3, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 193
    iget-object v1, p0, Landroid/support/a/a/k;->k:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v7, p0, Landroid/support/a/a/k;->k:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 205
    iget-object v1, p0, Landroid/support/a/a/k;->k:Landroid/graphics/Rect;

    invoke-virtual {v1, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 207
    iget-object v7, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    .line 1839
    iget-object v1, v7, Landroid/support/a/a/q;->f:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 1848
    iget-object v1, v7, Landroid/support/a/a/q;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v2, v1, :cond_7

    iget-object v1, v7, Landroid/support/a/a/q;->f:Landroid/graphics/Bitmap;

    .line 1849
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v3, v1, :cond_7

    move v1, v4

    .line 1839
    :goto_3
    if-nez v1, :cond_4

    .line 1840
    :cond_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v7, Landroid/support/a/a/q;->f:Landroid/graphics/Bitmap;

    .line 1842
    iput-boolean v4, v7, Landroid/support/a/a/q;->k:Z

    .line 208
    :cond_4
    iget-boolean v1, p0, Landroid/support/a/a/k;->d:Z

    if-nez v1, :cond_8

    .line 209
    iget-object v1, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    invoke-virtual {v1, v2, v3}, Landroid/support/a/a/q;->a(II)V

    .line 216
    :cond_5
    :goto_4
    iget-object v2, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    iget-object v3, p0, Landroid/support/a/a/k;->k:Landroid/graphics/Rect;

    .line 4812
    iget-object v1, v2, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    .line 4944
    iget v1, v1, Landroid/support/a/a/p;->e:I

    .line 4812
    const/16 v7, 0xff

    if-ge v1, v7, :cond_a

    move v1, v4

    .line 3819
    :goto_5
    if-nez v1, :cond_b

    if-nez v0, :cond_b

    .line 3820
    const/4 v0, 0x0

    .line 3808
    :goto_6
    iget-object v1, v2, Landroid/support/a/a/q;->f:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 217
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 163
    :cond_6
    iget-object v0, p0, Landroid/support/a/a/k;->f:Landroid/graphics/ColorFilter;

    goto/16 :goto_1

    :cond_7
    move v1, v5

    .line 1852
    goto :goto_3

    .line 211
    :cond_8
    iget-object v1, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    .line 1856
    iget-boolean v7, v1, Landroid/support/a/a/q;->k:Z

    if-nez v7, :cond_9

    iget-object v7, v1, Landroid/support/a/a/q;->g:Landroid/content/res/ColorStateList;

    iget-object v8, v1, Landroid/support/a/a/q;->c:Landroid/content/res/ColorStateList;

    if-ne v7, v8, :cond_9

    iget-object v7, v1, Landroid/support/a/a/q;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v8, v1, Landroid/support/a/a/q;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v7, v8, :cond_9

    iget-boolean v7, v1, Landroid/support/a/a/q;->j:Z

    iget-boolean v8, v1, Landroid/support/a/a/q;->e:Z

    if-ne v7, v8, :cond_9

    iget v7, v1, Landroid/support/a/a/q;->i:I

    iget-object v1, v1, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    .line 1944
    iget v1, v1, Landroid/support/a/a/p;->e:I

    .line 1860
    if-ne v7, v1, :cond_9

    move v1, v4

    .line 211
    :goto_7
    if-nez v1, :cond_5

    .line 212
    iget-object v1, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    invoke-virtual {v1, v2, v3}, Landroid/support/a/a/q;->a(II)V

    .line 213
    iget-object v1, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    .line 2869
    iget-object v2, v1, Landroid/support/a/a/q;->c:Landroid/content/res/ColorStateList;

    iput-object v2, v1, Landroid/support/a/a/q;->g:Landroid/content/res/ColorStateList;

    .line 2870
    iget-object v2, v1, Landroid/support/a/a/q;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v2, v1, Landroid/support/a/a/q;->h:Landroid/graphics/PorterDuff$Mode;

    .line 2871
    iget-object v2, v1, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    .line 2944
    iget v2, v2, Landroid/support/a/a/p;->e:I

    .line 2871
    iput v2, v1, Landroid/support/a/a/q;->i:I

    .line 2872
    iget-boolean v2, v1, Landroid/support/a/a/q;->e:Z

    iput-boolean v2, v1, Landroid/support/a/a/q;->j:Z

    .line 2873
    iput-boolean v5, v1, Landroid/support/a/a/q;->k:Z

    goto :goto_4

    :cond_9
    move v1, v5

    .line 1863
    goto :goto_7

    :cond_a
    move v1, v5

    .line 4812
    goto :goto_5

    .line 3823
    :cond_b
    iget-object v1, v2, Landroid/support/a/a/q;->l:Landroid/graphics/Paint;

    if-nez v1, :cond_c

    .line 3824
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v2, Landroid/support/a/a/q;->l:Landroid/graphics/Paint;

    .line 3825
    iget-object v1, v2, Landroid/support/a/a/q;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 3827
    :cond_c
    iget-object v1, v2, Landroid/support/a/a/q;->l:Landroid/graphics/Paint;

    iget-object v4, v2, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    .line 5944
    iget v4, v4, Landroid/support/a/a/p;->e:I

    .line 3827
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3828
    iget-object v1, v2, Landroid/support/a/a/q;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 3829
    iget-object v0, v2, Landroid/support/a/a/q;->l:Landroid/graphics/Paint;

    goto :goto_6

    :cond_d
    move v2, v3

    goto/16 :goto_2
.end method

.method public final getAlpha()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 226
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    iget-object v0, v0, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    .line 6944
    iget v0, v0, Landroid/support/a/a/p;->e:I

    goto :goto_0
.end method

.method public final getChangingConfigurations()I
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    .line 684
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/a/a/j;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    invoke-virtual {v1}, Landroid/support/a/a/q;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/a/a/j;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Landroid/support/a/a/r;

    iget-object v1, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/a/a/r;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 145
    :goto_0
    return-object v0

    .line 144
    :cond_0
    iget-object v0, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    invoke-virtual {p0}, Landroid/support/a/a/k;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/support/a/a/q;->a:I

    .line 145
    iget-object v0, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    goto :goto_0
.end method

.method public final bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/a/a/j;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 357
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    iget-object v0, v0, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    iget v0, v0, Landroid/support/a/a/p;->b:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 348
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    iget-object v0, v0, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    iget v0, v0, Landroid/support/a/a/p;->a:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public final bridge synthetic getLayoutDirection()I
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/a/a/j;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getMinimumHeight()I
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/a/a/j;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getMinimumWidth()I
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/a/a/j;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 339
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public final bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/a/a/j;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic getState()[I
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/a/a/j;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 66
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
    .line 455
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 461
    :goto_0
    return-void

    .line 460
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/a/a/k;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x437f0000    # 255.0f

    const/4 v6, 0x0

    .line 466
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 485
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v1, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    .line 472
    new-instance v0, Landroid/support/a/a/p;

    invoke-direct {v0}, Landroid/support/a/a/p;-><init>()V

    .line 473
    iput-object v0, v1, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    .line 475
    sget-object v0, Landroid/support/a/a/a;->a:[I

    invoke-static {p1, p4, p3, v0}, Landroid/support/a/a/k;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 9513
    iget-object v3, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    .line 9514
    iget-object v4, v3, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    .line 9519
    const-string v0, "tintMode"

    const/4 v5, 0x6

    invoke-static {v2, p2, v0, v5}, Landroid/support/a/a/i;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 9521
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 10493
    packed-switch v5, :pswitch_data_0

    .line 9521
    :goto_1
    :pswitch_0
    iput-object v0, v3, Landroid/support/a/a/q;->d:Landroid/graphics/PorterDuff$Mode;

    .line 9524
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 9525
    if-eqz v0, :cond_1

    .line 9526
    iput-object v0, v3, Landroid/support/a/a/q;->c:Landroid/content/res/ColorStateList;

    .line 9529
    :cond_1
    const-string v5, "autoMirrored"

    iget-boolean v0, v3, Landroid/support/a/a/q;->e:Z

    .line 11039
    invoke-static {p2, v5}, Landroid/support/a/a/i;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    .line 11040
    if-nez v5, :cond_2

    .line 9529
    :goto_2
    iput-boolean v0, v3, Landroid/support/a/a/q;->e:Z

    .line 9532
    const-string v0, "viewportWidth"

    const/4 v3, 0x7

    iget v5, v4, Landroid/support/a/a/p;->c:F

    invoke-static {v2, p2, v0, v3, v5}, Landroid/support/a/a/i;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v4, Landroid/support/a/a/p;->c:F

    .line 9536
    const-string v0, "viewportHeight"

    const/16 v3, 0x8

    iget v5, v4, Landroid/support/a/a/p;->d:F

    invoke-static {v2, p2, v0, v3, v5}, Landroid/support/a/a/i;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v4, Landroid/support/a/a/p;->d:F

    .line 9540
    iget v0, v4, Landroid/support/a/a/p;->c:F

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_3

    .line 9541
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10495
    :pswitch_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 10497
    :pswitch_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 10499
    :pswitch_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 10501
    :pswitch_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 10503
    :pswitch_5
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 10505
    :pswitch_6
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 11043
    :cond_2
    const/4 v5, 0x5

    invoke-virtual {v2, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    goto :goto_2

    .line 9543
    :cond_3
    iget v0, v4, Landroid/support/a/a/p;->d:F

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_4

    .line 9544
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9548
    :cond_4
    const/4 v0, 0x3

    iget v3, v4, Landroid/support/a/a/p;->a:F

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v4, Landroid/support/a/a/p;->a:F

    .line 9550
    const/4 v0, 0x2

    iget v3, v4, Landroid/support/a/a/p;->b:F

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v4, Landroid/support/a/a/p;->b:F

    .line 9552
    iget v0, v4, Landroid/support/a/a/p;->a:F

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_5

    .line 9553
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<vector> tag requires width > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9555
    :cond_5
    iget v0, v4, Landroid/support/a/a/p;->b:F

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_6

    .line 9556
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<vector> tag requires height > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9561
    :cond_6
    const-string v0, "alpha"

    const/4 v3, 0x4

    .line 12944
    iget v5, v4, Landroid/support/a/a/p;->e:I

    .line 11955
    int-to-float v5, v5

    div-float/2addr v5, v7

    .line 9561
    invoke-static {v2, p2, v0, v3, v5}, Landroid/support/a/a/i;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    .line 12950
    mul-float/2addr v0, v7

    float-to-int v0, v0

    .line 13940
    iput v0, v4, Landroid/support/a/a/p;->e:I

    .line 9565
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 9566
    if-eqz v0, :cond_7

    .line 9567
    iput-object v0, v4, Landroid/support/a/a/p;->f:Ljava/lang/String;

    .line 9568
    iget-object v3, v4, Landroid/support/a/a/p;->g:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_7
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 480
    invoke-virtual {p0}, Landroid/support/a/a/k;->getChangingConfigurations()I

    move-result v0

    iput v0, v1, Landroid/support/a/a/q;->a:I

    .line 481
    iput-boolean v8, v1, Landroid/support/a/a/q;->k:Z

    .line 482
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/a/a/k;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 484
    iget-object v0, v1, Landroid/support/a/a/q;->c:Landroid/content/res/ColorStateList;

    iget-object v1, v1, Landroid/support/a/a/q;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Landroid/support/a/a/k;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/k;->e:Landroid/graphics/PorterDuffColorFilter;

    goto/16 :goto_0

    .line 10493
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final invalidateSelf()V
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 694
    :goto_0
    return-void

    .line 693
    :cond_0
    invoke-super {p0}, Landroid/support/a/a/j;->invalidateSelf()V

    goto :goto_0
.end method

.method public final bridge synthetic isAutoMirrored()Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/a/a/j;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public final isStateful()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    .line 315
    :goto_0
    return v0

    .line 314
    :cond_0
    invoke-super {p0}, Landroid/support/a/a/j;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    iget-object v0, v0, Landroid/support/a/a/q;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    iget-object v0, v0, Landroid/support/a/a/q;->c:Landroid/content/res/ColorStateList;

    .line 315
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic jumpToCurrentState()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/a/a/j;->jumpToCurrentState()V

    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 131
    :cond_0
    :goto_0
    return-object p0

    .line 127
    :cond_1
    iget-boolean v0, p0, Landroid/support/a/a/k;->g:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/a/a/j;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 128
    new-instance v0, Landroid/support/a/a/q;

    iget-object v1, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    invoke-direct {v0, v1}, Landroid/support/a/a/q;-><init>(Landroid/support/a/a/q;)V

    iput-object v0, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/a/a/k;->g:Z

    goto :goto_0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 677
    :cond_0
    return-void
.end method

.method protected final onStateChange([I)Z
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 330
    :goto_0
    return v0

    .line 324
    :cond_0
    iget-object v0, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    .line 325
    iget-object v1, v0, Landroid/support/a/a/q;->c:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/a/a/q;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_1

    .line 326
    iget-object v1, v0, Landroid/support/a/a/q;->c:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Landroid/support/a/a/q;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v1, v0}, Landroid/support/a/a/k;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/k;->e:Landroid/graphics/PorterDuffColorFilter;

    .line 327
    invoke-virtual {p0}, Landroid/support/a/a/k;->invalidateSelf()V

    .line 328
    const/4 v0, 0x1

    goto :goto_0

    .line 330
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 703
    :goto_0
    return-void

    .line 702
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/a/a/j;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public final setAlpha(I)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    iget-object v0, v0, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    .line 7944
    iget v0, v0, Landroid/support/a/a/p;->e:I

    .line 236
    if-eq v0, p1, :cond_0

    .line 237
    iget-object v0, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    iget-object v0, v0, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    .line 8940
    iput p1, v0, Landroid/support/a/a/p;->e:I

    .line 238
    invoke-virtual {p0}, Landroid/support/a/a/k;->invalidateSelf()V

    goto :goto_0
.end method

.method public final bridge synthetic setAutoMirrored(Z)V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/a/a/j;->setAutoMirrored(Z)V

    return-void
.end method

.method public final bridge synthetic setChangingConfigurations(I)V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/a/a/j;->setChangingConfigurations(I)V

    return-void
.end method

.method public final bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Landroid/support/a/a/j;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iput-object p1, p0, Landroid/support/a/a/k;->f:Landroid/graphics/ColorFilter;

    .line 250
    invoke-virtual {p0}, Landroid/support/a/a/k;->invalidateSelf()V

    goto :goto_0
.end method

.method public final bridge synthetic setFilterBitmap(Z)V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/a/a/j;->setFilterBitmap(Z)V

    return-void
.end method

.method public final bridge synthetic setHotspot(FF)V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Landroid/support/a/a/j;->setHotspot(FF)V

    return-void
.end method

.method public final bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/a/a/j;->setHotspotBounds(IIII)V

    return-void
.end method

.method public final bridge synthetic setState([I)Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/a/a/j;->setState([I)Z

    move-result v0

    return v0
.end method

.method public final setTint(I)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 276
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/a/a/k;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    .line 286
    iget-object v1, v0, Landroid/support/a/a/q;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 287
    iput-object p1, v0, Landroid/support/a/a/q;->c:Landroid/content/res/ColorStateList;

    .line 288
    iget-object v0, v0, Landroid/support/a/a/q;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Landroid/support/a/a/k;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/k;->e:Landroid/graphics/PorterDuffColorFilter;

    .line 289
    invoke-virtual {p0}, Landroid/support/a/a/k;->invalidateSelf()V

    goto :goto_0
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Landroid/support/a/a/k;->c:Landroid/support/a/a/q;

    .line 301
    iget-object v1, v0, Landroid/support/a/a/q;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    .line 302
    iput-object p1, v0, Landroid/support/a/a/q;->d:Landroid/graphics/PorterDuff$Mode;

    .line 303
    iget-object v0, v0, Landroid/support/a/a/q;->c:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Landroid/support/a/a/k;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/k;->e:Landroid/graphics/PorterDuffColorFilter;

    .line 304
    invoke-virtual {p0}, Landroid/support/a/a/k;->invalidateSelf()V

    goto :goto_0
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 710
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/a/a/j;->setVisible(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public final unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Landroid/support/a/a/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 720
    :goto_0
    return-void

    .line 719
    :cond_0
    invoke-super {p0, p1}, Landroid/support/a/a/j;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
