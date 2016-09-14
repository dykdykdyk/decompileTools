.class public Lcom/nut/blehunter/ui/b/ac;
.super Lcom/nut/blehunter/ui/b/h;
.source "NutListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/nut/blehunter/ui/b/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nut/blehunter/ui/b/h;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/nut/blehunter/ui/b/a/d;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Lcom/nut/blehunter/ui/a/q;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nut/blehunter/entity/Nut;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field private e:Landroid/view/View;

.field private f:Landroid/support/v7/widget/RecyclerView;

.field private g:Landroid/view/View;

.field private h:Lcom/nut/blehunter/ui/widget/LoopViewPager;

.field private i:Lcom/nut/blehunter/ui/b/aj;

.field private j:I

.field private k:Lcom/nut/blehunter/ui/b/al;

.field private l:Z

.field private m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/nut/blehunter/ui/b/ac;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/ui/b/ac;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/h;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->c:Ljava/util/ArrayList;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/nut/blehunter/ui/b/ac;->j:I

    .line 91
    iput-boolean v1, p0, Lcom/nut/blehunter/ui/b/ac;->d:Z

    .line 93
    iput-boolean v1, p0, Lcom/nut/blehunter/ui/b/ac;->l:Z

    .line 95
    new-instance v0, Lcom/nut/blehunter/ui/b/ad;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/ad;-><init>(Lcom/nut/blehunter/ui/b/ac;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->m:Ljava/lang/Runnable;

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/b/ac;I)I
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/nut/blehunter/ui/b/ac;->j:I

    return p1
.end method

.method public static a()Lcom/nut/blehunter/ui/b/ac;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/nut/blehunter/ui/b/ac;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/b/ac;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/b/ac;Lcom/nut/blehunter/ui/b/aj;)Lcom/nut/blehunter/ui/b/aj;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/ac;->i:Lcom/nut/blehunter/ui/b/aj;

    return-object p1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/b/ac;)Lcom/nut/blehunter/ui/widget/LoopViewPager;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->h:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    return-object v0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/b/ac;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    .line 10236
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/ac;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/b/ac;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/ac;->c()V

    return-void
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/b/ac;)Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->e:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/b/ac;->l:Z

    .line 112
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->h:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ac;->m:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    return-void
.end method

