.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild;
.implements Landroid/support/v4/view/ScrollingView;


# static fields
.field static final a:Z

.field private static final aw:Landroid/view/animation/Interpolator;

.field private static final w:[I

.field private static final x:[I

.field private static final y:Z

.field private static final z:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final A:Landroid/support/v7/widget/eq;

.field private B:Landroid/support/v7/widget/RecyclerView$SavedState;

.field private C:Z

.field private final D:Ljava/lang/Runnable;

.field private final E:Landroid/graphics/Rect;

.field private final F:Landroid/graphics/Rect;

.field private final G:Landroid/graphics/RectF;

.field private H:Landroid/support/v7/widget/dx;

.field private I:Landroid/support/v7/widget/ep;

.field private J:Z

.field private K:Z

.field private L:I

.field private M:Z

.field private N:Z

.field private O:I

.field private P:Z

.field private final Q:Z

.field private final R:Landroid/view/accessibility/AccessibilityManager;

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:Landroid/view/VelocityTracker;

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:Landroid/support/v7/widget/ek;

.field private final ag:I

.field private final ah:I

.field private ai:F

.field private aj:Z

.field private ak:Landroid/support/v7/widget/em;

.field private al:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/em;",
            ">;"
        }
    .end annotation
.end field

.field private am:Landroid/support/v7/widget/ec;

.field private an:Z

.field private ao:Landroid/support/v7/widget/ey;

.field private ap:Landroid/support/v7/widget/ea;

.field private final aq:[I

.field private ar:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private final as:[I

.field private final at:[I

.field private final au:[I

.field private av:Ljava/lang/Runnable;

.field private final ax:Landroid/support/v7/widget/go;

.field final b:Landroid/support/v7/widget/eo;

.field c:Landroid/support/v7/widget/af;

.field d:Landroid/support/v7/widget/bq;

.field final e:Landroid/support/v7/widget/gm;

.field public f:Landroid/support/v7/widget/eg;

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/ef;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/el;",
            ">;"
        }
    .end annotation
.end field

.field public i:Landroid/support/v7/widget/el;

.field j:Z

.field k:Z

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/ej;",
            ">;"
        }
    .end annotation
.end field

.field m:Z

.field n:Landroid/support/v4/widget/EdgeEffectCompat;

.field o:Landroid/support/v4/widget/EdgeEffectCompat;

.field p:Landroid/support/v4/widget/EdgeEffectCompat;

.field q:Landroid/support/v4/widget/EdgeEffectCompat;

.field r:Landroid/support/v7/widget/eb;

.field final s:Landroid/support/v7/widget/ew;

.field final t:Landroid/support/v7/widget/eu;

.field u:Z

.field v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 156
    new-array v0, v2, [I

    const v3, 0x1010436

    aput v3, v0, v1

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->w:[I

    .line 159
    new-array v0, v2, [I

    const v3, 0x10100eb

    aput v3, v0, v1

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->x:[I

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->y:Z

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_2

    move v0, v2

    :goto_1
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->a:Z

    .line 253
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->z:[Ljava/lang/Class;

    .line 439
    new-instance v0, Landroid/support/v7/widget/dt;

    invoke-direct {v0}, Landroid/support/v7/widget/dt;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->aw:Landroid/view/animation/Interpolator;

    return-void

    :cond_1
    move v0, v1

    .line 168
    goto :goto_0

    :cond_2
    move v0, v1

    .line 175
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 487
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 491
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    const/16 v6, 0x2e

    const/4 v5, -0x1

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 494
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 256
    new-instance v0, Landroid/support/v7/widget/eq;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/eq;-><init>(Landroid/support/v7/widget/RecyclerView;B)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v7/widget/eq;

    .line 258
    new-instance v0, Landroid/support/v7/widget/eo;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/eo;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    .line 275
    new-instance v0, Landroid/support/v7/widget/gm;

    invoke-direct {v0}, Landroid/support/v7/widget/gm;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    .line 289
    new-instance v0, Landroid/support/v7/widget/dr;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/dr;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Ljava/lang/Runnable;

    .line 309
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    .line 310
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    .line 311
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/graphics/RectF;

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Ljava/util/ArrayList;

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljava/util/ArrayList;

    .line 324
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    .line 341
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    .line 351
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    .line 360
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    .line 364
    new-instance v0, Landroid/support/v7/widget/bw;

    invoke-direct {v0}, Landroid/support/v7/widget/bw;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    .line 389
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    .line 390
    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    .line 401
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:F

    .line 402
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->aj:Z

    .line 404
    new-instance v0, Landroid/support/v7/widget/ew;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ew;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Landroid/support/v7/widget/ew;

    .line 406
    new-instance v0, Landroid/support/v7/widget/eu;

    invoke-direct {v0}, Landroid/support/v7/widget/eu;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 412
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    .line 413
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    .line 414
    new-instance v0, Landroid/support/v7/widget/ee;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/ee;-><init>(Landroid/support/v7/widget/RecyclerView;B)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->am:Landroid/support/v7/widget/ec;

    .line 416
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->an:Z

    .line 422
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aq:[I

    .line 425
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->as:[I

    .line 426
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->at:[I

    .line 427
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->au:[I

    .line 429
    new-instance v0, Landroid/support/v7/widget/ds;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ds;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->av:Ljava/lang/Runnable;

    .line 450
    new-instance v0, Landroid/support/v7/widget/du;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/du;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ax:Landroid/support/v7/widget/go;

    .line 495
    if-eqz p2, :cond_4

    .line 496
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->x:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 497
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    .line 498
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 502
    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollContainer(Z)V

    .line 503
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 504
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 505
    const/16 v3, 0x10

    if-lt v0, v3, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->Q:Z

    .line 507
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 508
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/RecyclerView;->ae:I

    .line 509
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/RecyclerView;->ag:I

    .line 510
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:I

    .line 511
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    if-ne v0, v4, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 513
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->am:Landroid/support/v7/widget/ec;

    .line 12003
    iput-object v3, v0, Landroid/support/v7/widget/eb;->h:Landroid/support/v7/widget/ec;

    .line 12741
    new-instance v0, Landroid/support/v7/widget/af;

    new-instance v3, Landroid/support/v7/widget/dw;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/dw;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v3}, Landroid/support/v7/widget/af;-><init>(Landroid/support/v7/widget/ag;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    .line 13641
    new-instance v0, Landroid/support/v7/widget/bq;

    new-instance v3, Landroid/support/v7/widget/dv;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/dv;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v3}, Landroid/support/v7/widget/bq;-><init>(Landroid/support/v7/widget/bs;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    .line 517
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 519
    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 522
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "accessibility"

    .line 523
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R:Landroid/view/accessibility/AccessibilityManager;

    .line 524
    new-instance v0, Landroid/support/v7/widget/ey;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ey;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/ey;)V

    .line 529
    if-eqz p2, :cond_a

    .line 531
    sget-object v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 533
    sget v3, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_layoutManager:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 534
    sget v4, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_android_descendantFocusability:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 536
    if-ne v4, v5, :cond_1

    .line 537
    const/high16 v4, 0x40000

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 539
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 14579
    if-eqz v3, :cond_2

    .line 14580
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 14581
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 14631
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_7

    .line 14632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 14585
    :goto_3
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 14587
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 14592
    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v4, Landroid/support/v7/widget/eg;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v6

    .line 14594
    const/4 v4, 0x0

    .line 14596
    :try_start_1
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->z:[Ljava/lang/Class;

    .line 14597
    invoke-virtual {v6, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 14598
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v0, v7

    const/4 v7, 0x1

    aput-object p2, v0, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v4, v5

    .line 14608
    :goto_5
    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 14609
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/eg;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/eg;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6

    .line 542
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_3

    .line 543
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->w:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 545
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 546
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 553
    :cond_3
    :goto_6
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 554
    return-void

    .line 500
    :cond_4
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 505
    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 511
    goto/16 :goto_2

    .line 14634
    :cond_7
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v3, v0

    .line 14635
    goto :goto_3

    .line 14637
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_3

    .line 14589
    :cond_9
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v0

    goto/16 :goto_4

    .line 14599
    :catch_0
    move-exception v0

    .line 14601
    const/4 v5, 0x0

    :try_start_4
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v0

    move-object v9, v4

    move-object v4, v0

    move-object v0, v9

    .line 14606
    goto :goto_5

    .line 14602
    :catch_1
    move-exception v1

    .line 14603
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 14604
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Error creating LayoutManager "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_6

    .line 14610
    :catch_2
    move-exception v0

    .line 14611
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Unable to find LayoutManager "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 14613
    :catch_3
    move-exception v0

    .line 14614
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 14616
    :catch_4
    move-exception v0

    .line 14617
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 14619
    :catch_5
    move-exception v0

    .line 14620
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Cannot access non-public constructor "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 14622
    :catch_6
    move-exception v0

    .line 14623
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Class is not a LayoutManager "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 549
    :cond_a
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    goto/16 :goto_6
.end method

.method private A()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3718
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0}, Landroid/support/v7/widget/bq;->b()I

    move-result v2

    move v0, v1

    .line 3719
    :goto_0
    if-ge v0, v2, :cond_1

    .line 3720
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/bq;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v3

    .line 3721
    invoke-virtual {v3}, Landroid/support/v7/widget/ex;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3722
    invoke-virtual {v3}, Landroid/support/v7/widget/ex;->a()V

    .line 3719
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3725
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    .line 50590
    iget-object v0, v3, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 50591
    :goto_1
    if-ge v2, v4, :cond_2

    .line 50592
    iget-object v0, v3, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    .line 50593
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->a()V

    .line 50591
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 50595
    :cond_2
    iget-object v0, v3, Landroid/support/v7/widget/eo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 50596
    :goto_2
    if-ge v2, v4, :cond_3

    .line 50597
    iget-object v0, v3, Landroid/support/v7/widget/eo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->a()V

    .line 50596
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 50599
    :cond_3
    iget-object v0, v3, Landroid/support/v7/widget/eo;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 50600
    iget-object v0, v3, Landroid/support/v7/widget/eo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 50601
    :goto_3
    if-ge v1, v2, :cond_4

    .line 50602
    iget-object v0, v3, Landroid/support/v7/widget/eo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->a()V

    .line 50601
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 3726
    :cond_4
    return-void
.end method

.method private B()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v0, 0x0

    .line 3862
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v1}, Landroid/support/v7/widget/bq;->b()I

    move-result v2

    move v1, v0

    .line 3863
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3864
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/bq;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v3

    .line 3865
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/ex;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3866
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/ex;->b(I)V

    .line 3863
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3869
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->g()V

    .line 3870
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    .line 50632
    iget-object v1, v2, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    .line 50646
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    .line 50632
    if-eqz v1, :cond_3

    iget-object v1, v2, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    .line 50647
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    .line 50648
    iget-boolean v1, v1, Landroid/support/v7/widget/dx;->b:Z

    .line 50632
    if-eqz v1, :cond_3

    .line 50633
    iget-object v1, v2, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    .line 50634
    :goto_1
    if-ge v1, v3, :cond_4

    .line 50635
    iget-object v0, v2, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    .line 50636
    if-eqz v0, :cond_2

    .line 50637
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ex;->b(I)V

    .line 50638
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ex;->a(Ljava/lang/Object;)V

    .line 50634
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 50643
    :cond_3
    invoke-virtual {v2}, Landroid/support/v7/widget/eo;->b()V

    .line 50641
    :cond_4
    return-void
.end method

.method private C()V
    .locals 7

    .prologue
    .line 4584
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0}, Landroid/support/v7/widget/bq;->a()I

    move-result v1

    .line 4585
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 4586
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/bq;->b(I)Landroid/view/View;

    move-result-object v2

    .line 4587
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v3

    .line 4588
    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/support/v7/widget/ex;->h:Landroid/support/v7/widget/ex;

    if-eqz v4, :cond_1

    .line 4589
    iget-object v3, v3, Landroid/support/v7/widget/ex;->h:Landroid/support/v7/widget/ex;

    iget-object v3, v3, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 4590
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 4591
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 4592
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 4593
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v2, v5, :cond_1

    .line 4595
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 4596
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    .line 4594
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 4585
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4600
    :cond_2
    return-void
.end method

.method private a(J)Landroid/support/v7/widget/ex;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 4141
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    .line 50649
    iget-boolean v1, v1, Landroid/support/v7/widget/dx;->b:Z

    .line 4141
    if-nez v1, :cond_1

    .line 4156
    :cond_0
    :goto_0
    return-object v0

    .line 4144
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v1}, Landroid/support/v7/widget/bq;->b()I

    move-result v3

    .line 4146
    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 4147
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/bq;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 4148
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->m()Z

    move-result v4

    if-nez v4, :cond_3

    .line 50650
    iget-wide v4, v0, Landroid/support/v7/widget/ex;->d:J

    .line 4148
    cmp-long v4, v4, p1

    if-nez v4, :cond_3

    .line 4149
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    iget-object v4, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/bq;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4146
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 4156
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->b(II)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;Landroid/support/v7/widget/ed;)V
    .locals 1

    .prologue
    .line 150
    .line 50687
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/ex;)V

    .line 50688
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ex;->a(Z)V

    .line 50689
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/eb;->a(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;Landroid/support/v7/widget/ed;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50690
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->t()V

    .line 150
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 50698
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 50700
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 50701
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/dx;->a(Landroid/support/v7/widget/ex;)V

    .line 50703
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 50704
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 50705
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 50706
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50705
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 150
    :cond_1
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 150
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/support/v7/widget/ex;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    .line 1173
    iget-object v2, p1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 1174
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    move v0, v1

    .line 1175
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/eo;->b(Landroid/support/v7/widget/ex;)V

    .line 1176
    invoke-virtual {p1}, Landroid/support/v7/widget/ex;->n()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1178
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v5, v3, v1}, Landroid/support/v7/widget/bq;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1184
    :goto_1
    return-void

    .line 1174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1179
    :cond_1
    if-nez v0, :cond_2

    .line 1180
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    .line 20085
    invoke-virtual {v0, v2, v5, v1}, Landroid/support/v7/widget/bq;->a(Landroid/view/View;IZ)V

    goto :goto_1

    .line 1182
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    .line 20328
    iget-object v1, v0, Landroid/support/v7/widget/bq;->a:Landroid/support/v7/widget/bs;

    invoke-interface {v1, v2}, Landroid/support/v7/widget/bs;->a(Landroid/view/View;)I

    move-result v1

    .line 20329
    if-gez v1, :cond_3

    .line 20330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "view is not a child, cannot hide "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20335
    :cond_3
    iget-object v3, v0, Landroid/support/v7/widget/bq;->b:Landroid/support/v7/widget/br;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/br;->a(I)V

    .line 20336
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/bq;->a(Landroid/view/View;)V

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;)V
    .locals 3

    .prologue
    .line 3461
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/ex;->a(II)V

    .line 3462
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50578
    iget-boolean v0, v0, Landroid/support/v7/widget/eu;->j:Z

    .line 3462
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/ex;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3463
    invoke-virtual {p1}, Landroid/support/v7/widget/ex;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/ex;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3464
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/ex;)J

    move-result-wide v0

    .line 3465
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    invoke-virtual {v2, v0, v1, p1}, Landroid/support/v7/widget/gm;->a(JLandroid/support/v7/widget/ex;)V

    .line 3467
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/gm;->a(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;)V

    .line 3468
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 2758
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2759
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    if-ne v1, v2, :cond_0

    .line 2761
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2762
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    .line 2763
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->aa:I

    .line 2764
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:I

    .line 2766
    :cond_0
    return-void

    .line 2761
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a([I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 3471
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0}, Landroid/support/v7/widget/bq;->a()I

    move-result v5

    .line 3472
    if-nez v5, :cond_0

    .line 3473
    aput v1, p1, v4

    .line 3474
    aput v1, p1, v7

    .line 3494
    :goto_0
    return-void

    .line 3477
    :cond_0
    const v2, 0x7fffffff

    .line 3478
    const/high16 v1, -0x80000000

    move v3, v4

    .line 3479
    :goto_1
    if-ge v3, v5, :cond_2

    .line 3480
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/bq;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 3481
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->b()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3484
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->c()I

    move-result v0

    .line 3485
    if-ge v0, v2, :cond_1

    move v2, v0

    .line 3488
    :cond_1
    if-le v0, v1, :cond_3

    move v1, v2

    .line 3479
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 3492
    :cond_2
    aput v2, p1, v4

    .line 3493
    aput v1, p1, v7

    goto :goto_0

    :cond_3
    move v0, v1

    move v1, v2

    goto :goto_2
.end method

.method private a(IILandroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    .line 1583
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1584
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 1586
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 1587
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    if-eqz v4, :cond_2

    .line 1588
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 1589
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->q()V

    .line 1590
    const-string v4, "RV Scroll"

    invoke-static {v4}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1591
    if-eqz p1, :cond_0

    .line 1592
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {v2, p1, v3, v4}, Landroid/support/v7/widget/eg;->a(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I

    move-result v2

    .line 1593
    sub-int v3, p1, v2

    .line 1595
    :cond_0
    if-eqz p2, :cond_1

    .line 1596
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {v0, p2, v1, v4}, Landroid/support/v7/widget/eg;->b(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I

    move-result v0

    .line 1597
    sub-int v1, p2, v0

    .line 1599
    :cond_1
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 1600
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->C()V

    .line 1601
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    .line 1602
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    :cond_2
    move v4, v1

    move v1, v2

    move v2, v0

    .line 1604
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1605
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1608
    :cond_3
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->as:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1610
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->as:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    .line 1611
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->as:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    .line 1612
    if-eqz p3, :cond_4

    .line 1613
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->as:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->as:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {p3, v0, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1615
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->au:[I

    const/4 v3, 0x0

    aget v4, v0, v3

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->as:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v4, v5

    aput v4, v0, v3

    .line 1616
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->au:[I

    const/4 v3, 0x1

    aget v4, v0, v3

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->as:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/2addr v4, v5

    aput v4, v0, v3

    .line 1623
    :cond_5
    :goto_0
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 1624
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->h()V

    .line 1626
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1627
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1629
    :cond_8
    if-nez v1, :cond_9

    if-eqz v2, :cond_11

    :cond_9
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1617
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    .line 1618
    if-eqz p3, :cond_e

    .line 1619
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    int-to-float v4, v4

    .line 23994
    const/4 v0, 0x0

    .line 23995
    const/4 v7, 0x0

    cmpg-float v7, v3, v7

    if-gez v7, :cond_f

    .line 23996
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 23997
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-float v8, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v6, v10

    sub-float v6, v9, v6

    invoke-virtual {v7, v8, v6}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 23998
    const/4 v0, 0x1

    .line 24007
    :cond_b
    :goto_2
    const/4 v6, 0x0

    cmpg-float v6, v4, v6

    if-gez v6, :cond_10

    .line 24008
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 24009
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-float v7, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v5, v8

    invoke-virtual {v6, v7, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 24010
    const/4 v0, 0x1

    .line 24019
    :cond_c
    :goto_3
    if-nez v0, :cond_d

    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_e

    .line 24020
    :cond_d
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1621
    :cond_e
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->b(II)V

    goto :goto_0

    .line 24000
    :cond_f
    const/4 v7, 0x0

    cmpl-float v7, v3, v7

    if-lez v7, :cond_b

    .line 24001
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->c()V

    .line 24002
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v3, v8

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    invoke-virtual {v7, v8, v6}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 24003
    const/4 v0, 0x1

    goto :goto_2

    .line 24012
    :cond_10
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_c

    .line 24013
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->e()V

    .line 24014
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v4, v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v5, v9

    sub-float v5, v8, v5

    invoke-virtual {v6, v7, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 24015
    const/4 v0, 0x1

    goto :goto_3

    .line 1629
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Z

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;)Z
    .locals 2

    .prologue
    .line 150
    .line 50731
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    .line 50732
    invoke-virtual {p1}, Landroid/support/v7/widget/ex;->p()Ljava/util/List;

    move-result-object v1

    .line 50731
    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/eb;->a(Landroid/support/v7/widget/ex;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 150
    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/View;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2259
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2260
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2261
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2262
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2263
    sparse-switch p3, :sswitch_data_0

    .line 2281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "direction must be absolute. received:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2265
    :sswitch_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_2

    .line 2277
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 2265
    goto :goto_0

    .line 2269
    :sswitch_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0

    .line 2273
    :sswitch_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_6

    :cond_5
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_1

    :cond_6
    move v0, v1

    goto :goto_0

    .line 2277
    :sswitch_3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_7

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_8

    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_1

    :cond_8
    move v0, v1

    goto :goto_0

    .line 2263
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;)I
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/ex;)I

    move-result v0

    return v0
.end method

.method private b(Landroid/support/v7/widget/ex;)J
    .locals 2

    .prologue
    .line 3522
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    .line 50579
    iget-boolean v0, v0, Landroid/support/v7/widget/dx;->b:Z

    .line 3522
    if-eqz v0, :cond_0

    .line 50580
    iget-wide v0, p1, Landroid/support/v7/widget/ex;->d:J

    .line 3522
    :goto_0
    return-wide v0

    :cond_0
    iget v0, p1, Landroid/support/v7/widget/ex;->b:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method private b(I)Landroid/support/v7/widget/ex;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 4081
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    if-eqz v1, :cond_1

    .line 4097
    :cond_0
    :goto_0
    return-object v0

    .line 4084
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v1}, Landroid/support/v7/widget/bq;->b()I

    move-result v3

    .line 4087
    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 4088
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/bq;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 4089
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->m()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/ex;)I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 4090
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    iget-object v4, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/bq;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4087
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 4097
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private b(II)V
    .locals 2

    .prologue
    .line 2036
    const/4 v0, 0x0

    .line 2037
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 2038
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    .line 2040
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 2041
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2043
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    .line 2044
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2046
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    .line 2047
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2049
    :cond_3
    if-eqz v0, :cond_4

    .line 2050
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2052
    :cond_4
    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 150
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;Landroid/support/v7/widget/ed;)V
    .locals 1

    .prologue
    .line 50693
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ex;->a(Z)V

    .line 50694
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/eb;->b(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;Landroid/support/v7/widget/ed;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50695
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->t()V

    .line 150
    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    return v0
.end method

.method private c(Landroid/support/v7/widget/ex;)I
    .locals 8

    .prologue
    const/4 v2, -0x1

    .line 9799
    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ex;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9801
    invoke-virtual {p1}, Landroid/support/v7/widget/ex;->l()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v1, v2

    .line 50667
    :cond_1
    :goto_0
    return v1

    .line 9804
    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    iget v1, p1, Landroid/support/v7/widget/ex;->b:I

    .line 50654
    iget-object v0, v4, Landroid/support/v7/widget/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 50655
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_1

    .line 50656
    iget-object v0, v4, Landroid/support/v7/widget/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ah;

    .line 50657
    iget v6, v0, Landroid/support/v7/widget/ah;->a:I

    sparse-switch v6, :sswitch_data_0

    .line 50655
    :cond_3
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 50659
    :sswitch_0
    iget v6, v0, Landroid/support/v7/widget/ah;->b:I

    if-gt v6, v1, :cond_3

    .line 50660
    iget v0, v0, Landroid/support/v7/widget/ah;->d:I

    add-int/2addr v1, v0

    goto :goto_2

    .line 50664
    :sswitch_1
    iget v6, v0, Landroid/support/v7/widget/ah;->b:I

    if-gt v6, v1, :cond_3

    .line 50665
    iget v6, v0, Landroid/support/v7/widget/ah;->b:I

    iget v7, v0, Landroid/support/v7/widget/ah;->d:I

    add-int/2addr v6, v7

    .line 50666
    if-le v6, v1, :cond_4

    move v1, v2

    .line 50667
    goto :goto_0

    .line 50669
    :cond_4
    iget v0, v0, Landroid/support/v7/widget/ah;->d:I

    sub-int/2addr v1, v0

    .line 50670
    goto :goto_2

    .line 50673
    :sswitch_2
    iget v6, v0, Landroid/support/v7/widget/ah;->b:I

    if-ne v6, v1, :cond_5

    .line 50674
    iget v1, v0, Landroid/support/v7/widget/ah;->d:I

    goto :goto_2

    .line 50676
    :cond_5
    iget v6, v0, Landroid/support/v7/widget/ah;->b:I

    if-ge v6, v1, :cond_6

    .line 50677
    add-int/lit8 v1, v1, -0x1

    .line 50679
    :cond_6
    iget v0, v0, Landroid/support/v7/widget/ah;->d:I

    if-gt v0, v1, :cond_3

    .line 50680
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 50657
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method static c(Landroid/view/View;)Landroid/support/v7/widget/ex;
    .locals 1

    .prologue
    .line 3976
    if-nez p0, :cond_0

    .line 3977
    const/4 v0, 0x0

    .line 3979
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    iget-object v0, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .prologue
    .line 150
    .line 50733
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-eqz v0, :cond_0

    .line 50736
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/eg;->d(I)V

    .line 50737
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    .line 150
    :cond_0
    return-void
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Z

    return v0
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 150
    .line 50739
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 50740
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    .line 50752
    iget-object v3, v2, Landroid/support/v7/widget/bq;->a:Landroid/support/v7/widget/bs;

    invoke-interface {v3, p1}, Landroid/support/v7/widget/bs;->a(Landroid/view/View;)I

    move-result v3

    .line 50753
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 50754
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/bq;->b(Landroid/view/View;)Z

    move v2, v0

    .line 50741
    :goto_0
    if-eqz v2, :cond_0

    .line 50742
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v3

    .line 50743
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/eo;->b(Landroid/support/v7/widget/ex;)V

    .line 50744
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/eo;->a(Landroid/support/v7/widget/ex;)V

    .line 50750
    :cond_0
    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 150
    return v2

    .line 50759
    :cond_1
    iget-object v4, v2, Landroid/support/v7/widget/bq;->b:Landroid/support/v7/widget/br;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/br;->c(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 50760
    iget-object v4, v2, Landroid/support/v7/widget/bq;->b:Landroid/support/v7/widget/br;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/br;->d(I)Z

    .line 50761
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/bq;->b(Landroid/view/View;)Z

    .line 50765
    iget-object v2, v2, Landroid/support/v7/widget/bq;->a:Landroid/support/v7/widget/bs;

    invoke-interface {v2, v3}, Landroid/support/v7/widget/bs;->a(I)V

    move v2, v0

    .line 50766
    goto :goto_0

    :cond_2
    move v2, v1

    .line 50768
    goto :goto_0

    :cond_3
    move v0, v1

    .line 50750
    goto :goto_1
.end method

.method public static d(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 3998
    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 3999
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->d()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic d(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    return-void
.end method

.method public static e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 4013
    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 4014
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic e(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->an:Z

    return v0
.end method

.method static synthetic f(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    return v0
.end method

.method static synthetic g(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->t()V

    return-void
.end method

.method private g(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 6284
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    .line 6289
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 6290
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6291
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 6292
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ej;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ej;->a(Landroid/view/View;)V

    .line 6291
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 6295
    :cond_0
    return-void
.end method

.method private getScrollFactor()F
    .locals 4

    .prologue
    .line 2808
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2809
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2810
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2813
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2812
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:F

    .line 2818
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:F

    :goto_0
    return v0

    .line 2815
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;
    .locals 1

    .prologue
    .line 11618
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v4/view/NestedScrollingChildHelper;

    if-nez v0, :cond_0

    .line 11619
    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 11621
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v4/view/NestedScrollingChildHelper;

    return-object v0
.end method

.method static synthetic h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    return-object v0
.end method

.method static synthetic i()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->aw:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic i(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->q()V

    return-void
.end method

.method static synthetic j(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->C()V

    return-void
.end method

.method static synthetic j()Z
    .locals 1

    .prologue
    .line 150
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->y:Z

    return v0
.end method

.method private k()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1520
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->j:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    if-eqz v2, :cond_2

    .line 1521
    :cond_0
    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1522
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 1523
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 1552
    :cond_1
    :goto_0
    return-void

    .line 1526
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    invoke-virtual {v2}, Landroid/support/v7/widget/af;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1532
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/af;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    const/16 v3, 0xb

    .line 1533
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/af;->a(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1534
    const-string v2, "RV PartialInvalidate"

    invoke-static {v2}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1535
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 1536
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    invoke-virtual {v2}, Landroid/support/v7/widget/af;->b()V

    .line 1537
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->M:Z

    if-nez v2, :cond_4

    .line 23558
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v2}, Landroid/support/v7/widget/bq;->a()I

    move-result v3

    move v2, v0

    .line 23559
    :goto_1
    if-ge v2, v3, :cond_3

    .line 23560
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/bq;->b(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v4

    .line 23561
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/support/v7/widget/ex;->b()Z

    move-result v5

    if-nez v5, :cond_5

    .line 23564
    invoke-virtual {v4}, Landroid/support/v7/widget/ex;->s()Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v1

    .line 1538
    :cond_3
    if-eqz v0, :cond_6

    .line 1539
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 1545
    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 1546
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    .line 23559
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1542
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->c()V

    goto :goto_2

    .line 1547
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1548
    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1549
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 1550
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0
.end method

.method static synthetic k(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    return-void
.end method

.method static synthetic l(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 1957
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1958
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->m()V

    .line 1959
    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 1965
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Landroid/support/v7/widget/ew;

    invoke-virtual {v0}, Landroid/support/v7/widget/ew;->b()V

    .line 1966
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-eqz v0, :cond_0

    .line 1967
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0}, Landroid/support/v7/widget/eg;->q()V

    .line 1969
    :cond_0
    return-void
.end method

.method static synthetic m(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 2130
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2131
    return-void
.end method

.method static synthetic n(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    .prologue
    const/16 v5, 0x200

    const/4 v0, 0x0

    .line 150
    .line 50710
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    if-nez v1, :cond_3

    .line 50713
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    .line 50714
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v1}, Landroid/support/v7/widget/bq;->b()I

    move-result v2

    move v1, v0

    .line 50715
    :goto_0
    if-ge v1, v2, :cond_1

    .line 50716
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/bq;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v3

    .line 50717
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/ex;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 50718
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/ex;->b(I)V

    .line 50715
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50721
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    .line 50723
    iget-object v1, v2, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    .line 50724
    :goto_1
    if-ge v1, v3, :cond_3

    .line 50725
    iget-object v0, v2, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    .line 50726
    if-eqz v0, :cond_2

    .line 50727
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ex;->b(I)V

    .line 50724
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 150
    :cond_3
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 2745
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2746
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2748
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll()V

    .line 34025
    const/4 v0, 0x0

    .line 34026
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    .line 34027
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 34028
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 34029
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 34030
    :cond_4
    if-eqz v0, :cond_5

    .line 34031
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2750
    :cond_5
    return-void
.end method

.method static synthetic o(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->Q:Z

    return v0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 2753
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->o()V

    .line 2754
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2755
    return-void
.end method

.method static synthetic p(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Z

    return v0
.end method

.method static synthetic q(Landroid/support/v7/widget/RecyclerView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Ljava/lang/Runnable;

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 2940
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    .line 2941
    return-void
.end method

.method private r()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2944
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    .line 2945
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    if-gtz v0, :cond_0

    .line 2950
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    .line 42960
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    .line 42961
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    .line 42962
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42963
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 42964
    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 42965
    invoke-static {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 42966
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2953
    :cond_0
    return-void
.end method

.method static synthetic r(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Z

    return v0
.end method

.method static synthetic s(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ey;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ao:Landroid/support/v7/widget/ey;

    return-object v0
.end method

.method private s()Z
    .locals 1

    .prologue
    .line 2990
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 2

    .prologue
    .line 1279
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    if-ne p1, v0, :cond_1

    .line 1291
    :cond_0
    return-void

    .line 1286
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    .line 1287
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 1288
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->m()V

    .line 22328
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-eqz v0, :cond_3

    .line 22329
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/eg;->i(I)V

    .line 22340
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->al:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 22341
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->al:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 22342
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->al:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22341
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method static synthetic t(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ep;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:Landroid/support/v7/widget/ep;

    return-object v0
.end method

.method private t()V
    .locals 1

    .prologue
    .line 3042
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->an:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Z

    if-eqz v0, :cond_0

    .line 3043
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->av:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3044
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->an:Z

    .line 3046
    :cond_0
    return-void
.end method

.method static synthetic u(Landroid/support/v7/widget/RecyclerView;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    return-object v0
.end method

.method private u()Z
    .locals 1

    .prologue
    .line 3049
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0}, Landroid/support/v7/widget/eg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3059
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    if-eqz v0, :cond_0

    .line 3062
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->a()V

    .line 3063
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()V

    .line 3064
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0}, Landroid/support/v7/widget/eg;->a()V

    .line 3069
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3070
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->b()V

    .line 3074
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v0, :cond_5

    :cond_1
    move v0, v2

    .line 3075
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->j:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    .line 3077
    invoke-static {v3}, Landroid/support/v7/widget/eg;->b(Landroid/support/v7/widget/eg;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    .line 43923
    iget-boolean v3, v3, Landroid/support/v7/widget/dx;->b:Z

    .line 3078
    if-eqz v3, :cond_6

    :cond_3
    move v3, v2

    .line 44547
    :goto_2
    iput-boolean v3, v4, Landroid/support/v7/widget/eu;->h:Z

    .line 3079
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 45547
    iget-boolean v4, v4, Landroid/support/v7/widget/eu;->h:Z

    .line 3079
    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    if-nez v0, :cond_7

    .line 3081
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->u()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 46547
    :goto_3
    iput-boolean v2, v3, Landroid/support/v7/widget/eu;->i:Z

    .line 3082
    return-void

    .line 3072
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->e()V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 3074
    goto :goto_1

    :cond_6
    move v3, v1

    .line 3078
    goto :goto_2

    :cond_7
    move v2, v1

    .line 3081
    goto :goto_3
.end method

.method static synthetic v(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    return v0
.end method

.method static synthetic w(Landroid/support/v7/widget/RecyclerView;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/graphics/RectF;

    return-object v0
.end method

.method private w()V
    .locals 10

    .prologue
    .line 3110
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    if-nez v0, :cond_0

    .line 3111
    const-string v0, "RecyclerView"

    const-string v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    :goto_0
    return-void

    .line 3115
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-nez v0, :cond_1

    .line 3116
    const-string v0, "RecyclerView"

    const-string v1, "No layout manager attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3120
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 47547
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/eu;->k:Z

    .line 3121
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 48547
    iget v0, v0, Landroid/support/v7/widget/eu;->b:I

    .line 3121
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 3122
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    .line 3123
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/eg;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 3124
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->z()V

    .line 50332
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/eu;->a(I)V

    .line 50333
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 50334
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->q()V

    .line 50335
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50408
    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v7/widget/eu;->b:I

    .line 50336
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50409
    iget-boolean v0, v0, Landroid/support/v7/widget/eu;->h:Z

    .line 50336
    if-eqz v0, :cond_11

    .line 50340
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0}, Landroid/support/v7/widget/bq;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_10

    .line 50341
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/bq;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v3

    .line 50342
    invoke-virtual {v3}, Landroid/support/v7/widget/ex;->b()Z

    move-result v0

    if-nez v0, :cond_a

    .line 50345
    invoke-direct {p0, v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/ex;)J

    move-result-wide v4

    .line 50411
    new-instance v0, Landroid/support/v7/widget/ed;

    invoke-direct {v0}, Landroid/support/v7/widget/ed;-><init>()V

    .line 50410
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ed;->a(Landroid/support/v7/widget/ex;)Landroid/support/v7/widget/ed;

    move-result-object v1

    .line 50348
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    .line 50412
    iget-object v0, v0, Landroid/support/v7/widget/gm;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    .line 50349
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->b()Z

    move-result v6

    if-nez v6, :cond_f

    .line 50360
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/gm;->a(Landroid/support/v7/widget/ex;)Z

    move-result v6

    .line 50362
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/gm;->a(Landroid/support/v7/widget/ex;)Z

    move-result v7

    .line 50363
    if-eqz v6, :cond_2

    if-eq v0, v3, :cond_f

    .line 50367
    :cond_2
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    .line 50413
    const/4 v9, 0x4

    invoke-virtual {v8, v0, v9}, Landroid/support/v7/widget/gm;->a(Landroid/support/v7/widget/ex;I)Landroid/support/v7/widget/ed;

    move-result-object v8

    .line 50370
    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    invoke-virtual {v9, v3, v1}, Landroid/support/v7/widget/gm;->b(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;)V

    .line 50371
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    .line 50414
    const/16 v9, 0x8

    invoke-virtual {v1, v3, v9}, Landroid/support/v7/widget/gm;->a(Landroid/support/v7/widget/ex;I)Landroid/support/v7/widget/ed;

    move-result-object v1

    .line 50372
    if-nez v8, :cond_b

    .line 50415
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v1}, Landroid/support/v7/widget/bq;->a()I

    move-result v6

    .line 50416
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v6, :cond_9

    .line 50417
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/bq;->b(I)Landroid/view/View;

    move-result-object v7

    .line 50418
    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v7

    .line 50419
    if-eq v7, v3, :cond_8

    .line 50422
    invoke-direct {p0, v7}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/ex;)J

    move-result-wide v8

    .line 50423
    cmp-long v8, v8, v4

    if-nez v8, :cond_8

    .line 50424
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    .line 50441
    iget-boolean v0, v0, Landroid/support/v7/widget/dx;->b:Z

    .line 50424
    if-eqz v0, :cond_7

    .line 50425
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \n View Holder 2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3125
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    .line 48625
    iget-object v1, v0, Landroid/support/v7/widget/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, v0, Landroid/support/v7/widget/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 3125
    :goto_4
    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    .line 49487
    iget v0, v0, Landroid/support/v7/widget/eg;->z:I

    .line 3125
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    .line 49496
    iget v0, v0, Landroid/support/v7/widget/eg;->A:I

    .line 3126
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 3129
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/eg;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 3130
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->z()V

    goto/16 :goto_1

    .line 48625
    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    .line 3133
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/eg;->b(Landroid/support/v7/widget/RecyclerView;)V

    goto/16 :goto_1

    .line 50429
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \n View Holder 2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50416
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 50437
    :cond_9
    const-string v1, "RecyclerView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " cannot be found but it is necessary for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50340
    :cond_a
    :goto_5
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_2

    .line 50442
    :cond_b
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ex;->a(Z)V

    .line 50443
    if-eqz v6, :cond_c

    .line 50444
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/ex;)V

    .line 50446
    :cond_c
    if-eq v0, v3, :cond_e

    .line 50447
    if-eqz v7, :cond_d

    .line 50448
    invoke-direct {p0, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/ex;)V

    .line 50450
    :cond_d
    iput-object v3, v0, Landroid/support/v7/widget/ex;->g:Landroid/support/v7/widget/ex;

    .line 50452
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/ex;)V

    .line 50453
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/eo;->b(Landroid/support/v7/widget/ex;)V

    .line 50454
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ex;->a(Z)V

    .line 50455
    iput-object v0, v3, Landroid/support/v7/widget/ex;->h:Landroid/support/v7/widget/ex;

    .line 50457
    :cond_e
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    invoke-virtual {v4, v0, v3, v8, v1}, Landroid/support/v7/widget/eb;->a(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;Landroid/support/v7/widget/ed;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 50458
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->t()V

    goto :goto_5

    .line 50380
    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    invoke-virtual {v0, v3, v1}, Landroid/support/v7/widget/gm;->b(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;)V

    goto :goto_5

    .line 50385
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ax:Landroid/support/v7/widget/go;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/gm;->a(Landroid/support/v7/widget/go;)V

    .line 50388
    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/eg;->b(Landroid/support/v7/widget/eo;)V

    .line 50389
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iget v1, v1, Landroid/support/v7/widget/eu;->c:I

    .line 50461
    iput v1, v0, Landroid/support/v7/widget/eu;->d:I

    .line 50390
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    .line 50391
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50462
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/eu;->h:Z

    .line 50393
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50463
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/eu;->i:Z

    .line 50394
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-static {v0}, Landroid/support/v7/widget/eg;->c(Landroid/support/v7/widget/eg;)Z

    .line 50395
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    .line 50464
    iget-object v0, v0, Landroid/support/v7/widget/eo;->b:Ljava/util/ArrayList;

    .line 50395
    if-eqz v0, :cond_12

    .line 50396
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    .line 50465
    iget-object v0, v0, Landroid/support/v7/widget/eo;->b:Ljava/util/ArrayList;

    .line 50396
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 50398
    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/eg;->a(Landroid/support/v7/widget/eu;)V

    .line 50399
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    .line 50400
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 50401
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    invoke-virtual {v0}, Landroid/support/v7/widget/gm;->a()V

    .line 50402
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aq:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->aq:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 50466
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->aq:[I

    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a([I)V

    .line 50467
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->aq:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v2, v0, :cond_13

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aq:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    if-eq v0, v1, :cond_16

    :cond_13
    const/4 v0, 0x1

    .line 50402
    :goto_6
    if-eqz v0, :cond_14

    .line 50403
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->h()V

    .line 50468
    :cond_14
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_17

    .line 50406
    :cond_15
    :goto_7
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->x()V

    goto/16 :goto_0

    .line 50467
    :cond_16
    const/4 v0, 0x0

    goto :goto_6

    .line 50472
    :cond_17
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_18

    .line 50473
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 50474
    if-eqz v0, :cond_15

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bq;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 50478
    :cond_18
    const/4 v0, 0x0

    .line 50479
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iget v1, v1, Landroid/support/v7/widget/eu;->l:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_19

    .line 50480
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iget v0, v0, Landroid/support/v7/widget/eu;->l:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->b(I)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 50482
    :cond_19
    if-nez v0, :cond_1a

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iget-wide v2, v1, Landroid/support/v7/widget/eu;->m:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    .line 50500
    iget-boolean v1, v1, Landroid/support/v7/widget/dx;->b:Z

    .line 50482
    if-eqz v1, :cond_1a

    .line 50483
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iget-wide v0, v0, Landroid/support/v7/widget/eu;->m:J

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(J)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 50485
    :cond_1a
    if-eqz v0, :cond_15

    iget-object v1, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 50486
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 50491
    iget-object v1, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 50492
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iget v2, v2, Landroid/support/v7/widget/eu;->n:I

    int-to-long v2, v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1b

    .line 50493
    iget-object v0, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iget v2, v2, Landroid/support/v7/widget/eu;->n:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 50494
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 50498
    :goto_8
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_7

    :cond_1b
    move-object v0, v1

    goto :goto_8
.end method

.method static synthetic x(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ew;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Landroid/support/v7/widget/ew;

    return-object v0
.end method

.method private x()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 3156
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroid/support/v7/widget/eu;->m:J

    .line 3157
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iput v1, v0, Landroid/support/v7/widget/eu;->l:I

    .line 3158
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iput v1, v0, Landroid/support/v7/widget/eu;->n:I

    .line 3159
    return-void
.end method

.method private y()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 3215
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/eu;->a(I)V

    .line 3216
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50501
    iput-boolean v4, v1, Landroid/support/v7/widget/eu;->k:Z

    .line 3217
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 3218
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    invoke-virtual {v1}, Landroid/support/v7/widget/gm;->a()V

    .line 3219
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->q()V

    .line 50503
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->aj:Z

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    if-eqz v1, :cond_13

    .line 50504
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 50507
    :goto_0
    if-nez v1, :cond_2

    move-object v5, v0

    .line 50508
    :goto_1
    if-nez v5, :cond_4

    .line 50509
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->x()V

    .line 3221
    :goto_2
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->v()V

    .line 3222
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50530
    iget-boolean v0, v0, Landroid/support/v7/widget/eu;->h:Z

    .line 3222
    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v0, :cond_9

    move v0, v3

    .line 50531
    :goto_3
    iput-boolean v0, v1, Landroid/support/v7/widget/eu;->j:Z

    .line 3223
    iput-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    iput-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    .line 3224
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50532
    iget-boolean v1, v1, Landroid/support/v7/widget/eu;->i:Z

    .line 50533
    iput-boolean v1, v0, Landroid/support/v7/widget/eu;->g:Z

    .line 3225
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    invoke-virtual {v1}, Landroid/support/v7/widget/dx;->b()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/eu;->c:I

    .line 3226
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aq:[I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a([I)V

    .line 3228
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50534
    iget-boolean v0, v0, Landroid/support/v7/widget/eu;->h:Z

    .line 3228
    if-eqz v0, :cond_a

    .line 3230
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0}, Landroid/support/v7/widget/bq;->a()I

    move-result v1

    move v0, v4

    .line 3231
    :goto_4
    if-ge v0, v1, :cond_a

    .line 3232
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/bq;->b(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v5

    .line 3233
    invoke-virtual {v5}, Landroid/support/v7/widget/ex;->b()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/support/v7/widget/ex;->j()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    .line 50535
    iget-boolean v6, v6, Landroid/support/v7/widget/dx;->b:Z

    .line 3233
    if-eqz v6, :cond_1

    .line 3238
    :cond_0
    invoke-static {v5}, Landroid/support/v7/widget/eb;->d(Landroid/support/v7/widget/ex;)I

    .line 3239
    invoke-virtual {v5}, Landroid/support/v7/widget/ex;->p()Ljava/util/List;

    .line 50537
    new-instance v6, Landroid/support/v7/widget/ed;

    invoke-direct {v6}, Landroid/support/v7/widget/ed;-><init>()V

    .line 50536
    invoke-virtual {v6, v5}, Landroid/support/v7/widget/ed;->a(Landroid/support/v7/widget/ex;)Landroid/support/v7/widget/ed;

    move-result-object v6

    .line 3240
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    invoke-virtual {v7, v5, v6}, Landroid/support/v7/widget/gm;->a(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;)V

    .line 3241
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50538
    iget-boolean v6, v6, Landroid/support/v7/widget/eu;->j:Z

    .line 3241
    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/support/v7/widget/ex;->s()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/support/v7/widget/ex;->m()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3242
    invoke-virtual {v5}, Landroid/support/v7/widget/ex;->b()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/support/v7/widget/ex;->j()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3243
    invoke-direct {p0, v5}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/ex;)J

    move-result-wide v6

    .line 3251
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    invoke-virtual {v8, v6, v7, v5}, Landroid/support/v7/widget/gm;->a(JLandroid/support/v7/widget/ex;)V

    .line 3231
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 50517
    :cond_2
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 50518
    if-nez v1, :cond_3

    move-object v5, v0

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_1

    .line 50511
    :cond_4
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    .line 50519
    iget-boolean v0, v0, Landroid/support/v7/widget/dx;->b:Z

    .line 50511
    if-eqz v0, :cond_6

    .line 50520
    iget-wide v0, v5, Landroid/support/v7/widget/ex;->d:J

    .line 50511
    :goto_5
    iput-wide v0, v6, Landroid/support/v7/widget/eu;->m:J

    .line 50512
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    if-eqz v0, :cond_7

    move v0, v2

    .line 50513
    :goto_6
    iput v0, v1, Landroid/support/v7/widget/eu;->l:I

    .line 50514
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iget-object v0, v5, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 50521
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    .line 50522
    :cond_5
    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-nez v5, :cond_8

    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 50523
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 50524
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    .line 50525
    if-eq v5, v2, :cond_5

    .line 50526
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    goto :goto_7

    .line 50511
    :cond_6
    const-wide/16 v0, -0x1

    goto :goto_5

    .line 50513
    :cond_7
    invoke-virtual {v5}, Landroid/support/v7/widget/ex;->d()I

    move-result v0

    goto :goto_6

    .line 50514
    :cond_8
    iput v1, v6, Landroid/support/v7/widget/eu;->n:I

    goto/16 :goto_2

    :cond_9
    move v0, v4

    .line 3222
    goto/16 :goto_3

    .line 3255
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50539
    iget-boolean v0, v0, Landroid/support/v7/widget/eu;->i:Z

    .line 3255
    if-eqz v0, :cond_12

    .line 50540
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0}, Landroid/support/v7/widget/bq;->b()I

    move-result v1

    move v0, v4

    .line 50541
    :goto_8
    if-ge v0, v1, :cond_c

    .line 50542
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/bq;->c(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v5

    .line 50547
    invoke-virtual {v5}, Landroid/support/v7/widget/ex;->b()Z

    move-result v6

    if-nez v6, :cond_b

    .line 50552
    iget v6, v5, Landroid/support/v7/widget/ex;->c:I

    if-ne v6, v2, :cond_b

    .line 50553
    iget v6, v5, Landroid/support/v7/widget/ex;->b:I

    iput v6, v5, Landroid/support/v7/widget/ex;->c:I

    .line 50541
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3263
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50556
    iget-boolean v0, v0, Landroid/support/v7/widget/eu;->f:Z

    .line 3264
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50557
    iput-boolean v4, v1, Landroid/support/v7/widget/eu;->f:Z

    .line 3266
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {v1, v2, v5}, Landroid/support/v7/widget/eg;->c(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)V

    .line 3267
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50558
    iput-boolean v0, v1, Landroid/support/v7/widget/eu;->f:Z

    move v1, v4

    .line 3269
    :goto_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0}, Landroid/support/v7/widget/bq;->a()I

    move-result v0

    if-ge v1, v0, :cond_11

    .line 3270
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bq;->b(I)Landroid/view/View;

    move-result-object v0

    .line 3271
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v2

    .line 3272
    invoke-virtual {v2}, Landroid/support/v7/widget/ex;->b()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3275
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    .line 50559
    iget-object v0, v0, Landroid/support/v7/widget/gm;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/gn;

    .line 50560
    if-eqz v0, :cond_e

    iget v0, v0, Landroid/support/v7/widget/gn;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_e

    move v0, v3

    .line 3275
    :goto_a
    if-nez v0, :cond_d

    .line 3276
    invoke-static {v2}, Landroid/support/v7/widget/eb;->d(Landroid/support/v7/widget/ex;)I

    .line 3277
    const/16 v0, 0x2000

    .line 3278
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ex;->a(I)Z

    move-result v0

    .line 3283
    invoke-virtual {v2}, Landroid/support/v7/widget/ex;->p()Ljava/util/List;

    .line 50562
    new-instance v5, Landroid/support/v7/widget/ed;

    invoke-direct {v5}, Landroid/support/v7/widget/ed;-><init>()V

    .line 50561
    invoke-virtual {v5, v2}, Landroid/support/v7/widget/ed;->a(Landroid/support/v7/widget/ex;)Landroid/support/v7/widget/ed;

    move-result-object v5

    .line 3284
    if-eqz v0, :cond_f

    .line 3285
    invoke-direct {p0, v2, v5}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;)V

    .line 3269
    :cond_d
    :goto_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_e
    move v0, v4

    .line 50560
    goto :goto_a

    .line 3287
    :cond_f
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    .line 50563
    iget-object v0, v6, Landroid/support/v7/widget/gm;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/gn;

    .line 50564
    if-nez v0, :cond_10

    .line 50565
    invoke-static {}, Landroid/support/v7/widget/gn;->a()Landroid/support/v7/widget/gn;

    move-result-object v0

    .line 50566
    iget-object v6, v6, Landroid/support/v7/widget/gm;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v6, v2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50568
    :cond_10
    iget v2, v0, Landroid/support/v7/widget/gn;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/support/v7/widget/gn;->a:I

    .line 50569
    iput-object v5, v0, Landroid/support/v7/widget/gn;->b:Landroid/support/v7/widget/ed;

    goto :goto_b

    .line 3292
    :cond_11
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->A()V

    .line 3296
    :goto_c
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    .line 3297
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 3298
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50571
    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/eu;->b:I

    .line 3299
    return-void

    .line 3294
    :cond_12
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->A()V

    goto :goto_c

    :cond_13
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private z()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3306
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 3307
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->q()V

    .line 3308
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/eu;->a(I)V

    .line 3309
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->e()V

    .line 3310
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    invoke-virtual {v2}, Landroid/support/v7/widget/dx;->b()I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/eu;->c:I

    .line 3311
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50572
    iput v1, v0, Landroid/support/v7/widget/eu;->e:I

    .line 3314
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50573
    iput-boolean v1, v0, Landroid/support/v7/widget/eu;->g:Z

    .line 3315
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/eg;->c(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)V

    .line 3317
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50574
    iput-boolean v1, v0, Landroid/support/v7/widget/eu;->f:Z

    .line 3318
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 3321
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50575
    iget-boolean v0, v0, Landroid/support/v7/widget/eu;->h:Z

    .line 3321
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 50576
    :goto_0
    iput-boolean v0, v2, Landroid/support/v7/widget/eu;->h:Z

    .line 3322
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50577
    const/4 v2, 0x4

    iput v2, v0, Landroid/support/v7/widget/eu;->b:I

    .line 3323
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    .line 3324
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 3325
    return-void

    :cond_0
    move v0, v1

    .line 3321
    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroid/support/v7/widget/ex;
    .locals 3

    .prologue
    .line 3929
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3930
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 3931
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a direct child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3934
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    return-object v0
.end method

.method public final a(FF)Landroid/view/View;
    .locals 5

    .prologue
    .line 4167
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0}, Landroid/support/v7/widget/bq;->a()I

    move-result v0

    .line 4168
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 4169
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bq;->b(I)Landroid/view/View;

    move-result-object v0

    .line 4170
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v2

    .line 4171
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v3

    .line 4172
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    .line 4173
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 4174
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    .line 4175
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    .line 4179
    :goto_1
    return-object v0

    .line 4168
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 4179
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a()V
    .locals 2

    .prologue
    .line 1780
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    .line 1781
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-nez v0, :cond_0

    .line 1782
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Z

    .line 1784
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 1440
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-eqz v0, :cond_0

    .line 1451
    :goto_0
    return-void

    .line 1443
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 1444
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-nez v0, :cond_1

    .line 1445
    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1449
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/eg;->d(I)V

    .line 1450
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method final a(II)V
    .locals 3

    .prologue
    .line 2898
    .line 2899
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 2900
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v1

    .line 2898
    invoke-static {p1, v0, v1}, Landroid/support/v7/widget/eg;->a(III)I

    move-result v0

    .line 2902
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 2903
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    .line 2901
    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/eg;->a(III)I

    move-result v1

    .line 2905
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 2906
    return-void
.end method

.method final a(IIZ)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 3781
    add-int v1, p1, p2

    .line 3782
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0}, Landroid/support/v7/widget/bq;->b()I

    move-result v2

    .line 3783
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 3784
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/bq;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v3

    .line 3785
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/ex;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3786
    iget v4, v3, Landroid/support/v7/widget/ex;->b:I

    if-lt v4, v1, :cond_1

    .line 3792
    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Landroid/support/v7/widget/ex;->a(IZ)V

    .line 3793
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50606
    iput-boolean v6, v3, Landroid/support/v7/widget/eu;->f:Z

    .line 3783
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3794
    :cond_1
    iget v4, v3, Landroid/support/v7/widget/ex;->b:I

    if-lt v4, p1, :cond_0

    .line 3799
    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    .line 50607
    invoke-virtual {v3, v7}, Landroid/support/v7/widget/ex;->b(I)V

    .line 50608
    invoke-virtual {v3, v5, p3}, Landroid/support/v7/widget/ex;->a(IZ)V

    .line 50609
    iput v4, v3, Landroid/support/v7/widget/ex;->b:I

    .line 3801
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50611
    iput-boolean v6, v3, Landroid/support/v7/widget/eu;->f:Z

    goto :goto_1

    .line 3805
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    .line 50612
    add-int v3, p1, p2

    .line 50613
    iget-object v0, v2, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 50614
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_5

    .line 50615
    iget-object v0, v2, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    .line 50616
    if-eqz v0, :cond_3

    .line 50617
    iget v4, v0, Landroid/support/v7/widget/ex;->b:I

    if-lt v4, v3, :cond_4

    .line 50623
    neg-int v4, p2

    invoke-virtual {v0, v4, p3}, Landroid/support/v7/widget/ex;->a(IZ)V

    .line 50614
    :cond_3
    :goto_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 50624
    :cond_4
    iget v4, v0, Landroid/support/v7/widget/ex;->b:I

    if-lt v4, p1, :cond_3

    .line 50626
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ex;->b(I)V

    .line 50627
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/eo;->c(I)V

    goto :goto_3

    .line 3806
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3807
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ef;)V
    .locals 2

    .prologue
    .line 1337
    .line 23308
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-eqz v0, :cond_0

    .line 23309
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/eg;->a(Ljava/lang/String;)V

    .line 23312
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23313
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 23316
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23320
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->g()V

    .line 23321
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1338
    return-void
.end method

.method public final a(Landroid/support/v7/widget/el;)V
    .locals 1

    .prologue
    .line 2425
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2426
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2395
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2396
    if-nez p1, :cond_0

    .line 2397
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2400
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2402
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    if-lez v0, :cond_2

    .line 2403
    const-string v0, "RecyclerView"

    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks might be run during a measure & layout pass where you cannot change the RecyclerView data. Any method call that might change the structure of the RecyclerView or the adapter contents should be postponed to the next frame."

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2409
    :cond_2
    return-void
.end method

.method final a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1787
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    if-gtz v0, :cond_0

    .line 1792
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    .line 1794
    :cond_0
    if-nez p1, :cond_1

    .line 1803
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Z

    .line 1805
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    if-ne v0, v2, :cond_3

    .line 1807
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    if-eqz v0, :cond_2

    .line 1809
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 1811
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-nez v0, :cond_3

    .line 1812
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Z

    .line 1815
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    .line 1816
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2320
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2322
    return-void
.end method

.method public final b(Landroid/view/View;)Landroid/view/View;
    .locals 4

    .prologue
    .line 3952
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, p1

    .line 3953
    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3954
    check-cast v0, Landroid/view/View;

    .line 3955
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    .line 3957
    :cond_0
    if-ne v0, p0, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final b()V
    .locals 4

    .prologue
    .line 2077
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 2087
    :goto_0
    return-void

    .line 2080
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2081
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v0, :cond_1

    .line 2082
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2083
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2082
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 2085
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method final c()V
    .locals 4

    .prologue
    .line 2090
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 2100
    :goto_0
    return-void

    .line 2093
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2094
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v0, :cond_1

    .line 2095
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2096
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2095
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 2098
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 3664
    instance-of v0, p1, Landroid/support/v7/widget/ei;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    check-cast p1, Landroid/support/v7/widget/ei;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/eg;->a(Landroid/support/v7/widget/ei;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1677
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-nez v1, :cond_1

    .line 1680
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v1}, Landroid/support/v7/widget/eg;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/eg;->d(Landroid/support/v7/widget/eu;)I

    move-result v0

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1652
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-nez v1, :cond_1

    .line 1655
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v1}, Landroid/support/v7/widget/eg;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/eg;->b(Landroid/support/v7/widget/eu;)I

    move-result v0

    goto :goto_0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1700
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-nez v1, :cond_1

    .line 1703
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v1}, Landroid/support/v7/widget/eg;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/eg;->f(Landroid/support/v7/widget/eu;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1749
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-nez v1, :cond_1

    .line 1752
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v1}, Landroid/support/v7/widget/eg;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/eg;->e(Landroid/support/v7/widget/eu;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1725
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-nez v1, :cond_1

    .line 1728
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v1}, Landroid/support/v7/widget/eg;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/eg;->c(Landroid/support/v7/widget/eu;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1772
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-nez v1, :cond_1

    .line 1775
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v1}, Landroid/support/v7/widget/eg;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/eg;->g(Landroid/support/v7/widget/eu;)I

    move-result v0

    goto :goto_0
.end method

.method final d()V
    .locals 4

    .prologue
    .line 2103
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 2114
    :goto_0
    return-void

    .line 2106
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2107
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v0, :cond_1

    .line 2108
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2109
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2108
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 2111
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .prologue
    .line 9848
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .prologue
    .line 9853
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .prologue
    .line 9843
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .prologue
    .line 9837
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1161
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1162
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1153
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1154
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3593
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 3595
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v1

    .line 3596
    :goto_0
    if-ge v3, v4, :cond_0

    .line 3597
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ef;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {v0, p1, p0, v5}, Landroid/support/v7/widget/ef;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/eu;)V

    .line 3596
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 3602
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    .line 3603
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3604
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    .line 3605
    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3606
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3607
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 3608
    :goto_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3610
    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3611
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3612
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v3, :cond_1

    .line 3613
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3615
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v2

    :goto_4
    or-int/2addr v0, v3

    .line 3616
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3618
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3619
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3620
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    .line 3621
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 3622
    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3623
    neg-int v3, v3

    int-to-float v3, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3624
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v2

    :goto_6
    or-int/2addr v0, v3

    .line 3625
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3627
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3628
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3629
    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3630
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v4, :cond_c

    .line 3631
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3635
    :goto_7
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :cond_4
    or-int/2addr v0, v1

    .line 3636
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3642
    :cond_5
    if-nez v0, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    .line 3643
    invoke-virtual {v1}, Landroid/support/v7/widget/eb;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3647
    :goto_8
    if-eqz v2, :cond_6

    .line 3648
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 3650
    :cond_6
    return-void

    :cond_7
    move v0, v1

    .line 3604
    goto/16 :goto_1

    :cond_8
    move v0, v1

    .line 3607
    goto/16 :goto_2

    :cond_9
    move v3, v1

    .line 3615
    goto/16 :goto_4

    :cond_a
    move v3, v1

    .line 3621
    goto/16 :goto_5

    :cond_b
    move v3, v1

    .line 3624
    goto :goto_6

    .line 3633
    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    :cond_d
    move v2, v0

    goto :goto_8

    :cond_e
    move v0, v1

    goto/16 :goto_3
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .prologue
    .line 4184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method final e()V
    .locals 4

    .prologue
    .line 2117
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 2127
    :goto_0
    return-void

    .line 2120
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2121
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v0, :cond_1

    .line 2122
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2123
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2122
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 2125
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method final f(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 4239
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 4240
    iget-boolean v1, v0, Landroid/support/v7/widget/ei;->e:Z

    if-nez v1, :cond_0

    .line 4241
    iget-object v0, v0, Landroid/support/v7/widget/ei;->d:Landroid/graphics/Rect;

    .line 4260
    :goto_0
    return-object v0

    .line 4244
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 50651
    iget-boolean v1, v1, Landroid/support/v7/widget/eu;->g:Z

    .line 4244
    if-eqz v1, :cond_2

    .line 50652
    iget-object v1, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v1}, Landroid/support/v7/widget/ex;->s()Z

    move-result v1

    .line 4244
    if-nez v1, :cond_1

    .line 50653
    iget-object v1, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v1}, Landroid/support/v7/widget/ex;->j()Z

    move-result v1

    .line 4244
    if-eqz v1, :cond_2

    .line 4246
    :cond_1
    iget-object v0, v0, Landroid/support/v7/widget/ei;->d:Landroid/graphics/Rect;

    goto :goto_0

    .line 4248
    :cond_2
    iget-object v2, v0, Landroid/support/v7/widget/ei;->d:Landroid/graphics/Rect;

    .line 4249
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4250
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v4

    .line 4251
    :goto_1
    if-ge v3, v5, :cond_3

    .line 4252
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4253
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ef;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {v1, v6, p1, p0, v7}, Landroid/support/v7/widget/ef;->a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/eu;)V

    .line 4254
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 4255
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 4256
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 4257
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 4251
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 4259
    :cond_3
    iput-boolean v4, v0, Landroid/support/v7/widget/ei;->e:Z

    move-object v0, v2

    .line 4260
    goto :goto_0
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 2956
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 9

    .prologue
    const/16 v3, 0x21

    const/16 v4, 0x11

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2169
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-eqz v0, :cond_3

    .line 2170
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->s()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-nez v0, :cond_3

    move v0, v1

    .line 2172
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    .line 2173
    if-eqz v0, :cond_e

    if-eq p2, v8, :cond_0

    if-ne p2, v1, :cond_e

    .line 2178
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0}, Landroid/support/v7/widget/eg;->f()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2179
    if-ne p2, v8, :cond_4

    const/16 v0, 0x82

    .line 2181
    :goto_1
    invoke-virtual {v6, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2182
    if-nez v0, :cond_5

    move v0, v1

    .line 2184
    :goto_2
    if-nez v0, :cond_1

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v5}, Landroid/support/v7/widget/eg;->e()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2185
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    .line 25000
    iget-object v0, v0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 2185
    if-ne v0, v1, :cond_6

    move v5, v1

    .line 2186
    :goto_3
    if-ne p2, v8, :cond_7

    move v0, v1

    :goto_4
    xor-int/2addr v0, v5

    if-eqz v0, :cond_8

    const/16 v0, 0x42

    .line 2188
    :goto_5
    invoke-virtual {v6, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2189
    if-nez v0, :cond_9

    move v0, v1

    .line 2191
    :cond_1
    :goto_6
    if-eqz v0, :cond_b

    .line 2192
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 2193
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2194
    if-nez v0, :cond_a

    .line 2196
    const/4 v0, 0x0

    .line 2218
    :cond_2
    :goto_7
    return-object v0

    :cond_3
    move v0, v2

    .line 2170
    goto :goto_0

    :cond_4
    move v0, v3

    .line 2179
    goto :goto_1

    :cond_5
    move v0, v2

    .line 2182
    goto :goto_2

    :cond_6
    move v5, v2

    .line 2185
    goto :goto_3

    :cond_7
    move v0, v2

    .line 2186
    goto :goto_4

    :cond_8
    move v0, v4

    goto :goto_5

    :cond_9
    move v0, v2

    .line 2189
    goto :goto_6

    .line 2198
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 2199
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {v0, p1, p2, v5, v7}, Landroid/support/v7/widget/eg;->a(Landroid/view/View;ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)Landroid/view/View;

    .line 2200
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 2202
    :cond_b
    invoke-virtual {v6, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 25230
    :goto_8
    if-eqz v0, :cond_c

    if-ne v0, p0, :cond_10

    :cond_c
    move v1, v2

    .line 2217
    :cond_d
    :goto_9
    if-nez v1, :cond_2

    .line 2218
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_7

    .line 2204
    :cond_e
    invoke-virtual {v6, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 2205
    if-nez v5, :cond_17

    if-eqz v0, :cond_17

    .line 2206
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 2207
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2208
    if-nez v0, :cond_f

    .line 2210
    const/4 v0, 0x0

    goto :goto_7

    .line 2212
    :cond_f
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 2213
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {v0, p1, p2, v5, v6}, Landroid/support/v7/widget/eg;->a(Landroid/view/View;ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)Landroid/view/View;

    move-result-object v0

    .line 2214
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    goto :goto_8

    .line 25233
    :cond_10
    if-eqz p1, :cond_d

    .line 25237
    if-eq p2, v8, :cond_11

    if-ne p2, v1, :cond_16

    .line 25238
    :cond_11
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    .line 26000
    iget-object v5, v5, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    .line 25238
    if-ne v5, v1, :cond_14

    move v5, v1

    .line 25239
    :goto_a
    if-ne p2, v8, :cond_12

    move v2, v1

    :cond_12
    xor-int/2addr v2, v5

    if-eqz v2, :cond_13

    const/16 v4, 0x42

    .line 25241
    :cond_13
    invoke-direct {p0, p1, v0, v4}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 25244
    if-ne p2, v8, :cond_15

    .line 25245
    const/16 v1, 0x82

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    goto :goto_9

    :cond_14
    move v5, v2

    .line 25238
    goto :goto_a

    .line 25247
    :cond_15
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    goto :goto_9

    .line 25250
    :cond_16
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    goto :goto_9

    :cond_17
    move-object v0, v5

    goto :goto_8

    :cond_18
    move v0, v2

    goto/16 :goto_2
.end method

.method public final g()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 3583
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0}, Landroid/support/v7/widget/bq;->b()I

    move-result v3

    move v2, v1

    .line 3584
    :goto_0
    if-ge v2, v3, :cond_0

    .line 3585
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/bq;->c(I)Landroid/view/View;

    move-result-object v0

    .line 3586
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    iput-boolean v4, v0, Landroid/support/v7/widget/ei;->e:Z

    .line 3584
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 3588
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    .line 50581
    iget-object v0, v2, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 50582
    :goto_1
    if-ge v1, v3, :cond_2

    .line 50583
    iget-object v0, v2, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    .line 50584
    iget-object v0, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 50585
    if-eqz v0, :cond_1

    .line 50586
    iput-boolean v4, v0, Landroid/support/v7/widget/ei;->e:Z

    .line 50582
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 3589
    :cond_2
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 3669
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-nez v0, :cond_0

    .line 3670
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3672
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0}, Landroid/support/v7/widget/eg;->b()Landroid/support/v7/widget/ei;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 3677
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-nez v0, :cond_0

    .line 3678
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3680
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/eg;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/ei;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 3685
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-nez v0, :cond_0

    .line 3686
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3688
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/eg;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ei;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v7/widget/dx;
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-eqz v0, :cond_0

    .line 1000
    const/4 v0, -0x1

    .line 1002
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .prologue
    .line 11588
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ap:Landroid/support/v7/widget/ea;

    if-nez v0, :cond_0

    .line 11589
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    .line 11591
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ap:Landroid/support/v7/widget/ea;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/ea;->a(II)I

    move-result v0

    goto :goto_0
.end method

.method public getCompatAccessibilityDelegate()Landroid/support/v7/widget/ey;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ao:Landroid/support/v7/widget/ey;

    return-object v0
.end method

.method public getItemAnimator()Landroid/support/v7/widget/eb;
    .locals 1

    .prologue
    .line 3034
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    return-object v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/eg;
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .prologue
    .line 1987
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .prologue
    .line 1977
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:I

    return v0
.end method

.method public getOnFlingListener()Landroid/support/v7/widget/ek;
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Landroid/support/v7/widget/ek;

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 1

    .prologue
    .line 3901
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Z

    return v0
.end method

.method public getRecycledViewPool()Landroid/support/v7/widget/en;
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    invoke-virtual {v0}, Landroid/support/v7/widget/eo;->c()Landroid/support/v7/widget/en;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 1275
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    return v0
.end method

.method final h()V
    .locals 2

    .prologue
    .line 4288
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    .line 4291
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollX()I

    move-result v0

    .line 4292
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v1

    .line 4293
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 4303
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->al:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4304
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->al:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4305
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->al:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4304
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4308
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    .line 4309
    return-void
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 9831
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    .line 2366
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 9816
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2336
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2337
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    .line 2338
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->J:Z

    .line 2339
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Z

    .line 2340
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-eqz v0, :cond_0

    .line 2341
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    .line 30628
    iput-boolean v1, v0, Landroid/support/v7/widget/eg;->u:Z

    .line 2343
    :cond_0
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->an:Z

    .line 2344
    return-void

    :cond_1
    move v0, v2

    .line 2339
    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 2348
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2349
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    if-eqz v0, :cond_0

    .line 2350
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    invoke-virtual {v0}, Landroid/support/v7/widget/eb;->d()V

    .line 2352
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 2353
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Z

    .line 2354
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-eqz v0, :cond_1

    .line 2355
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/eg;->b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/eo;)V

    .line 2357
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->av:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 31277
    invoke-static {}, Landroid/support/v7/widget/gn;->b()V

    .line 2359
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 3654
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 3656
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3657
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 3658
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ef;

    invoke-virtual {v0, p1, p0}, Landroid/support/v7/widget/ef;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 3657
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3660
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2770
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-nez v0, :cond_1

    .line 2801
    :cond_0
    :goto_0
    return v4

    .line 2773
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-nez v0, :cond_0

    .line 2776
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2777
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 2779
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0}, Landroid/support/v7/widget/eg;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2782
    const/16 v0, 0x9

    .line 2783
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v0

    neg-float v0, v0

    .line 2787
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v2}, Landroid/support/v7/widget/eg;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2788
    const/16 v2, 0xa

    .line 2789
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 2794
    :goto_2
    cmpl-float v3, v0, v1

    if-nez v3, :cond_2

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_0

    .line 2795
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollFactor()F

    move-result v1

    .line 2796
    mul-float/2addr v2, v1

    float-to-int v2, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v2, v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2785
    goto :goto_1

    :cond_4
    move v2, v1

    .line 2791
    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v1, -0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2490
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-eqz v0, :cond_1

    move v2, v3

    .line 2589
    :cond_0
    :goto_0
    return v2

    .line 31441
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 31442
    if-eq v5, v9, :cond_2

    if-nez v5, :cond_3

    .line 31443
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v7/widget/el;

    .line 31446
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v3

    .line 31447
    :goto_1
    if-ge v4, v6, :cond_5

    .line 31448
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/el;

    .line 31449
    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/el;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eq v5, v9, :cond_4

    .line 31450
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v7/widget/el;

    move v0, v2

    .line 2495
    :goto_2
    if-eqz v0, :cond_6

    .line 2496
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    goto :goto_0

    .line 31447
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_5
    move v0, v3

    .line 31454
    goto :goto_2

    .line 2500
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-nez v0, :cond_7

    move v2, v3

    .line 2501
    goto :goto_0

    .line 2504
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0}, Landroid/support/v7/widget/eg;->e()Z

    move-result v0

    .line 2505
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v4}, Landroid/support/v7/widget/eg;->f()Z

    move-result v4

    .line 2507
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/view/VelocityTracker;

    if-nez v5, :cond_8

    .line 2508
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/view/VelocityTracker;

    .line 2510
    :cond_8
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2512
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v5

    .line 2513
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v6

    .line 2515
    packed-switch v5, :pswitch_data_0

    .line 2589
    :cond_9
    :goto_3
    :pswitch_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    if-eq v0, v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 2517
    :pswitch_1
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->N:Z

    if-eqz v1, :cond_a

    .line 2518
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->N:Z

    .line 2520
    :cond_a
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    .line 2521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v8

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->aa:I

    .line 2522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v8

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->ab:I

    .line 2524
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_b

    .line 2525
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2526
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2530
    :cond_b
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->au:[I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->au:[I

    aput v3, v5, v2

    aput v3, v1, v3

    .line 2533
    if-eqz v0, :cond_12

    move v0, v2

    .line 2536
    :goto_4
    if-eqz v4, :cond_c

    .line 2537
    or-int/lit8 v0, v0, 0x2

    .line 2539
    :cond_c
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_3

    .line 2543
    :pswitch_2
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    .line 2544
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:I

    .line 2545
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:I

    goto :goto_3

    .line 2549
    :pswitch_3
    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 2550
    if-gez v5, :cond_d

    .line 2551
    const-string v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 2553
    goto/16 :goto_0

    .line 2556
    :cond_d
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v6, v8

    float-to-int v6, v6

    .line 2557
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    add-float/2addr v5, v8

    float-to-int v5, v5

    .line 2558
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    if-eq v7, v2, :cond_9

    .line 2559
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->aa:I

    sub-int/2addr v6, v7

    .line 2560
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->ab:I

    sub-int/2addr v5, v7

    .line 2562
    if-eqz v0, :cond_11

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->ae:I

    if-le v0, v7, :cond_11

    .line 2563
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->aa:I

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->ae:I

    if-gez v6, :cond_f

    move v0, v1

    :goto_5
    mul-int/2addr v0, v8

    add-int/2addr v0, v7

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    move v0, v2

    .line 2566
    :goto_6
    if-eqz v4, :cond_e

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->ae:I

    if-le v4, v6, :cond_e

    .line 2567
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:I

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->ae:I

    if-gez v5, :cond_10

    :goto_7
    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    move v0, v2

    .line 2570
    :cond_e
    if-eqz v0, :cond_9

    .line 2571
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_3

    :cond_f
    move v0, v2

    .line 2563
    goto :goto_5

    :cond_10
    move v1, v2

    .line 2567
    goto :goto_7

    .line 2577
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 2581
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2582
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll()V

    goto/16 :goto_3

    .line 2586
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    goto/16 :goto_3

    :cond_11
    move v0, v3

    goto :goto_6

    :cond_12
    move v0, v3

    goto/16 :goto_4

    .line 2515
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 3567
    const-string v0, "RV OnLayout"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 3568
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 3569
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 3570
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Z

    .line 3571
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2823
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-nez v2, :cond_1

    .line 2824
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    .line 2890
    :cond_0
    :goto_0
    return-void

    .line 2827
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-static {v2}, Landroid/support/v7/widget/eg;->a(Landroid/support/v7/widget/eg;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2828
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 2829
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 2830
    if-ne v2, v4, :cond_2

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 2832
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/widget/eg;->g(II)V

    .line 2833
    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    if-eqz v0, :cond_0

    .line 2836
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 34547
    iget v0, v0, Landroid/support/v7/widget/eu;->b:I

    .line 2836
    if-ne v0, v1, :cond_3

    .line 2837
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    .line 2841
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/eg;->e(II)V

    .line 2842
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 35547
    iput-boolean v1, v0, Landroid/support/v7/widget/eu;->k:Z

    .line 2843
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->z()V

    .line 2846
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/eg;->f(II)V

    .line 2850
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0}, Landroid/support/v7/widget/eg;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2851
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    .line 2852
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2853
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 2851
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/eg;->e(II)V

    .line 2854
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 36547
    iput-boolean v1, v0, Landroid/support/v7/widget/eu;->k:Z

    .line 2855
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->z()V

    .line 2857
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/eg;->f(II)V

    goto :goto_0

    .line 2860
    :cond_4
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->K:Z

    if-eqz v2, :cond_5

    .line 2861
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/eg;->g(II)V

    goto :goto_0

    .line 2865
    :cond_5
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->P:Z

    if-eqz v2, :cond_6

    .line 2866
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 2867
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->v()V

    .line 2869
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 37547
    iget-boolean v2, v2, Landroid/support/v7/widget/eu;->i:Z

    .line 2869
    if-eqz v2, :cond_7

    .line 2870
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 38547
    iput-boolean v1, v2, Landroid/support/v7/widget/eu;->g:Z

    .line 2876
    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Z

    .line 2877
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 2880
    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    if-eqz v1, :cond_8

    .line 2881
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    invoke-virtual {v2}, Landroid/support/v7/widget/dx;->b()I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/eu;->c:I

    .line 2885
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 2886
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/eg;->g(II)V

    .line 2887
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 2888
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 40547
    iput-boolean v0, v1, Landroid/support/v7/widget/eu;->g:Z

    goto/16 :goto_0

    .line 2873
    :cond_7
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    invoke-virtual {v1}, Landroid/support/v7/widget/af;->e()V

    .line 2874
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 39547
    iput-boolean v0, v1, Landroid/support/v7/widget/eu;->g:Z

    goto :goto_1

    .line 2883
    :cond_8
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    iput v0, v1, Landroid/support/v7/widget/eu;->c:I

    goto :goto_2
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 2326
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2329
    const/4 v0, 0x0

    .line 2331
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1136
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    if-nez v0, :cond_1

    .line 1137
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1141
    :cond_1
    check-cast p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 1142
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1143
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/eg;->a(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1122
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1123
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 1124
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;->a(Landroid/support/v7/widget/RecyclerView$SavedState;Landroid/support/v7/widget/RecyclerView$SavedState;)V

    .line 1131
    :goto_0
    return-object v0

    .line 1125
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-eqz v1, :cond_1

    .line 1126
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v1}, Landroid/support/v7/widget/eg;->d()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    goto :goto_0

    .line 1128
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 2910
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2911
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 2912
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->n()V

    .line 2915
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .prologue
    const/high16 v5, -0x80000000

    const/4 v2, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 2604
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->N:Z

    if-eqz v0, :cond_1

    .line 2741
    :cond_0
    :goto_0
    return v1

    .line 31458
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 31459
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v7/widget/el;

    if-eqz v3, :cond_2

    .line 31460
    if-nez v0, :cond_3

    .line 31462
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v7/widget/el;

    .line 31475
    :cond_2
    if-eqz v0, :cond_7

    .line 31476
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v1

    .line 31477
    :goto_1
    if-ge v3, v4, :cond_7

    .line 31478
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/el;

    .line 31479
    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/el;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 31480
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v7/widget/el;

    move v0, v9

    .line 2607
    :goto_2
    if-eqz v0, :cond_8

    .line 2608
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    move v1, v9

    .line 2609
    goto :goto_0

    .line 31464
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v7/widget/el;

    invoke-interface {v3, p1}, Landroid/support/v7/widget/el;->a(Landroid/view/MotionEvent;)V

    .line 31465
    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    if-ne v0, v9, :cond_5

    .line 31467
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v7/widget/el;

    :cond_5
    move v0, v9

    .line 31469
    goto :goto_2

    .line 31477
    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_7
    move v0, v1

    .line 31485
    goto :goto_2

    .line 2612
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-eqz v0, :cond_0

    .line 2616
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0}, Landroid/support/v7/widget/eg;->e()Z

    move-result v4

    .line 2617
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0}, Landroid/support/v7/widget/eg;->f()Z

    move-result v6

    .line 2619
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/view/VelocityTracker;

    if-nez v0, :cond_9

    .line 2620
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/view/VelocityTracker;

    .line 2624
    :cond_9
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    .line 2625
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2626
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v3

    .line 2628
    if-nez v0, :cond_a

    .line 2629
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->au:[I

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->au:[I

    aput v1, v8, v9

    aput v1, v7, v1

    .line 2631
    :cond_a
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->au:[I

    aget v7, v7, v1

    int-to-float v7, v7

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->au:[I

    aget v8, v8, v9

    int-to-float v8, v8

    invoke-virtual {v10, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2633
    packed-switch v0, :pswitch_data_0

    .line 2736
    :cond_b
    :goto_3
    :pswitch_0
    if-nez v1, :cond_c

    .line 2737
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2739
    :cond_c
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    move v1, v9

    .line 2741
    goto/16 :goto_0

    .line 2635
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    .line 2636
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v11

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:I

    .line 2637
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v11

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:I

    .line 2640
    if-eqz v4, :cond_26

    move v0, v9

    .line 2643
    :goto_4
    if-eqz v6, :cond_d

    .line 2644
    or-int/lit8 v0, v0, 0x2

    .line 2646
    :cond_d
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_3

    .line 2650
    :pswitch_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    .line 2651
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v11

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:I

    .line 2652
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v11

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:I

    goto :goto_3

    .line 2656
    :pswitch_3
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2657
    if-gez v0, :cond_e

    .line 2658
    const-string v0, "RecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error processing scroll; pointer index for id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2663
    :cond_e
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v11

    float-to-int v5, v2

    .line 2664
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v11

    float-to-int v7, v0

    .line 2665
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    sub-int v2, v0, v5

    .line 2666
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    sub-int/2addr v0, v7

    .line 2668
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->at:[I

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->as:[I

    invoke-virtual {p0, v2, v0, v3, v8}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2669
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->at:[I

    aget v3, v3, v1

    sub-int/2addr v2, v3

    .line 2670
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->at:[I

    aget v3, v3, v9

    sub-int/2addr v0, v3

    .line 2671
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->as:[I

    aget v3, v3, v1

    int-to-float v3, v3

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->as:[I

    aget v8, v8, v9

    int-to-float v8, v8

    invoke-virtual {v10, v3, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2673
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->au:[I

    aget v8, v3, v1

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->as:[I

    aget v11, v11, v1

    add-int/2addr v8, v11

    aput v8, v3, v1

    .line 2674
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->au:[I

    aget v8, v3, v9

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->as:[I

    aget v11, v11, v9

    add-int/2addr v8, v11

    aput v8, v3, v9

    .line 2677
    :cond_f
    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    if-eq v3, v9, :cond_11

    .line 2679
    if-eqz v4, :cond_25

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->ae:I

    if-le v3, v8, :cond_25

    .line 2680
    if-lez v2, :cond_12

    .line 2681
    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->ae:I

    sub-int/2addr v2, v3

    :goto_5
    move v3, v9

    .line 2687
    :goto_6
    if-eqz v6, :cond_10

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v11, p0, Landroid/support/v7/widget/RecyclerView;->ae:I

    if-le v8, v11, :cond_10

    .line 2688
    if-lez v0, :cond_13

    .line 2689
    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->ae:I

    sub-int/2addr v0, v3

    :goto_7
    move v3, v9

    .line 2695
    :cond_10
    if-eqz v3, :cond_11

    .line 2696
    invoke-direct {p0, v9}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2700
    :cond_11
    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    if-ne v3, v9, :cond_b

    .line 2701
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->as:[I

    aget v3, v3, v1

    sub-int v3, v5, v3

    iput v3, p0, Landroid/support/v7/widget/RecyclerView;->ac:I

    .line 2702
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->as:[I

    aget v3, v3, v9

    sub-int v3, v7, v3

    iput v3, p0, Landroid/support/v7/widget/RecyclerView;->ad:I

    .line 2704
    if-eqz v4, :cond_14

    :goto_8
    if-eqz v6, :cond_15

    :goto_9
    invoke-direct {p0, v2, v0, v10}, Landroid/support/v7/widget/RecyclerView;->a(IILandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2708
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_3

    .line 2683
    :cond_12
    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->ae:I

    add-int/2addr v2, v3

    goto :goto_5

    .line 2691
    :cond_13
    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->ae:I

    add-int/2addr v0, v3

    goto :goto_7

    :cond_14
    move v2, v1

    .line 2704
    goto :goto_8

    :cond_15
    move v0, v1

    goto :goto_9

    .line 2714
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 2718
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2720
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->ah:I

    int-to-float v7, v7

    invoke-virtual {v0, v3, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2721
    if-eqz v4, :cond_1a

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/view/VelocityTracker;

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    .line 2722
    invoke-static {v0, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    move v3, v0

    .line 2723
    :goto_a
    if-eqz v6, :cond_1b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    .line 2724
    invoke-static {v0, v4}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    .line 2725
    :goto_b
    cmpl-float v4, v3, v2

    if-nez v4, :cond_16

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_18

    :cond_16
    float-to-int v2, v3

    float-to-int v0, v0

    .line 31911
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-nez v3, :cond_1c

    .line 31912
    const-string v0, "RecyclerView"

    const-string v2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move v0, v1

    .line 2725
    :goto_c
    if-nez v0, :cond_19

    .line 2726
    :cond_18
    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2728
    :cond_19
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->o()V

    move v1, v9

    .line 2729
    goto/16 :goto_3

    :cond_1a
    move v3, v2

    .line 2722
    goto :goto_a

    :cond_1b
    move v0, v2

    .line 2724
    goto :goto_b

    .line 31916
    :cond_1c
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-nez v3, :cond_17

    .line 31920
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v3}, Landroid/support/v7/widget/eg;->e()Z

    move-result v4

    .line 31921
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v3}, Landroid/support/v7/widget/eg;->f()Z

    move-result v6

    .line 31923
    if-eqz v4, :cond_1d

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->ag:I

    if-ge v3, v7, :cond_24

    :cond_1d
    move v3, v1

    .line 31926
    :goto_d
    if-eqz v6, :cond_1e

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->ag:I

    if-ge v2, v7, :cond_23

    :cond_1e
    move v2, v1

    .line 31929
    :goto_e
    if-nez v3, :cond_1f

    if-eqz v2, :cond_17

    .line 31934
    :cond_1f
    int-to-float v0, v3

    int-to-float v7, v2

    invoke-virtual {p0, v0, v7}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v0

    if-nez v0, :cond_17

    .line 31935
    if-nez v4, :cond_20

    if-eqz v6, :cond_21

    :cond_20
    move v0, v9

    .line 31936
    :goto_f
    int-to-float v4, v3

    int-to-float v6, v2

    invoke-virtual {p0, v4, v6, v0}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 31938
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->af:Landroid/support/v7/widget/ek;

    if-eqz v4, :cond_22

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->af:Landroid/support/v7/widget/ek;

    invoke-virtual {v4}, Landroid/support/v7/widget/ek;->a()Z

    move-result v4

    if-eqz v4, :cond_22

    move v0, v9

    .line 31939
    goto :goto_c

    :cond_21
    move v0, v1

    .line 31935
    goto :goto_f

    .line 31942
    :cond_22
    if-eqz v0, :cond_17

    .line 31943
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:I

    neg-int v0, v0

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->ah:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 31944
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:I

    neg-int v0, v0

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->ah:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 31945
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->s:Landroid/support/v7/widget/ew;

    .line 32517
    iget-object v0, v11, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    .line 33150
    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 32518
    iput v1, v11, Landroid/support/v7/widget/ew;->b:I

    iput v1, v11, Landroid/support/v7/widget/ew;->a:I

    .line 32519
    iget-object v0, v11, Landroid/support/v7/widget/ew;->c:Landroid/support/v4/widget/ScrollerCompat;

    const v6, 0x7fffffff

    const v8, 0x7fffffff

    move v2, v1

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 32521
    invoke-virtual {v11}, Landroid/support/v7/widget/ew;->a()V

    move v0, v9

    .line 31946
    goto/16 :goto_c

    .line 2732
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    goto/16 :goto_3

    :cond_23
    move v2, v0

    goto :goto_e

    :cond_24
    move v3, v2

    goto :goto_d

    :cond_25
    move v3, v1

    goto/16 :goto_6

    :cond_26
    move v0, v1

    goto/16 :goto_4

    .line 2633
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 3504
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 3505
    if-eqz v0, :cond_0

    .line 3506
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3507
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->i()V

    .line 3513
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)V

    .line 3514
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 3515
    return-void

    .line 3508
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3509
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2286
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    .line 27371
    invoke-virtual {v0}, Landroid/support/v7/widget/eg;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v1

    .line 2286
    :goto_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 2287
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2292
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2293
    instance-of v3, v0, Landroid/support/v7/widget/ei;

    if-eqz v3, :cond_1

    .line 2295
    check-cast v0, Landroid/support/v7/widget/ei;

    .line 2296
    iget-boolean v3, v0, Landroid/support/v7/widget/ei;->e:Z

    if-nez v3, :cond_1

    .line 2297
    iget-object v0, v0, Landroid/support/v7/widget/ei;->d:Landroid/graphics/Rect;

    .line 2298
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2299
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2300
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2301
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 2305
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2306
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2307
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {p0, p1, v3, v0}, Landroid/support/v7/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 2309
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2310
    return-void

    :cond_3
    move v0, v2

    .line 27371
    goto :goto_0

    :cond_4
    move v0, v2

    .line 2307
    goto :goto_1
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 13

    .prologue
    .line 2314
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    .line 28323
    invoke-virtual {v3}, Landroid/support/v7/widget/eg;->m()I

    move-result v4

    .line 28324
    invoke-virtual {v3}, Landroid/support/v7/widget/eg;->n()I

    move-result v5

    .line 28487
    iget v0, v3, Landroid/support/v7/widget/eg;->z:I

    .line 28325
    invoke-virtual {v3}, Landroid/support/v7/widget/eg;->o()I

    move-result v1

    sub-int v6, v0, v1

    .line 28496
    iget v0, v3, Landroid/support/v7/widget/eg;->A:I

    .line 28326
    invoke-virtual {v3}, Landroid/support/v7/widget/eg;->p()I

    move-result v1

    sub-int v7, v0, v1

    .line 28327
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int v8, v0, v1

    .line 28328
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int v9, v0, v1

    .line 28329
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int v10, v8, v0

    .line 28330
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int v11, v9, v0

    .line 28332
    const/4 v0, 0x0

    sub-int v1, v8, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 28333
    const/4 v0, 0x0

    sub-int v2, v9, v5

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 28334
    const/4 v0, 0x0

    sub-int v12, v10, v6

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 28335
    const/4 v12, 0x0

    sub-int v7, v11, v7

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 29000
    iget-object v3, v3, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 28341
    const/4 v11, 0x1

    if-ne v3, v11, :cond_3

    .line 28342
    if-eqz v0, :cond_2

    .line 28351
    :goto_0
    if-eqz v2, :cond_5

    move v1, v2

    .line 28354
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_b

    .line 28355
    :cond_0
    if-eqz p3, :cond_6

    .line 28356
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 28360
    :cond_1
    :goto_2
    const/4 v0, 0x1

    :goto_3
    return v0

    .line 28342
    :cond_2
    sub-int v0, v10, v6

    .line 28343
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 28345
    :cond_3
    if-eqz v1, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    sub-int v1, v8, v4

    .line 28346
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 28351
    :cond_5
    sub-int v1, v9, v5

    .line 28352
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 29878
    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-nez v2, :cond_7

    .line 29879
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 29883
    :cond_7
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-nez v2, :cond_1

    .line 29886
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v2}, Landroid/support/v7/widget/eg;->e()Z

    move-result v2

    if-nez v2, :cond_8

    .line 29887
    const/4 v0, 0x0

    .line 29889
    :cond_8
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v2}, Landroid/support/v7/widget/eg;->f()Z

    move-result v2

    if-nez v2, :cond_9

    .line 29890
    const/4 v1, 0x0

    .line 29892
    :cond_9
    if-nez v0, :cond_a

    if-eqz v1, :cond_1

    .line 29893
    :cond_a
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->s:Landroid/support/v7/widget/ew;

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/widget/ew;->a(II)V

    goto :goto_2

    .line 28362
    :cond_b
    const/4 v0, 0x0

    .line 2314
    goto :goto_3
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .prologue
    .line 2594
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2595
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 2596
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/el;

    .line 2597
    invoke-interface {v0, p1}, Landroid/support/v7/widget/el;->a(Z)V

    .line 2595
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2599
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2600
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 3575
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-nez v0, :cond_0

    .line 3576
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3580
    :goto_0
    return-void

    .line 3578
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Z

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1496
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-nez v1, :cond_1

    .line 1497
    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_0
    :goto_0
    return-void

    .line 1501
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-nez v1, :cond_0

    .line 1504
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v1}, Landroid/support/v7/widget/eg;->e()Z

    move-result v1

    .line 1505
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v2}, Landroid/support/v7/widget/eg;->f()Z

    move-result v2

    .line 1506
    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    .line 1507
    :cond_2
    if-eqz v1, :cond_3

    :goto_1
    if-eqz v2, :cond_4

    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->a(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_3
    move p1, v0

    goto :goto_1

    :cond_4
    move p2, v0

    goto :goto_2
.end method

.method public scrollTo(II)V
    .locals 2

    .prologue
    .line 1490
    const-string v0, "RecyclerView"

    const-string v1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3018
    .line 43002
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43004
    if-eqz p1, :cond_3

    .line 43005
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v1

    .line 43007
    :goto_0
    if-nez v1, :cond_2

    .line 43010
    :goto_1
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    .line 43011
    const/4 v0, 0x1

    .line 3018
    :cond_0
    if-eqz v0, :cond_1

    .line 3022
    :goto_2
    return-void

    .line 3021
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public setAccessibilityDelegateCompat(Landroid/support/v7/widget/ey;)V
    .locals 1

    .prologue
    .line 570
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->ao:Landroid/support/v7/widget/ey;

    .line 571
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ao:Landroid/support/v7/widget/ey;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 572
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/dx;)V
    .locals 3

    .prologue
    .line 914
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 14930
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    if-eqz v0, :cond_0

    .line 14931
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v7/widget/eq;

    .line 15049
    iget-object v0, v0, Landroid/support/v7/widget/dx;->a:Landroid/support/v7/widget/dy;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/dy;->unregisterObserver(Ljava/lang/Object;)V

    .line 14936
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    if-eqz v0, :cond_1

    .line 14937
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    invoke-virtual {v0}, Landroid/support/v7/widget/eb;->d()V

    .line 14943
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-eqz v0, :cond_2

    .line 14944
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/eg;->c(Landroid/support/v7/widget/eo;)V

    .line 14945
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/eg;->b(Landroid/support/v7/widget/eo;)V

    .line 14948
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    invoke-virtual {v0}, Landroid/support/v7/widget/eo;->a()V

    .line 14950
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->a()V

    .line 14951
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    .line 14952
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    .line 14953
    if-eqz p1, :cond_3

    .line 14954
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v7/widget/eq;

    .line 16035
    iget-object v2, p1, Landroid/support/v7/widget/dx;->a:Landroid/support/v7/widget/dy;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/dy;->registerObserver(Ljava/lang/Object;)V

    .line 14955
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/dx;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 14960
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    .line 16532
    invoke-virtual {v1}, Landroid/support/v7/widget/eo;->a()V

    .line 16533
    invoke-virtual {v1}, Landroid/support/v7/widget/eo;->c()Landroid/support/v7/widget/en;

    move-result-object v1

    .line 16751
    if-eqz v0, :cond_4

    .line 16752
    invoke-virtual {v1}, Landroid/support/v7/widget/en;->b()V

    .line 16754
    :cond_4
    iget v0, v1, Landroid/support/v7/widget/en;->c:I

    if-nez v0, :cond_5

    .line 17681
    iget-object v0, v1, Landroid/support/v7/widget/en;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 16757
    :cond_5
    if-eqz v2, :cond_6

    .line 16758
    invoke-virtual {v1}, Landroid/support/v7/widget/en;->a()V

    .line 14961
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 18547
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/eu;->f:Z

    .line 14962
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()V

    .line 916
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 917
    return-void
.end method

.method public setChildDrawingOrderCallback(Landroid/support/v7/widget/ea;)V
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ap:Landroid/support/v7/widget/ea;

    if-ne p1, v0, :cond_0

    .line 1380
    :goto_0
    return-void

    .line 1378
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->ap:Landroid/support/v7/widget/ea;

    .line 1379
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ap:Landroid/support/v7/widget/ea;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .prologue
    .line 846
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eq p1, v0, :cond_0

    .line 847
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->n()V

    .line 849
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    .line 850
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 851
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Z

    if-eqz v0, :cond_1

    .line 852
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 854
    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    .prologue
    .line 833
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->K:Z

    .line 834
    return-void
.end method

.method public setItemAnimator(Landroid/support/v7/widget/eb;)V
    .locals 2

    .prologue
    .line 2929
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    if-eqz v0, :cond_0

    .line 2930
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    invoke-virtual {v0}, Landroid/support/v7/widget/eb;->d()V

    .line 2931
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    .line 41003
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/eb;->h:Landroid/support/v7/widget/ec;

    .line 2933
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    .line 2934
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    if-eqz v0, :cond_1

    .line 2935
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->am:Landroid/support/v7/widget/ec;

    .line 42003
    iput-object v1, v0, Landroid/support/v7/widget/eb;->h:Landroid/support/v7/widget/ec;

    .line 2937
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 3

    .prologue
    .line 1265
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    .line 21820
    iput p1, v1, Landroid/support/v7/widget/eo;->e:I

    .line 21822
    iget-object v0, v1, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, v1, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 21823
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/eo;->c(I)V

    .line 21822
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1266
    :cond_0
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1841
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-eq p1, v0, :cond_1

    .line 1842
    const-string v0, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 1843
    if-nez p1, :cond_2

    .line 1844
    iput-boolean v7, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    .line 1845
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/dx;

    if-eqz v0, :cond_0

    .line 1846
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1848
    :cond_0
    iput-boolean v7, p0, Landroid/support/v7/widget/RecyclerView;->M:Z

    .line 1859
    :cond_1
    :goto_0
    return-void

    .line 1850
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1851
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1853
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1854
    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    .line 1855
    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->N:Z

    .line 1856
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    goto :goto_0
.end method

.method public setLayoutManager(Landroid/support/v7/widget/eg;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1059
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-ne p1, v0, :cond_0

    .line 1096
    :goto_0
    return-void

    .line 1062
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 1065
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-eqz v0, :cond_3

    .line 1067
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    if-eqz v0, :cond_1

    .line 1068
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    invoke-virtual {v0}, Landroid/support/v7/widget/eb;->d()V

    .line 1070
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/eg;->c(Landroid/support/v7/widget/eo;)V

    .line 1071
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/eg;->b(Landroid/support/v7/widget/eo;)V

    .line 1072
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    invoke-virtual {v0}, Landroid/support/v7/widget/eo;->a()V

    .line 1074
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Z

    if-eqz v0, :cond_2

    .line 1075
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/eg;->b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/eo;)V

    .line 1077
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/eg;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 1078
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    .line 1083
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    .line 19188
    iget-object v0, v2, Landroid/support/v7/widget/bq;->b:Landroid/support/v7/widget/br;

    .line 19441
    :goto_2
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/support/v7/widget/br;->a:J

    .line 19442
    iget-object v1, v0, Landroid/support/v7/widget/br;->b:Landroid/support/v7/widget/br;

    if-eqz v1, :cond_4

    .line 19443
    iget-object v0, v0, Landroid/support/v7/widget/br;->b:Landroid/support/v7/widget/br;

    goto :goto_2

    .line 1080
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    invoke-virtual {v0}, Landroid/support/v7/widget/eo;->a()V

    goto :goto_1

    .line 19189
    :cond_4
    iget-object v0, v2, Landroid/support/v7/widget/bq;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_5

    .line 19190
    iget-object v3, v2, Landroid/support/v7/widget/bq;->a:Landroid/support/v7/widget/bs;

    iget-object v0, v2, Landroid/support/v7/widget/bq;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v3, v0}, Landroid/support/v7/widget/bs;->d(Landroid/view/View;)V

    .line 19191
    iget-object v0, v2, Landroid/support/v7/widget/bq;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 19189
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    .line 19193
    :cond_5
    iget-object v0, v2, Landroid/support/v7/widget/bq;->a:Landroid/support/v7/widget/bs;

    invoke-interface {v0}, Landroid/support/v7/widget/bs;->b()V

    .line 1084
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    .line 1085
    if-eqz p1, :cond_7

    .line 1086
    iget-object v0, p1, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    .line 1087
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LayoutManager "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1090
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/eg;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 1091
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Z

    if-eqz v0, :cond_7

    .line 1092
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    .line 19628
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/eg;->u:Z

    .line 1095
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto/16 :goto_0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .prologue
    .line 9811
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 9812
    return-void
.end method

.method public setOnFlingListener(Landroid/support/v7/widget/ek;)V
    .locals 0

    .prologue
    .line 1107
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->af:Landroid/support/v7/widget/ek;

    .line 1108
    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/em;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1392
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->ak:Landroid/support/v7/widget/em;

    .line 1393
    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0

    .prologue
    .line 3919
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->aj:Z

    .line 3920
    return-void
.end method

.method public setRecycledViewPool(Landroid/support/v7/widget/en;)V
    .locals 2

    .prologue
    .line 1239
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    .line 20612
    iget-object v1, v0, Landroid/support/v7/widget/eo;->f:Landroid/support/v7/widget/en;

    if-eqz v1, :cond_0

    .line 20613
    iget-object v1, v0, Landroid/support/v7/widget/eo;->f:Landroid/support/v7/widget/en;

    invoke-virtual {v1}, Landroid/support/v7/widget/en;->b()V

    .line 20615
    :cond_0
    iput-object p1, v0, Landroid/support/v7/widget/eo;->f:Landroid/support/v7/widget/en;

    .line 20616
    if-eqz p1, :cond_1

    .line 20617
    iget-object v1, v0, Landroid/support/v7/widget/eo;->f:Landroid/support/v7/widget/en;

    iget-object v0, v0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/dx;

    invoke-virtual {v1}, Landroid/support/v7/widget/en;->a()V

    .line 1240
    :cond_1
    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/ep;)V
    .locals 0

    .prologue
    .line 986
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->I:Landroid/support/v7/widget/ep;

    .line 987
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4

    .prologue
    .line 866
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 867
    packed-switch p1, :pswitch_data_0

    .line 869
    const-string v1, "RecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; using default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:I

    .line 880
    :goto_0
    return-void

    .line 877
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:I

    goto :goto_0

    .line 867
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setViewCacheExtension(Landroid/support/v7/widget/ev;)V
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    .line 21608
    iput-object p1, v0, Landroid/support/v7/widget/eo;->g:Landroid/support/v7/widget/ev;

    .line 1251
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .prologue
    .line 9821
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 9826
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 9827
    return-void
.end method
