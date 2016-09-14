.class public Lcom/nut/blehunter/ui/MapLocationActivity;
.super Lcom/nut/blehunter/ui/b;
.source "MapLocationActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nut/blehunter/ui/b/q;
.implements Lcom/nut/blehunter/ui/b/s;
.implements Lcom/nut/blehunter/ui/b/t;
.implements Lcom/nut/blehunter/ui/b/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nut/blehunter/ui/b;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/nut/blehunter/ui/b/q;",
        "Lcom/nut/blehunter/ui/b/s;",
        "Lcom/nut/blehunter/ui/b/t;",
        "Lcom/nut/blehunter/ui/b/v;"
    }
.end annotation


# instance fields
.field a:Lcom/squareup/picasso/Target;

.field b:Landroid/os/CountDownTimer;

.field private c:Z

.field private d:Lcom/nut/blehunter/entity/Nut;

.field private e:Landroid/graphics/Bitmap;

.field private f:Lcom/nut/blehunter/ui/b/i;

.field private g:Lcom/nut/blehunter/ui/widget/k;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nut/blehunter/entity/CustomMarker;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->h:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Lcom/nut/blehunter/ui/cw;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/cw;-><init>(Lcom/nut/blehunter/ui/MapLocationActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->i:Landroid/view/View$OnClickListener;

    .line 110
    new-instance v0, Lcom/nut/blehunter/ui/cx;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/cx;-><init>(Lcom/nut/blehunter/ui/MapLocationActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->a:Lcom/squareup/picasso/Target;

    .line 125
    new-instance v0, Lcom/nut/blehunter/ui/cy;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/cy;-><init>(Lcom/nut/blehunter/ui/MapLocationActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->b:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/MapLocationActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->e:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/MapLocationActivity;)Lcom/nut/blehunter/ui/widget/k;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->g:Lcom/nut/blehunter/ui/widget/k;

    return-object v0
.end method

.method private a(Lcom/nut/blehunter/entity/CustomMarker;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 544
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 545
    :cond_0
    const-string v0, ""

    .line 547
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/nut/blehunter/entity/CustomMarker;->a()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v2

    iget v3, p1, Lcom/nut/blehunter/entity/CustomMarker;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/nut/blehunter/entity/CustomMarker;Lcom/nut/blehunter/entity/Nut;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 551
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 552
    :cond_0
    const-string v0, ""

    .line 554
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/nut/blehunter/entity/CustomMarker;->a()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v2

    iget v3, p1, Lcom/nut/blehunter/entity/CustomMarker;->a:I

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;ILcom/nut/blehunter/entity/Nut;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/nut/blehunter/entity/Nut;Lcom/nut/blehunter/entity/CustomMarker;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 598
    const v0, 0x7f0d00f7

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 599
    const v1, 0x7f0d00f6

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/MapLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 602
    iget-object v3, p1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/nut/blehunter/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/nut/blehunter/b/a;

    move-result-object v3

    .line 603
    if-nez v3, :cond_0

    const-string v3, ""

    .line 604
    :goto_0
    iget v4, p1, Lcom/nut/blehunter/entity/Nut;->K:I

    sparse-switch v4, :sswitch_data_0

    .line 628
    const v0, 0x7f060159

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {p0, v0, v4}, Lcom/nut/blehunter/ui/MapLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 629
    const v3, 0x7f020087

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v3, v0

    .line 632
    :goto_1
    const v0, 0x7f0d00f8

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    const v0, 0x7f0d00f9

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-wide v4, p2, Lcom/nut/blehunter/entity/CustomMarker;->f:J

    invoke-static {v4, v5}, Lcom/nut/blehunter/d/e;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-boolean v0, v0, Lcom/nut/blehunter/entity/Nut;->E:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 638
    :goto_3
    return-void

    .line 603
    :cond_0
    invoke-virtual {v3}, Lcom/nut/blehunter/b/a;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 606
    :sswitch_0
    const v0, 0x7f060159

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {p0, v0, v4}, Lcom/nut/blehunter/ui/MapLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 607
    const v3, 0x7f020087

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v3, v0

    .line 608
    goto :goto_1

    .line 610
    :sswitch_1
    const v4, 0x7f060159

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/nut/blehunter/ui/MapLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 611
    const v4, 0x7f060158

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p1, Lcom/nut/blehunter/entity/Nut;->F:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p1, Lcom/nut/blehunter/entity/Nut;->G:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/nut/blehunter/ui/MapLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 612
    iget v5, p1, Lcom/nut/blehunter/entity/Nut;->F:I

    if-lez v5, :cond_1

    .line 613
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 616
    :cond_1
    const v0, 0x7f020218

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 636
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 619
    :sswitch_2
    const v3, 0x7f06015a

    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p2, Lcom/nut/blehunter/entity/CustomMarker;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/nut/blehunter/ui/MapLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 620
    const v4, 0x7f060158

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p1, Lcom/nut/blehunter/entity/Nut;->F:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p1, Lcom/nut/blehunter/entity/Nut;->G:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/nut/blehunter/ui/MapLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 621
    iget v5, p1, Lcom/nut/blehunter/entity/Nut;->G:I

    if-lez v5, :cond_2

    .line 622
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 625
    :cond_2
    const v0, 0x7f020218

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 634
    :cond_3
    const/16 v0, 0x8

    goto/16 :goto_2

    .line 604
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/MapLocationActivity;Ljava/lang/String;Lcom/nut/blehunter/c/g;Lcom/nut/blehunter/entity/Nut;Landroid/graphics/Bitmap;Z)V
    .locals 7

    .prologue
    .line 72
    .line 9782
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 9783
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->b()Lcom/nut/blehunter/rxApi/service/AccountService;

    move-result-object v0

    const-string v1, "bindThirdAccount"

    const-string v2, "0"

    invoke-static {v2, p1}, Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;->createBindThirdAccountRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nut/blehunter/rxApi/service/AccountService;->bindThirdAccount(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;)Lretrofit2/Call;

    move-result-object v6

    new-instance v0, Lcom/nut/blehunter/ui/df;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/nut/blehunter/ui/df;-><init>(Lcom/nut/blehunter/ui/MapLocationActivity;Lcom/nut/blehunter/c/g;Lcom/nut/blehunter/entity/Nut;Landroid/graphics/Bitmap;Z)V

    invoke-interface {v6, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 72
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 498
    const v0, 0x7f0d00f5

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 499
    return-void

    .line 498
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/MapLocationActivity;)Lcom/nut/blehunter/entity/Nut;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    return-object v0
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/MapLocationActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 502
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 506
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/CustomMarker;

    .line 507
    invoke-virtual {v0}, Lcom/nut/blehunter/entity/CustomMarker;->a()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    iget v3, v0, Lcom/nut/blehunter/entity/CustomMarker;->a:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 517
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->a(Lcom/nut/blehunter/entity/CustomMarker;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/nut/blehunter/entity/CustomMarker;->b:Ljava/lang/String;

    .line 518
    iput-boolean v4, v0, Lcom/nut/blehunter/entity/CustomMarker;->e:Z

    goto :goto_1

    .line 512
    :pswitch_2
    iget-object v3, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-direct {p0, v0, v3}, Lcom/nut/blehunter/ui/MapLocationActivity;->a(Lcom/nut/blehunter/entity/CustomMarker;Lcom/nut/blehunter/entity/Nut;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/nut/blehunter/entity/CustomMarker;->b:Ljava/lang/String;

    .line 513
    iput-boolean v4, v0, Lcom/nut/blehunter/entity/CustomMarker;->e:Z

    .line 514
    iget-object v3, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-direct {p0, v3, v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->a(Lcom/nut/blehunter/entity/Nut;Lcom/nut/blehunter/entity/CustomMarker;)V

    goto :goto_1

    .line 521
    :pswitch_3
    iget-object v3, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-direct {p0, v3, v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->a(Lcom/nut/blehunter/entity/Nut;Lcom/nut/blehunter/entity/CustomMarker;)V

    .line 522
    iget-object v3, v0, Lcom/nut/blehunter/entity/CustomMarker;->b:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/nut/blehunter/ui/MapLocationActivity;->d(Ljava/lang/String;)V

    .line 523
    iget-object v3, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-direct {p0, v0, v3}, Lcom/nut/blehunter/ui/MapLocationActivity;->a(Lcom/nut/blehunter/entity/CustomMarker;Lcom/nut/blehunter/entity/Nut;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/nut/blehunter/entity/CustomMarker;->b:Ljava/lang/String;

    goto :goto_1

    .line 526
    :pswitch_4
    iget-object v3, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-direct {p0, v3, v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->a(Lcom/nut/blehunter/entity/Nut;Lcom/nut/blehunter/entity/CustomMarker;)V

    .line 527
    iget-object v3, v0, Lcom/nut/blehunter/entity/CustomMarker;->b:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/nut/blehunter/ui/MapLocationActivity;->d(Ljava/lang/String;)V

    .line 534
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->a(Lcom/nut/blehunter/entity/CustomMarker;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/nut/blehunter/entity/CustomMarker;->b:Ljava/lang/String;

    goto :goto_1

    .line 531
    :pswitch_6
    iget-object v3, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-direct {p0, v0, v3}, Lcom/nut/blehunter/ui/MapLocationActivity;->a(Lcom/nut/blehunter/entity/CustomMarker;Lcom/nut/blehunter/entity/Nut;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/nut/blehunter/entity/CustomMarker;->b:Ljava/lang/String;

    goto :goto_1

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 508
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic d(Lcom/nut/blehunter/ui/MapLocationActivity;)V
    .locals 3

    .prologue
    .line 9691
    new-instance v0, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 9692
    const v1, 0x7f06004f

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 9693
    const v1, 0x7f0600c9

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 9694
    const v1, 0x7f060091

    new-instance v2, Lcom/nut/blehunter/ui/da;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/da;-><init>(Lcom/nut/blehunter/ui/MapLocationActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 9706
    const v1, 0x7f060083

    new-instance v2, Lcom/nut/blehunter/ui/db;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/db;-><init>(Lcom/nut/blehunter/ui/MapLocationActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 9713
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 9714
    const-string v1, "baseDialog"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 588
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    :cond_0
    return-void

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/CustomMarker;

    .line 592
    iget-object v1, v0, Lcom/nut/blehunter/entity/CustomMarker;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/nut/blehunter/entity/CustomMarker;->e:Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic e(Lcom/nut/blehunter/ui/MapLocationActivity;)Lcom/nut/blehunter/ui/b/i;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/entity/CustomLatLng;)V
    .locals 8

    .prologue
    const-wide v6, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/4 v4, 0x1

    .line 655
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->b:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 657
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, p1, v4}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/entity/CustomLatLng;Z)V

    .line 661
    :cond_0
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 5409
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-eq v0, v4, :cond_3

    .line 663
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 664
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->h:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/CustomMarker;

    .line 666
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/nut/blehunter/entity/CustomMarker;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 7048
    iget-wide v2, p1, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 667
    add-double/2addr v2, v6

    iput-wide v2, v0, Lcom/nut/blehunter/entity/CustomMarker;->g:D

    .line 7052
    iget-wide v2, p1, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 668
    add-double/2addr v2, v6

    iput-wide v2, v0, Lcom/nut/blehunter/entity/CustomMarker;->h:D

    .line 669
    iget-object v1, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    if-eqz v1, :cond_2

    .line 670
    iget-object v1, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    iget-object v0, v0, Lcom/nut/blehunter/entity/CustomMarker;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/lang/String;)V

    .line 671
    invoke-direct {p0}, Lcom/nut/blehunter/ui/MapLocationActivity;->c()V

    .line 675
    :cond_2
    return-void

    .line 5412
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    .line 6048
    iget-wide v2, p1, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 5412
    iput-wide v2, v0, Lcom/nut/blehunter/entity/PositionRecord;->e:D

    .line 5413
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    .line 6052
    iget-wide v2, p1, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 5413
    iput-wide v2, v0, Lcom/nut/blehunter/entity/PositionRecord;->d:D

    .line 5414
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    invoke-static {}, Lcom/nut/blehunter/d/c;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/nut/blehunter/entity/PositionRecord;->b:J

    .line 5415
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0, v1, v4}, Lcom/nut/blehunter/provider/l;->a(Lcom/nut/blehunter/entity/Nut;Z)V

    goto :goto_0
.end method

.method public final a(Lcom/nut/blehunter/entity/Nut;Landroid/graphics/Bitmap;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 721
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 722
    if-nez v0, :cond_1

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    new-instance v1, Lcom/nut/blehunter/c/b;

    invoke-direct {v1}, Lcom/nut/blehunter/c/b;-><init>()V

    .line 727
    const v1, 0x7f06015f

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/MapLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 728
    invoke-static {p0, v4}, Lcom/nut/blehunter/c/b;->a(Landroid/content/Context;I)Lcom/nut/blehunter/c/g;

    move-result-object v2

    .line 729
    invoke-virtual {v0}, Lcom/nut/blehunter/entity/User;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 730
    new-instance v1, Lcom/nut/blehunter/entity/ThirdAccount;

    invoke-direct {v1}, Lcom/nut/blehunter/entity/ThirdAccount;-><init>()V

    .line 731
    iget-object v3, v0, Lcom/nut/blehunter/entity/User;->f:Lcom/nut/blehunter/entity/Wechat;

    iget-object v3, v3, Lcom/nut/blehunter/entity/Wechat;->a:Ljava/lang/String;

    iput-object v3, v1, Lcom/nut/blehunter/entity/ThirdAccount;->e:Ljava/lang/String;

    .line 732
    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->f:Lcom/nut/blehunter/entity/Wechat;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Wechat;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/nut/blehunter/entity/ThirdAccount;->f:Ljava/lang/String;

    .line 733
    invoke-interface {v2, v1, p1, p2, p3}, Lcom/nut/blehunter/c/g;->a(Lcom/nut/blehunter/entity/ThirdAccount;Lcom/nut/blehunter/entity/Nut;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 7742
    :cond_2
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MapLocationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7745
    new-instance v0, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 7746
    const v2, 0x7f06004f

    invoke-virtual {v0, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 7747
    invoke-virtual {v0, v4}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 7748
    invoke-virtual {v0, v4}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 7749
    const v2, 0x7f060119

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/nut/blehunter/ui/MapLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    .line 7750
    const v1, 0x7f060085

    new-instance v2, Lcom/nut/blehunter/ui/dc;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/nut/blehunter/ui/dc;-><init>(Lcom/nut/blehunter/ui/MapLocationActivity;Lcom/nut/blehunter/entity/Nut;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 7770
    const v1, 0x7f060083

    new-instance v2, Lcom/nut/blehunter/ui/de;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/de;-><init>(Lcom/nut/blehunter/ui/MapLocationActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 7776
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 8060
    const-string v1, "baseDialog"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;)V
    .locals 10

    .prologue
    const/4 v3, 0x7

    const/4 v5, 0x1

    const/4 v2, 0x5

    const/4 v6, 0x0

    .line 684
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    if-nez v0, :cond_1

    .line 688
    :cond_0
    return-void

    .line 7558
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7561
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/CustomMarker;

    .line 7562
    iget v1, v0, Lcom/nut/blehunter/entity/CustomMarker;->a:I

    if-lt v1, v2, :cond_0

    .line 7565
    iget-object v1, v0, Lcom/nut/blehunter/entity/CustomMarker;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7566
    iget-object v1, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_3

    move v4, v5

    .line 7567
    :goto_1
    if-eqz v4, :cond_4

    move v1, v2

    :goto_2
    iput v1, v0, Lcom/nut/blehunter/entity/CustomMarker;->a:I

    .line 7568
    iput-boolean v5, v0, Lcom/nut/blehunter/entity/CustomMarker;->e:Z

    .line 7569
    if-eqz v4, :cond_5

    .line 7570
    iget-object v1, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    iget-object v4, v0, Lcom/nut/blehunter/entity/CustomMarker;->b:Ljava/lang/String;

    iget v8, v0, Lcom/nut/blehunter/entity/CustomMarker;->a:I

    iget-object v9, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v1, v4, v8, v9}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/lang/String;ILcom/nut/blehunter/entity/Nut;)V

    .line 7574
    :goto_3
    iget-object v1, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-direct {p0, v1, v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->a(Lcom/nut/blehunter/entity/Nut;Lcom/nut/blehunter/entity/CustomMarker;)V

    goto :goto_0

    :cond_3
    move v4, v6

    .line 7566
    goto :goto_1

    :cond_4
    move v1, v3

    .line 7567
    goto :goto_2

    .line 7572
    :cond_5
    iget-object v1, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    iget-object v4, v0, Lcom/nut/blehunter/entity/CustomMarker;->b:Ljava/lang/String;

    iget v8, v0, Lcom/nut/blehunter/entity/CustomMarker;->a:I

    invoke-virtual {v1, v4, v8}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/lang/String;I)V

    goto :goto_3

    .line 7575
    :cond_6
    iget-boolean v1, v0, Lcom/nut/blehunter/entity/CustomMarker;->e:Z

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/nut/blehunter/entity/CustomMarker;->a:I

    if-ne v1, v2, :cond_7

    .line 7576
    const/4 v1, 0x6

    iput v1, v0, Lcom/nut/blehunter/entity/CustomMarker;->a:I

    .line 7577
    iput-boolean v6, v0, Lcom/nut/blehunter/entity/CustomMarker;->e:Z

    .line 7578
    iget-object v1, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    iget-object v4, v0, Lcom/nut/blehunter/entity/CustomMarker;->b:Ljava/lang/String;

    iget v0, v0, Lcom/nut/blehunter/entity/CustomMarker;->a:I

    iget-object v8, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v1, v4, v0, v8}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/lang/String;ILcom/nut/blehunter/entity/Nut;)V

    goto :goto_0

    .line 7579
    :cond_7
    iget-boolean v1, v0, Lcom/nut/blehunter/entity/CustomMarker;->e:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/nut/blehunter/entity/CustomMarker;->a:I

    if-ne v1, v3, :cond_2

    .line 7580
    const/16 v1, 0x8

    iput v1, v0, Lcom/nut/blehunter/entity/CustomMarker;->a:I

    .line 7581
    iput-boolean v6, v0, Lcom/nut/blehunter/entity/CustomMarker;->e:Z

    .line 7582
    iget-object v1, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    iget-object v4, v0, Lcom/nut/blehunter/entity/CustomMarker;->b:Ljava/lang/String;

    iget v0, v0, Lcom/nut/blehunter/entity/CustomMarker;->a:I

    invoke-virtual {v1, v4, v0}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 680
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MapLocationActivity;->finish()V

    .line 239
    const/4 v0, 0x0

    const v1, 0x7f040011

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/MapLocationActivity;->overridePendingTransition(II)V

    .line 240
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 256
    sparse-switch v0, :sswitch_data_0

    .line 5294
    :cond_0
    :goto_0
    return-void

    .line 258
    :sswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/i;->d()V

    .line 260
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 261
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    .line 265
    :sswitch_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/CustomMarker;

    .line 267
    iget-boolean v2, v0, Lcom/nut/blehunter/entity/CustomMarker;->e:Z

    if-eqz v2, :cond_1

    .line 4315
    const-string v2, "geo:0,0?q=%f,%f(%s)"

    .line 4316
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 4317
    const-string v1, "marker"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4318
    const-string v1, "formatQuery"

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4319
    new-instance v4, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-array v5, v11, [Ljava/lang/Object;

    iget-wide v6, v0, Lcom/nut/blehunter/entity/CustomMarker;->g:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    iget-wide v6, v0, Lcom/nut/blehunter/entity/CustomMarker;->h:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v9

    iget-object v6, v0, Lcom/nut/blehunter/entity/CustomMarker;->c:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4321
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MapLocationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v5, 0x10000

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 4323
    const-string v5, "resolveInfos"

    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4325
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4326
    :cond_2
    const v0, 0x7f060157

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 4327
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v9, :cond_5

    .line 4328
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 5293
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 5296
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 5297
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MapLocationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 5298
    if-eqz v3, :cond_0

    .line 5299
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5300
    const-string v5, "autonavi"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5302
    iget-wide v4, v0, Lcom/nut/blehunter/entity/CustomMarker;->g:D

    iget-wide v6, v0, Lcom/nut/blehunter/entity/CustomMarker;->h:D

    invoke-static {v4, v5, v6, v7}, Lcom/nut/blehunter/d/f;->a(DD)[D

    move-result-object v1

    .line 5303
    new-array v4, v11, [Ljava/lang/Object;

    aget-wide v6, v1, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    aget-wide v6, v1, v9

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v4, v9

    iget-object v0, v0, Lcom/nut/blehunter/entity/CustomMarker;->c:Ljava/lang/String;

    aput-object v0, v4, v10

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5307
    :goto_1
    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ui/MapLocationActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5305
    :cond_4
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 4330
    :cond_5
    invoke-static {v3}, Lcom/nut/blehunter/ui/b/a/n;->a(Landroid/os/Bundle;)Lcom/nut/blehunter/ui/b/a/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MapLocationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "map_choose"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/n;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 276
    :sswitch_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-nez v0, :cond_7

    .line 277
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5336
    new-instance v0, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 5337
    const v1, 0x7f0600ea

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 5338
    const v1, 0x7f0600bd

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 5339
    const v1, 0x7f060084

    new-instance v2, Lcom/nut/blehunter/ui/cz;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/cz;-><init>(Lcom/nut/blehunter/ui/MapLocationActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 5347
    const v1, 0x7f06008e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 5348
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 5349
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MapLocationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "baseDialog"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/DeclareLostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    const-string v1, "nut"

    iget-object v2, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 285
    :cond_7
    new-instance v0, Lcom/nut/blehunter/ui/widget/k;

    iget-object v1, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->i:Landroid/view/View$OnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/nut/blehunter/ui/widget/k;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->g:Lcom/nut/blehunter/ui/widget/k;

    .line 286
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->g:Lcom/nut/blehunter/ui/widget/k;

    const/16 v1, 0x51

    invoke-virtual {v0, p1, v1, v8, v8}, Lcom/nut/blehunter/ui/widget/k;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 256
    :sswitch_data_0
    .sparse-switch
        0x7f0d00f6 -> :sswitch_2
        0x7f0d00fc -> :sswitch_0
        0x7f0d00fd -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 144
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->setContentView(I)V

    .line 146
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MapLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 147
    const-string v1, "nut"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    iput-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    .line 148
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MapLocationActivity;->finish()V

    .line 151
    :cond_0
    const v0, 0x7f0601dd

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/MapLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->a(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MapLocationActivity;->h()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/d/p;->a(Landroid/support/v7/widget/Toolbar;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 1158
    iput-boolean v3, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->c:Z

    .line 1159
    const v0, 0x7f0d00fc

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1160
    const v0, 0x7f0d00fd

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1161
    const v0, 0x7f0d00f6

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1163
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/n;->a(Landroid/content/Context;)Lcom/nut/blehunter/ui/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    .line 1164
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    if-eqz v0, :cond_1

    .line 1165
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/s;)V

    .line 1166
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/t;)V

    .line 1167
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/q;)V

    .line 1168
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-ne v0, v5, :cond_3

    .line 1169
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, v3}, Lcom/nut/blehunter/ui/b/i;->b(Z)V

    .line 1170
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/v;)V

    .line 1174
    :goto_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MapLocationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0d008d

    iget-object v2, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    iget-object v3, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v3}, Lcom/nut/blehunter/ui/b/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1179
    :cond_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MapLocationActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v4, v6, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1181
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-ne v0, v5, :cond_2

    .line 1182
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MapLocationActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1185
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->a:Lcom/squareup/picasso/Target;

    invoke-static {p0, v0, v1}, Lcom/nut/blehunter/t;->a(Landroid/content/Context;Lcom/nut/blehunter/entity/Nut;Lcom/squareup/picasso/Target;)V

    .line 1187
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    sparse-switch v0, :sswitch_data_0

    .line 153
    :goto_1
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 154
    return-void

    .line 1172
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, v4}, Lcom/nut/blehunter/ui/b/i;->b(Z)V

    goto :goto_0

    .line 1189
    :sswitch_0
    const-string v0, "check_location_connected"

    .line 1281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 1192
    :sswitch_1
    const-string v0, "check_location_disconnected"

    .line 2281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 1195
    :sswitch_2
    const-string v0, "check_location_found"

    .line 3281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 1187
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 355
    if-ne p1, v5, :cond_0

    .line 356
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/nut/blehunter/provider/e;->a:Landroid/net/Uri;

    sget-object v3, Lcom/nut/blehunter/provider/l;->b:[Ljava/lang/String;

    const-string v4, "tag_id = ? "

    new-array v5, v5, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v6, v6, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :goto_0
    return-object v0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    if-nez v0, :cond_1

    const-string v0, ""

    move-object v1, v0

    .line 360
    :goto_1
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/nut/blehunter/provider/d;->a:Landroid/net/Uri;

    sget-object v3, Lcom/nut/blehunter/provider/k;->b:[Ljava/lang/String;

    const-string v4, "tag_id = ?"

    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v7

    const-string v6, "find_time DESC"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    move-object v1, v0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->b:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 250
    :cond_1
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onDestroy()V

    .line 251
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 12

    .prologue
    const/4 v8, 0x3

    const/4 v0, 0x2

    const v11, 0x7f06015c

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 72
    check-cast p2, Landroid/database/Cursor;

    .line 8369
    iget-object v1, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    if-eqz v1, :cond_0

    .line 8370
    iget-object v1, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/b/i;->f_()V

    .line 8372
    :cond_0
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    if-ne v1, v9, :cond_7

    .line 8373
    if-eqz p2, :cond_6

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 8374
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    invoke-static {p2}, Lcom/nut/blehunter/provider/l;->a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v1

    .line 8376
    iput-object v1, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    .line 8377
    iget-object v1, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v1, v1, Lcom/nut/blehunter/entity/Nut;->K:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 8380
    iget-object v1, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8381
    iget-object v1, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    .line 8419
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    if-nez v2, :cond_2

    .line 8420
    :cond_1
    :goto_0
    return-void

    .line 8424
    :cond_2
    iget-object v6, v1, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    .line 8425
    new-instance v1, Lcom/nut/blehunter/entity/Position;

    iget-wide v2, v6, Lcom/nut/blehunter/entity/PositionRecord;->b:J

    iget-wide v4, v6, Lcom/nut/blehunter/entity/PositionRecord;->e:D

    iget-wide v6, v6, Lcom/nut/blehunter/entity/PositionRecord;->d:D

    invoke-direct/range {v1 .. v7}, Lcom/nut/blehunter/entity/Position;-><init>(JDD)V

    .line 8426
    iget-wide v2, v1, Lcom/nut/blehunter/entity/Position;->e:J

    invoke-static {v2, v3}, Lcom/nut/blehunter/d/e;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 8427
    iget-object v3, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v3, v3, Lcom/nut/blehunter/entity/Nut;->K:I

    packed-switch v3, :pswitch_data_0

    .line 8439
    new-array v0, v9, [Ljava/lang/Object;

    aput-object v2, v0, v10

    invoke-virtual {p0, v11, v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8441
    invoke-direct {p0, v9}, Lcom/nut/blehunter/ui/MapLocationActivity;->a(Z)V

    move-object v2, v0

    move v0, v9

    .line 8444
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8445
    new-instance v3, Lcom/nut/blehunter/entity/CustomMarker;

    invoke-direct {v3, v0, v2, v1}, Lcom/nut/blehunter/entity/CustomMarker;-><init>(ILjava/lang/String;Lcom/nut/blehunter/entity/Position;)V

    .line 8446
    iput-boolean v9, v3, Lcom/nut/blehunter/entity/CustomMarker;->e:Z

    .line 8447
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8429
    :pswitch_0
    const v3, 0x7f06015b

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v2, v4, v10

    invoke-virtual {p0, v3, v4}, Lcom/nut/blehunter/ui/MapLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 8431
    invoke-direct {p0, v10}, Lcom/nut/blehunter/ui/MapLocationActivity;->a(Z)V

    goto :goto_1

    .line 8434
    :pswitch_1
    new-array v0, v9, [Ljava/lang/Object;

    aput-object v2, v0, v10

    invoke-virtual {p0, v11, v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8436
    invoke-direct {p0, v9}, Lcom/nut/blehunter/ui/MapLocationActivity;->a(Z)V

    move-object v2, v0

    move v0, v8

    .line 8437
    goto :goto_1

    .line 8383
    :cond_3
    iget-object v1, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    .line 8463
    iget-object v2, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v9, :cond_4

    .line 8464
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    if-nez v2, :cond_5

    .line 8384
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/nut/blehunter/ui/MapLocationActivity;->c()V

    goto :goto_0

    .line 8469
    :cond_5
    iget-object v6, v1, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    .line 8470
    new-instance v1, Lcom/nut/blehunter/entity/Position;

    iget-wide v2, v6, Lcom/nut/blehunter/entity/PositionRecord;->b:J

    iget-wide v4, v6, Lcom/nut/blehunter/entity/PositionRecord;->e:D

    iget-wide v6, v6, Lcom/nut/blehunter/entity/PositionRecord;->d:D

    invoke-direct/range {v1 .. v7}, Lcom/nut/blehunter/entity/Position;-><init>(JDD)V

    .line 8471
    iget-wide v2, v1, Lcom/nut/blehunter/entity/Position;->e:J

    invoke-static {v2, v3}, Lcom/nut/blehunter/d/e;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 8472
    iget-object v3, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v3, v3, Lcom/nut/blehunter/entity/Nut;->K:I

    packed-switch v3, :pswitch_data_1

    .line 8484
    new-array v0, v9, [Ljava/lang/Object;

    aput-object v2, v0, v10

    invoke-virtual {p0, v11, v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8486
    invoke-direct {p0, v9}, Lcom/nut/blehunter/ui/MapLocationActivity;->a(Z)V

    move-object v2, v0

    move v0, v9

    .line 8489
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 8490
    iget-object v3, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 8491
    new-instance v3, Lcom/nut/blehunter/entity/CustomMarker;

    invoke-direct {v3, v0, v2, v1}, Lcom/nut/blehunter/entity/CustomMarker;-><init>(ILjava/lang/String;Lcom/nut/blehunter/entity/Position;)V

    .line 8492
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8474
    :pswitch_2
    const v3, 0x7f06015b

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v2, v4, v10

    invoke-virtual {p0, v3, v4}, Lcom/nut/blehunter/ui/MapLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 8476
    invoke-direct {p0, v10}, Lcom/nut/blehunter/ui/MapLocationActivity;->a(Z)V

    goto :goto_3

    .line 8479
    :pswitch_3
    new-array v0, v9, [Ljava/lang/Object;

    aput-object v2, v0, v10

    invoke-virtual {p0, v11, v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8481
    invoke-direct {p0, v9}, Lcom/nut/blehunter/ui/MapLocationActivity;->a(Z)V

    move-object v2, v0

    move v0, v8

    .line 8482
    goto :goto_3

    .line 8388
    :cond_6
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MapLocationActivity;->finish()V

    goto/16 :goto_0

    .line 8390
    :cond_7
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 8391
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 8392
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8393
    :cond_8
    :goto_4
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8394
    invoke-static {}, Lcom/nut/blehunter/provider/k;->b()Lcom/nut/blehunter/provider/k;

    invoke-static {p2}, Lcom/nut/blehunter/provider/k;->a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/FindLocation;

    move-result-object v2

    .line 8395
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-nez v0, :cond_9

    move v0, v9

    .line 9452
    :goto_5
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v1

    iget-object v3, v2, Lcom/nut/blehunter/entity/FindLocation;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/nut/blehunter/provider/l;->d(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v1

    .line 9453
    iget v1, v1, Lcom/nut/blehunter/entity/Nut;->K:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_8

    .line 9456
    if-eqz v0, :cond_a

    const/4 v1, 0x5

    .line 9457
    :goto_6
    new-instance v3, Lcom/nut/blehunter/entity/CustomMarker;

    iget-object v4, v2, Lcom/nut/blehunter/entity/FindLocation;->c:Ljava/lang/String;

    iget-object v2, v2, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    invoke-direct {v3, v1, v4, v2}, Lcom/nut/blehunter/entity/CustomMarker;-><init>(ILjava/lang/String;Lcom/nut/blehunter/entity/Position;)V

    .line 9458
    iput-boolean v0, v3, Lcom/nut/blehunter/entity/CustomMarker;->e:Z

    .line 9459
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    move v0, v10

    .line 8395
    goto :goto_5

    .line 9456
    :cond_a
    const/16 v1, 0x8

    goto :goto_6

    .line 8397
    :cond_b
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->c:Z

    if-eqz v0, :cond_1

    .line 8398
    invoke-direct {p0}, Lcom/nut/blehunter/ui/MapLocationActivity;->c()V

    goto/16 :goto_0

    .line 8427
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 8472
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onStart()V

    .line 4207
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    if-eqz v0, :cond_0

    .line 4208
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/s;)V

    .line 4209
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/t;)V

    .line 4210
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/q;)V

    .line 4211
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/i;->b(Z)V

    .line 4212
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 4213
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/v;)V

    .line 204
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    .line 4225
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    if-eqz v0, :cond_0

    .line 4226
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/i;->c()V

    .line 4227
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, v2}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/s;)V

    .line 4228
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, v2}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/t;)V

    .line 4229
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, v2}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/q;)V

    .line 4230
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 4231
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, v2}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/v;)V

    .line 221
    :cond_0
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onStop()V

    .line 222
    return-void
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->c:Z

    .line 646
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 647
    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->f:Lcom/nut/blehunter/ui/b/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/MapLocationActivity;->d:Lcom/nut/blehunter/entity/Nut;

    if-nez v0, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    invoke-direct {p0}, Lcom/nut/blehunter/ui/MapLocationActivity;->c()V

    goto :goto_0
.end method