.method static synthetic d(Lcom/nut/blehunter/ui/b/ac;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/b/ac;->l:Z

    .line 269
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->h:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->h:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ac;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 272
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/nut/blehunter/ui/b/ac;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/ac;->d()V

    return-void
.end method

.method static synthetic f(Lcom/nut/blehunter/ui/b/ac;)Lcom/nut/blehunter/ui/b/aj;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->i:Lcom/nut/blehunter/ui/b/aj;

    return-object v0
.end method

.method static synthetic g(Lcom/nut/blehunter/ui/b/ac;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/b/ac;->l:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 5

    .prologue
    .line 370
    iget v0, p0, Lcom/nut/blehunter/ui/b/ac;->j:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/nut/blehunter/ui/b/ac;->j:I

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ac;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->c:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nut/blehunter/ui/b/ac;->j:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    .line 374
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v1

    iget v2, v0, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v2

    .line 375
    if-eqz v2, :cond_0

    iget-object v1, v2, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 7391
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/ac;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7392
    const-string v2, "nut"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7393
    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/b/ac;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 378
    :sswitch_0
    const-string v4, "dfu"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "download_failed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 384
    :pswitch_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/ac;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, v2, Lcom/nut/blehunter/entity/t;->a:I

    iget-object v2, v2, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    invoke-static {v0, v1, v2, p0}, Lcom/nut/blehunter/dfu/e;->a(Landroid/support/v4/app/FragmentActivity;ILcom/nut/blehunter/entity/i;Lcom/nut/blehunter/ui/b/a/d;)V

    goto :goto_0

    .line 378
    nop

    :sswitch_data_0
    .sparse-switch
        0x18433 -> :sswitch_0
        0x95a9fd4 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b()V
    .locals 18

    .prologue
    .line 401
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 447
    :goto_0
    return-void

    .line 404
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nut/blehunter/ui/b/ac;->e:Landroid/view/View;

    const v3, 0x7f0d01b6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 405
    const/4 v5, 0x0

    .line 406
    const/4 v4, 0x0

    .line 407
    const/16 v3, 0x8

    .line 411
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nut/blehunter/ui/b/ac;->c:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nut/blehunter/ui/b/ac;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 412
    const/16 v3, 0x8

    .line 433
    :cond_1
    :goto_1
    if-nez v3, :cond_a

    .line 434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nut/blehunter/ui/b/ac;->e:Landroid/view/View;

    const v6, 0x7f0d01b5

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nut/blehunter/ui/b/ac;->e:Landroid/view/View;

    const v6, 0x7f0d01b5

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/nut/blehunter/ui/b/ac;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0051

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 436
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 437
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/nut/blehunter/ui/b/ac;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0a001a

    invoke-static {v3, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/nut/blehunter/ui/b/ac;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 441
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 442
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 413
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/nut/blehunter/ui/b/ac;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nut/blehunter/d/l;->d(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 414
    const/4 v8, 0x0

    .line 415
    const v9, 0x7f020236

    .line 7450
    invoke-virtual/range {p0 .. p0}, Lcom/nut/blehunter/ui/b/ac;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nut/blehunter/d/l;->c(Landroid/content/Context;)J

    move-result-wide v4

    .line 7451
    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    .line 7452
    const-wide/16 v4, 0x0

    const-wide/16 v10, 0x0

    .line 7453
    const-wide/16 v12, 0xe10

    div-long v12, v6, v12

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-lez v3, :cond_4

    .line 7454
    const-wide/16 v4, 0xe10

    div-long v4, v6, v4

    .line 7455
    const-wide/16 v12, 0xe10

    div-long v12, v6, v12

    const-wide/16 v14, 0xe10

    mul-long/2addr v12, v14

    sub-long/2addr v6, v12

    .line 7457
    :cond_4
    const-wide/16 v12, 0x3c

    div-long v12, v6, v12

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-lez v3, :cond_b

    .line 7458
    const-wide/16 v10, 0x3c

    div-long/2addr v6, v10

    .line 7464
    :goto_2
    const-wide/16 v10, 0x3b

    cmp-long v3, v6, v10

    if-nez v3, :cond_5

    .line 7465
    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    .line 7466
    const-wide/16 v4, 0x0

    .line 7470
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v12, 0x9

    cmp-long v3, v6, v12

    if-gtz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "0"

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v10, 0x9

    cmp-long v3, v4, v10

    if-gtz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7471
    const v4, 0x7f060137

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/nut/blehunter/ui/b/ac;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move v4, v9

    move-object v5, v3

    move v3, v8

    .line 418
    goto/16 :goto_1

    .line 7468
    :cond_5
    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    move-wide/from16 v16, v6

    move-wide v6, v4

    move-wide/from16 v4, v16

    goto :goto_3

    .line 7470
    :cond_6
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_7
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 419
    :cond_8
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nut/blehunter/entity/o;->e()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 420
    const/4 v3, 0x0

    .line 421
    const v4, 0x7f020234

    .line 422
    const v5, 0x7f060136

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/nut/blehunter/ui/b/ac;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 425
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/nut/blehunter/ui/b/ac;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nut/blehunter/d/h;->a(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nut/blehunter/entity/User;->f()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 426
    const/4 v3, 0x0

    .line 427
    const v4, 0x7f020233

    .line 428
    const v5, 0x7f060138

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/nut/blehunter/ui/b/ac;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 444
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nut/blehunter/ui/b/ac;->e:Landroid/view/View;

    const v3, 0x7f0d01b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    move-wide v6, v10

    goto/16 :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 241
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b/h;->onActivityCreated(Landroid/os/Bundle;)V

    .line 242
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/ac;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 245
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 360
    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->b:Lcom/nut/blehunter/ui/a/q;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->b:Lcom/nut/blehunter/ui/a/q;

    .line 7102
    iget-object v0, v0, Landroid/support/v7/widget/dx;->a:Landroid/support/v7/widget/dy;

    invoke-virtual {v0}, Landroid/support/v7/widget/dy;->b()V

    .line 366
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b/h;->onAttach(Landroid/content/Context;)V

    .line 129
    instance-of v0, p1, Lcom/nut/blehunter/ui/b/al;

    if-eqz v0, :cond_0

    .line 130
    check-cast p1, Lcom/nut/blehunter/ui/b/al;

    iput-object p1, p0, Lcom/nut/blehunter/ui/b/ac;->k:Lcom/nut/blehunter/ui/b/al;

    .line 132
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b/h;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/ac;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/b;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b;->j()Z

    .line 140
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 284
    if-nez v0, :cond_0

    const-string v0, ""

    move-object v6, v0

    .line 285
    :goto_0
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/ac;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/nut/blehunter/provider/e;->a:Landroid/net/Uri;

    sget-object v3, Lcom/nut/blehunter/provider/l;->b:[Ljava/lang/String;

    const-string v4, "sync_server_state != ? AND user_id = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "1"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "create_time DESC"

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 284
    :cond_0
    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    move-object v6, v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 144
    const v0, 0x7f030073

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->e:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->e:Landroid/view/View;

    const v1, 0x7f0d01b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/b/ae;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/ae;-><init>(Lcom/nut/blehunter/ui/b/ac;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->e:Landroid/view/View;

    const v1, 0x7f0d01b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->g:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->e:Landroid/view/View;

    const v1, 0x7f0d00bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->f:Landroid/support/v7/widget/RecyclerView;

    .line 162
    new-instance v0, Lcom/nut/blehunter/ui/a/q;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/ac;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nut/blehunter/ui/a/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->b:Lcom/nut/blehunter/ui/a/q;

    .line 163
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->b:Lcom/nut/blehunter/ui/a/q;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/a/q;->a()V

    .line 164
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/ac;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 165
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    .line 166
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ac;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/eg;)V

    .line 167
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/nut/blehunter/ui/widget/c;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/ac;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/nut/blehunter/ui/widget/c;-><init>(Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/ef;)V

    .line 168
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->f:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/eb;)V

    .line 169
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 170
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ac;->b:Lcom/nut/blehunter/ui/a/q;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/dx;)V

    .line 171
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/nut/blehunter/ui/widget/o;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/ac;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/nut/blehunter/ui/b/af;

    invoke-direct {v3, p0}, Lcom/nut/blehunter/ui/b/af;-><init>(Lcom/nut/blehunter/ui/b/ac;)V

    invoke-direct {v1, v2, v3}, Lcom/nut/blehunter/ui/widget/o;-><init>(Landroid/content/Context;Lcom/nut/blehunter/ui/widget/q;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/el;)V

    .line 197
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->e:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->k:Lcom/nut/blehunter/ui/b/al;

    .line 277
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 278
    invoke-super {p0}, Lcom/nut/blehunter/ui/b/h;->onDetach()V

    .line 279
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 64
    check-cast p2, Landroid/database/Cursor;

    .line 8292
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8293
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 8294
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/ac;->d()V

    .line 8295
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->h:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    if-eqz v0, :cond_0

    .line 8296
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->h:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->removeAllViewsInLayout()V

    .line 8297
    iput-object v4, p0, Lcom/nut/blehunter/ui/b/ac;->i:Lcom/nut/blehunter/ui/b/aj;

    .line 8299
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8300
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 8301
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8302
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    invoke-static {p2}, Lcom/nut/blehunter/provider/l;->a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v0

    .line 8303
    iget v1, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-ne v1, v3, :cond_1

    .line 8304
    const/4 v1, 0x3

    iput v1, v0, Lcom/nut/blehunter/entity/Nut;->L:I

    .line 8306
    :cond_1
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ac;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8309
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8310
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 8311
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->h:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    if-nez v0, :cond_3

    .line 9201
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->e:Landroid/view/View;

    const v1, 0x7f0d01ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/LoopViewPager;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->h:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    .line 9202
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->e:Landroid/view/View;

    const v1, 0x7f0d01cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;

    .line 9203
    new-instance v1, Lcom/nut/blehunter/ui/b/aj;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/ac;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/nut/blehunter/ui/b/aj;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/nut/blehunter/ui/b/ac;->i:Lcom/nut/blehunter/ui/b/aj;

    .line 9204
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ac;->h:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    iget-object v2, p0, Lcom/nut/blehunter/ui/b/ac;->i:Lcom/nut/blehunter/ui/b/aj;

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 9205
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ac;->h:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    invoke-virtual {v1, v3}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->setBoundaryCaching(Z)V

    .line 9206
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ac;->h:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    new-instance v2, Lcom/nut/blehunter/ui/b/ag;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/b/ag;-><init>(Lcom/nut/blehunter/ui/b/ac;)V

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9222
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ac;->h:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 9224
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->e:Landroid/view/View;

    const v1, 0x7f0d0131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/b/ah;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/ah;-><init>(Lcom/nut/blehunter/ui/b/ac;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8314
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->h:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9327
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->b()Lcom/nut/blehunter/rxApi/service/AccountService;

    move-result-object v0

    const-string v1, "201"

    invoke-interface {v0, v1}, Lcom/nut/blehunter/rxApi/service/AccountService;->getBanners(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/b/ai;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/ai;-><init>(Lcom/nut/blehunter/ui/b/ac;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 8318
    :cond_4
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->k:Lcom/nut/blehunter/ui/b/al;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/nut/blehunter/ui/b/ac;->d:Z

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ac;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eq v0, v1, :cond_5

    .line 8319
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/b/ac;->d:Z

    .line 8320
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->k:Lcom/nut/blehunter/ui/b/al;

    invoke-interface {v0}, Lcom/nut/blehunter/ui/b/al;->q()V

    .line 8322
    :cond_5
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->b:Lcom/nut/blehunter/ui/a/q;

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ac;->c:Ljava/util/ArrayList;

    .line 10076
    iget-object v2, v0, Lcom/nut/blehunter/ui/a/q;->d:Ljava/util/ArrayList;

    if-nez v2, :cond_6

    .line 10077
    iput-object v1, v0, Lcom/nut/blehunter/ui/a/q;->d:Ljava/util/ArrayList;

    .line 10102
    :cond_6
    iget-object v0, v0, Landroid/support/v7/widget/dx;->a:Landroid/support/v7/widget/dy;

    invoke-virtual {v0}, Landroid/support/v7/widget/dy;->b()V

    .line 8323
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/ac;->b()V

    .line 64
    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 249
    invoke-super {p0}, Lcom/nut/blehunter/ui/b/h;->onResume()V

    .line 250
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/ac;->b()V

    .line 251
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Lcom/nut/blehunter/ui/b/h;->onStart()V

    .line 256
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->h:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->i:Lcom/nut/blehunter/ui/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ac;->i:Lcom/nut/blehunter/ui/b/aj;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/aj;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/nut/blehunter/ui/b/ac;->l:Z

    if-nez v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/ac;->c()V

    .line 259
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/ac;->d()V

    .line 264
    invoke-super {p0}, Lcom/nut/blehunter/ui/b/h;->onStop()V

    .line 265
    return-void
.end method
