.class public Lcom/nut/blehunter/ui/Main2Activity;
.super Lcom/nut/blehunter/ui/b;
.source "Main2Activity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nut/blehunter/ui/b/a/s;
.implements Lcom/nut/blehunter/ui/b/al;
.implements Lcom/nut/blehunter/ui/b/s;
.implements Lcom/nut/blehunter/ui/b/t;
.implements Lcom/nut/blehunter/ui/b/u;
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
        "Lcom/nut/blehunter/ui/b/a/s;",
        "Lcom/nut/blehunter/ui/b/al;",
        "Lcom/nut/blehunter/ui/b/s;",
        "Lcom/nut/blehunter/ui/b/t;",
        "Lcom/nut/blehunter/ui/b/u;",
        "Lcom/nut/blehunter/ui/b/v;"
    }
.end annotation


# static fields
.field private static final a:[I


# instance fields
.field private A:Lcom/nut/blehunter/entity/Friend;

.field private B:Lcom/nut/blehunter/entity/CustomLatLng;

.field private C:Landroid/content/BroadcastReceiver;

.field private D:Landroid/os/CountDownTimer;

.field private b:Lcom/nut/blehunter/n;

.field private c:Landroid/widget/PopupMenu;

.field private d:Landroid/view/Menu;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/support/v7/widget/RecyclerView;

.field private p:Landroid/view/animation/Animation;

.field private q:Landroid/support/v7/widget/a/a;

.field private r:Lcom/nut/blehunter/ui/a/g;

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nut/blehunter/entity/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private t:I

.field private u:Landroid/content/IntentFilter;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/nut/blehunter/entity/Friend;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nut/blehunter/ui/Main2Activity;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0d00ed
        0x7f0d00ec
        0x7f0d00eb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 164
    iput v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    .line 168
    iput-boolean v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->v:Z

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->w:Z

    .line 172
    iput-boolean v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->x:Z

    .line 174
    iput-boolean v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->y:Z

    .line 208
    new-instance v0, Lcom/nut/blehunter/ui/ck;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/ck;-><init>(Lcom/nut/blehunter/ui/Main2Activity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->C:Landroid/content/BroadcastReceiver;

    .line 261
    new-instance v0, Lcom/nut/blehunter/ui/cn;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/cn;-><init>(Lcom/nut/blehunter/ui/Main2Activity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->D:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/Main2Activity;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/Main2Activity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/Main2Activity;)Lcom/nut/blehunter/entity/Friend;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->A:Lcom/nut/blehunter/entity/Friend;

    return-object v0
.end method

.method private a(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 703
    if-nez p1, :cond_1

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    const v0, 0x7f0d0250

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 707
    if-eqz v1, :cond_0

    .line 708
    invoke-static {p0}, Lcom/nut/blehunter/d/l;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0201e6

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    const v0, 0x7f0201e5

    goto :goto_1
.end method

.method private a(Lcom/nut/blehunter/entity/Friend;)V
    .locals 4

    .prologue
    .line 503
    iget-object v0, p1, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 504
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->g:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/nut/blehunter/entity/User;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->e:Ljava/lang/String;

    iput-object v0, p1, Lcom/nut/blehunter/entity/Friend;->c:Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 508
    if-ltz v0, :cond_0

    .line 509
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 510
    const v1, 0x7f0d01df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/CircleImageView;

    .line 511
    iget-object v1, p1, Lcom/nut/blehunter/entity/Friend;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 513
    :cond_0
    const-string v0, "tab_map_my_location"

    move-object v1, p0

    .line 10281
    :goto_0
    invoke-static {v1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->i:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v0, p1, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->j:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    iget-wide v2, v1, Lcom/nut/blehunter/entity/Position;->e:J

    invoke-static {p0, v2, v3}, Lcom/nut/blehunter/d/e;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/Main2Activity;->c(Lcom/nut/blehunter/entity/Friend;)V

    .line 524
    :cond_1
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/Main2Activity;->b(Lcom/nut/blehunter/entity/Friend;)V

    .line 525
    return-void

    .line 515
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->g:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/nut/blehunter/entity/Friend;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget v0, p1, Lcom/nut/blehunter/entity/Friend;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const-string v0, "tab_map_locate_friend_online"

    move-object v1, p0

    goto :goto_0

    :cond_3
    const-string v0, "tab_map_locate_friend_offline"

    move-object v1, p0

    goto :goto_0
.end method

.method private a(Lcom/nut/blehunter/entity/Friend;Lcom/nut/blehunter/entity/Friend;)V
    .locals 2

    .prologue
    .line 628
    if-eqz p2, :cond_0

    .line 629
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 630
    const/4 v1, 0x0

    iput-boolean v1, p2, Lcom/nut/blehunter/entity/Friend;->j:Z

    .line 631
    if-ltz v0, :cond_0

    .line 632
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->r:Lcom/nut/blehunter/ui/a/g;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/a/g;->c(I)V

    .line 635
    :cond_0
    iput-object p1, p0, Lcom/nut/blehunter/ui/Main2Activity;->A:Lcom/nut/blehunter/entity/Friend;

    .line 636
    if-eqz p1, :cond_1

    .line 637
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 638
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/nut/blehunter/entity/Friend;->j:Z

    .line 639
    if-ltz v0, :cond_1

    .line 640
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->r:Lcom/nut/blehunter/ui/a/g;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/a/g;->c(I)V

    .line 643
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/Main2Activity;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/Main2Activity;->a(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/Main2Activity;Lcom/nut/blehunter/entity/Friend;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 27584
    iget v0, p1, Lcom/nut/blehunter/entity/Friend;->e:I

    if-nez v0, :cond_0

    .line 27585
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 27586
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 27587
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 27588
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->h:Landroid/widget/TextView;

    const v1, 0x7f060143

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 27590
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 27591
    if-ltz v0, :cond_1

    .line 27592
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->r:Lcom/nut/blehunter/ui/a/g;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/a/g;->c(I)V

    .line 27594
    :cond_1
    sget-object v0, Lcom/nut/blehunter/ui/b/i;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/b/i;

    .line 27595
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->z:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 27596
    if-eqz v0, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 27597
    :cond_2
    :goto_0
    return-void

    .line 27599
    :cond_3
    iget v2, p1, Lcom/nut/blehunter/entity/Friend;->e:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/16 v2, 0x9

    .line 27600
    :goto_1
    iget-object v3, p1, Lcom/nut/blehunter/entity/Friend;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 27599
    :cond_4
    const/16 v2, 0xa

    goto :goto_1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/Main2Activity;Lcom/nut/blehunter/entity/Friend;Lcom/nut/blehunter/entity/Friend;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/entity/Friend;Lcom/nut/blehunter/entity/Friend;)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 742
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/l;->i()Ljava/util/List;

    move-result-object v0

    .line 743
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 744
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    .line 745
    iget v3, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-ne v3, v1, :cond_0

    .line 746
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 747
    const-string v4, "device_id"

    iget-object v5, v0, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    if-eqz p1, :cond_1

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/entity/Nut;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 749
    :goto_1
    const-string v4, "open_disconnect_alert"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 750
    const/16 v0, 0x16

    invoke-virtual {p0, v0, v3}, Lcom/nut/blehunter/ui/Main2Activity;->a(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 748
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 754
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/Main2Activity;Z)Z
    .locals 0

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/nut/blehunter/ui/Main2Activity;->y:Z

    return p1
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nut/blehunter/entity/Friend;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1308
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v0, v3, :cond_0

    move v0, v1

    .line 1319
    :goto_0
    return v0

    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 1312
    :goto_1
    if-ge v3, v4, :cond_3

    .line 1313
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Friend;

    .line 1314
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1315
    if-ltz v0, :cond_1

    if-eq v0, v3, :cond_2

    :cond_1
    move v0, v1

    .line 1316
    goto :goto_0

    .line 1312
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 1319
    goto :goto_0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/Main2Activity;Ljava/lang/String;)Lcom/nut/blehunter/entity/Friend;
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/Main2Activity;->e(Ljava/lang/String;)Lcom/nut/blehunter/entity/Friend;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/nut/blehunter/entity/Friend;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 539
    sget-object v0, Lcom/nut/blehunter/ui/b/i;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/b/i;

    .line 540
    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    if-eqz v1, :cond_0

    .line 541
    new-instance v1, Lcom/nut/blehunter/entity/CustomLatLng;

    iget-object v2, p1, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    iget-wide v2, v2, Lcom/nut/blehunter/entity/Position;->d:D

    iget-object v4, p1, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    iget-wide v4, v4, Lcom/nut/blehunter/entity/Position;->c:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DD)V

    .line 542
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/entity/CustomLatLng;Z)V

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 545
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 546
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 547
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->h:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iput-boolean v6, p0, Lcom/nut/blehunter/ui/Main2Activity;->x:Z

    .line 549
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->D:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 10604
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->n:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 10605
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 10606
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->n:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nut/blehunter/ui/Main2Activity;->p:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 551
    :cond_1
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->D:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 552
    iget-object v1, p1, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/nut/blehunter/ui/Main2Activity;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 553
    if-eqz v0, :cond_2

    .line 554
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/i;->d()V

    .line 581
    :cond_2
    :goto_0
    return-void

    .line 557
    :cond_3
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->d()Lcom/nut/blehunter/rxApi/service/FriendsService;

    move-result-object v0

    iget-object v1, p1, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nut/blehunter/rxApi/service/FriendsService;->requestFriendPosition(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/cs;

    invoke-direct {v1, p0, p1}, Lcom/nut/blehunter/ui/cs;-><init>(Lcom/nut/blehunter/ui/Main2Activity;Lcom/nut/blehunter/entity/Friend;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/Main2Activity;Lcom/nut/blehunter/entity/Friend;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/Main2Activity;->d(Lcom/nut/blehunter/entity/Friend;)V

    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nut/blehunter/entity/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1323
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1350
    :cond_0
    :goto_0
    return-void

    .line 1326
    :cond_1
    sget-object v0, Lcom/nut/blehunter/ui/b/i;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/b/i;

    .line 1327
    if-eqz v0, :cond_0

    .line 1330
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/i;->f_()V

    .line 1331
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1332
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/nut/blehunter/entity/Friend;

    .line 1333
    iget-object v1, v8, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    if-nez v1, :cond_3

    .line 1334
    iget-object v1, v8, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/nut/blehunter/ui/Main2Activity;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->B:Lcom/nut/blehunter/entity/CustomLatLng;

    if-eqz v1, :cond_2

    .line 1335
    new-instance v1, Lcom/nut/blehunter/entity/Position;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/nut/blehunter/ui/Main2Activity;->B:Lcom/nut/blehunter/entity/CustomLatLng;

    .line 24048
    iget-wide v4, v4, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 1335
    iget-object v6, p0, Lcom/nut/blehunter/ui/Main2Activity;->B:Lcom/nut/blehunter/entity/CustomLatLng;

    .line 24052
    iget-wide v6, v6, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 1335
    invoke-direct/range {v1 .. v7}, Lcom/nut/blehunter/entity/Position;-><init>(JDD)V

    iput-object v1, v8, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    .line 1340
    :cond_3
    new-instance v3, Lcom/nut/blehunter/entity/CustomLatLng;

    iget-object v1, v8, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    iget-wide v4, v1, Lcom/nut/blehunter/entity/Position;->d:D

    iget-object v1, v8, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    iget-wide v6, v1, Lcom/nut/blehunter/entity/Position;->c:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DD)V

    .line 1341
    iget v1, v8, Lcom/nut/blehunter/entity/Friend;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/16 v1, 0x9

    .line 1342
    :goto_2
    iget-object v2, v8, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/nut/blehunter/ui/Main2Activity;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v2

    iget-object v2, v2, Lcom/nut/blehunter/entity/User;->e:Ljava/lang/String;

    .line 1343
    :goto_3
    iget-object v4, p0, Lcom/nut/blehunter/ui/Main2Activity;->z:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3, v1, v2}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1341
    :cond_4
    const/16 v1, 0xa

    goto :goto_2

    .line 1342
    :cond_5
    iget-object v2, v8, Lcom/nut/blehunter/entity/Friend;->c:Ljava/lang/String;

    goto :goto_3

    .line 1346
    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->w:Z

    if-eqz v1, :cond_0

    .line 1347
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->w:Z

    .line 1348
    invoke-virtual {v0, v9}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/Main2Activity;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    return v0
.end method

.method private c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 319
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Lcom/nut/blehunter/entity/Friend;)V
    .locals 10

    .prologue
    .line 621
    iget-object v0, p1, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    if-nez v0, :cond_0

    .line 625
    :goto_0
    return-void

    .line 624
    :cond_0
    new-instance v0, Lcom/nut/blehunter/b/b;

    iget-object v1, p1, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    iget-wide v2, v1, Lcom/nut/blehunter/entity/Position;->d:D

    iget-object v1, p1, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    iget-wide v4, v1, Lcom/nut/blehunter/entity/Position;->c:D

    new-instance v6, Lcom/nut/blehunter/ui/cv;

    iget-object v1, p1, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    iget-object v7, p1, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    iget-wide v8, v7, Lcom/nut/blehunter/entity/Position;->e:J

    invoke-direct {v6, p0, v1, v8, v9}, Lcom/nut/blehunter/ui/cv;-><init>(Lcom/nut/blehunter/ui/Main2Activity;Ljava/lang/String;J)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/nut/blehunter/b/b;-><init>(Landroid/content/Context;DDLcom/nut/blehunter/b/e;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/Main2Activity;Lcom/nut/blehunter/entity/Friend;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/Main2Activity;->c(Lcom/nut/blehunter/entity/Friend;)V

    return-void
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/Main2Activity;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 28533
    invoke-static {p1}, Lcom/nut/blehunter/ui/Main2Activity;->d(Ljava/lang/String;)Z

    move-result v3

    .line 28534
    iget-object v4, p0, Lcom/nut/blehunter/ui/Main2Activity;->l:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28535
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->m:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    return-void

    :cond_0
    move v0, v2

    .line 28534
    goto :goto_0

    :cond_1
    move v1, v2

    .line 28535
    goto :goto_1
.end method

.method static synthetic d(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/view/Menu;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->d:Landroid/view/Menu;

    return-object v0
.end method

.method private d(I)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    const v3, 0x7f0201de

    .line 886
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    iget v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 890
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->u()V

    .line 892
    :cond_2
    iput p1, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    .line 893
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    move v5, v2

    .line 894
    :goto_1
    if-ge v5, v6, :cond_4

    .line 895
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-ne v5, p1, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v7, v0}, Landroid/view/View;->setSelected(Z)V

    .line 894
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 895
    goto :goto_2

    .line 898
    :cond_4
    packed-switch p1, :pswitch_data_0

    :goto_3
    move v0, v4

    .line 914
    :goto_4
    if-lez v0, :cond_6

    .line 915
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->h()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 916
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->c:Landroid/widget/PopupMenu;

    if-nez v0, :cond_5

    .line 917
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->h()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-static {v1}, Lcom/nut/blehunter/d/p;->a(Landroid/support/v7/widget/Toolbar;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->c:Landroid/widget/PopupMenu;

    .line 918
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->c:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 919
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->c:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    iget-object v2, p0, Lcom/nut/blehunter/ui/Main2Activity;->c:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 920
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->c:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/nut/blehunter/ui/cu;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/cu;-><init>(Lcom/nut/blehunter/ui/Main2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 942
    :cond_5
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->h()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/cl;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/cl;-><init>(Lcom/nut/blehunter/ui/Main2Activity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 955
    :goto_5
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->supportInvalidateOptionsMenu()V

    .line 956
    iget v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->e(I)V

    .line 957
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->y()V

    goto/16 :goto_0

    .line 901
    :pswitch_0
    const v0, 0x7f06013a

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->a(I)V

    move v0, v3

    .line 902
    goto :goto_4

    .line 906
    :pswitch_1
    const v0, 0x7f060139

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->a(I)V

    move v0, v3

    .line 907
    goto :goto_4

    .line 911
    :pswitch_2
    const v0, 0x7f06013b

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->a(I)V

    goto :goto_3

    .line 952
    :cond_6
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->h()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 953
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->h()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 898
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private d(Lcom/nut/blehunter/entity/Friend;)V
    .locals 6

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->z:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1430
    sget-object v1, Lcom/nut/blehunter/ui/b/i;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/Main2Activity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/nut/blehunter/ui/b/i;

    .line 1431
    if-nez v1, :cond_1

    .line 1444
    :cond_0
    :goto_0
    return-void

    .line 1434
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1435
    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/lang/String;)V

    .line 1436
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->z:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    :cond_2
    iget-object v0, p1, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    if-eqz v0, :cond_0

    .line 1439
    new-instance v0, Lcom/nut/blehunter/entity/CustomLatLng;

    iget-object v2, p1, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    iget-wide v2, v2, Lcom/nut/blehunter/entity/Position;->d:D

    iget-object v4, p1, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    iget-wide v4, v4, Lcom/nut/blehunter/entity/Position;->c:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DD)V

    .line 1440
    const/4 v2, 0x0

    const/16 v3, 0x9

    iget-object v4, p1, Lcom/nut/blehunter/entity/Friend;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1441
    iget-object v3, p0, Lcom/nut/blehunter/ui/Main2Activity;->z:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/entity/CustomLatLng;Z)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/nut/blehunter/ui/Main2Activity;Lcom/nut/blehunter/entity/Friend;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/entity/Friend;)V

    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 528
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 529
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Lcom/nut/blehunter/entity/Friend;
    .locals 3

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Friend;

    .line 1421
    iget-object v2, v0, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1425
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(I)V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 961
    move v0, v1

    :goto_0
    sget-object v2, Lcom/nut/blehunter/ui/Main2Activity;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 962
    sget-object v2, Lcom/nut/blehunter/ui/Main2Activity;->a:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-ne p1, v0, :cond_0

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 961
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 962
    goto :goto_1

    .line 964
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->o:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 965
    return-void

    :cond_2
    move v1, v3

    .line 964
    goto :goto_2
.end method

.method static synthetic e(Lcom/nut/blehunter/ui/Main2Activity;)Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->x:Z

    return v0
.end method

.method static synthetic f(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/os/CountDownTimer;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->D:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic g(Lcom/nut/blehunter/ui/Main2Activity;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->w()V

    return-void
.end method

.method static synthetic h(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/nut/blehunter/ui/Main2Activity;)Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->x:Z

    return v0
.end method

.method static synthetic j(Lcom/nut/blehunter/ui/Main2Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    .line 28280
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 28283
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->h:Landroid/widget/TextView;

    const v1, 0x7f060140

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 28284
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->h:Landroid/widget/TextView;

    const v1, 0x7f02026f

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 28285
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 28286
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->h:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 109
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/support/v7/widget/a/a;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->q:Landroid/support/v7/widget/a/a;

    return-object v0
.end method

.method static synthetic l(Lcom/nut/blehunter/ui/Main2Activity;)Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->y:Z

    return v0
.end method

.method static synthetic m(Lcom/nut/blehunter/ui/Main2Activity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic n(Lcom/nut/blehunter/ui/Main2Activity;)Z
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->v()Z

    move-result v0

    return v0
.end method

.method static synthetic o(Lcom/nut/blehunter/ui/Main2Activity;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->u()V

    return-void
.end method

.method static synthetic p(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic q(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->o:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private r()V
    .locals 3

    .prologue
    .line 360
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    const-string v1, "com.nutspace.action.start.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v1, "is_active"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 363
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 364
    return-void
.end method

.method static synthetic s(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/widget/PopupMenu;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->c:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method private s()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 367
    .line 7015
    invoke-static {p0}, Lcom/nut/blehunter/d/f;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/nut/blehunter/d/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/nut/blehunter/d/f;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 6646
    :goto_0
    if-nez v0, :cond_4

    .line 7655
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7658
    new-instance v0, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 7659
    const v2, 0x7f06004f

    invoke-virtual {v0, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 7660
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 7661
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 7662
    const v1, 0x7f060197

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 7663
    const v1, 0x7f060085

    new-instance v2, Lcom/nut/blehunter/ui/ct;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/ct;-><init>(Lcom/nut/blehunter/ui/Main2Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 7672
    const v1, 0x7f060083

    invoke-virtual {v0, v1, v3}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 7673
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 8060
    const-string v1, "baseDialog"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 8370
    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/nut/blehunter/d/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8373
    const-string v0, "update_new_version_time"

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 8374
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 8375
    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 8378
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    move-result-object v0

    invoke-interface {v0}, Lcom/nut/blehunter/rxApi/service/AuthLoginService;->version()Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/e;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/e;-><init>(Lcom/nut/blehunter/ui/b;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 369
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 7015
    goto :goto_0

    .line 6650
    :cond_4
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nut/blehunter/u;->a(Lcom/nut/blehunter/ui/b/t;)V

    goto :goto_1
.end method

.method private t()V
    .locals 3

    .prologue
    .line 372
    const v0, 0x7f0d00e7

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->e:Landroid/widget/LinearLayout;

    .line 373
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 374
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 375
    iget-object v2, p0, Lcom/nut/blehunter/ui/Main2Activity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_0
    return-void
.end method

.method private u()V
    .locals 5

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 460
    :goto_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->f:Landroid/view/View;

    const-string v2, "translationY"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 461
    new-instance v1, Lcom/nut/blehunter/ui/cq;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/cq;-><init>(Lcom/nut/blehunter/ui/Main2Activity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 468
    new-instance v1, Lcom/nut/blehunter/ui/cr;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/cr;-><init>(Lcom/nut/blehunter/ui/Main2Activity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 495
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 496
    return-void

    .line 459
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()Z
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->p:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->p:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->n:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 616
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->n:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 618
    :cond_1
    return-void
.end method

.method private x()V
    .locals 1

    .prologue
    .line 768
    sget-object v0, Lcom/nut/blehunter/ui/b/ac;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/b/ac;

    .line 769
    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/ac;->b()V

    .line 772
    :cond_0
    return-void
.end method

.method private y()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 968
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    const v0, 0x7f0d00ea

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 973
    invoke-static {p0}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;)I

    move-result v1

    if-gtz v1, :cond_2

    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    iget v1, v1, Lcom/nut/blehunter/entity/User;->q:I

    if-gtz v1, :cond_2

    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/User;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 975
    :cond_2
    const v1, 0x7f020226

    .line 979
    :goto_1
    if-eqz v0, :cond_0

    .line 980
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 977
    :cond_3
    const v1, 0x7f020228

    goto :goto_1
.end method

.method private z()V
    .locals 1

    .prologue
    .line 1100
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->C:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1104
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/os/Message;)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 291
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2484
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 295
    const-string v1, "device_id"

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 296
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 299
    :pswitch_0
    iget v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    if-nez v1, :cond_0

    .line 300
    const-string v1, "rssi"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 301
    sget-object v0, Lcom/nut/blehunter/ui/b/ac;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_0

    .line 303
    check-cast v0, Lcom/nut/blehunter/ui/b/ac;

    .line 2475
    iget-object v1, v0, Lcom/nut/blehunter/ui/b/ac;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2478
    iget-object v1, v0, Lcom/nut/blehunter/ui/b/ac;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v3

    .line 2479
    :goto_1
    if-ge v2, v6, :cond_3

    .line 2480
    iget-object v1, v0, Lcom/nut/blehunter/ui/b/ac;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nut/blehunter/entity/Nut;

    .line 2481
    iget-object v7, v1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v1, Lcom/nut/blehunter/entity/Nut;->K:I

    if-ne v7, v10, :cond_2

    .line 2482
    int-to-double v4, v5

    invoke-static {v4, v5}, Lcom/nut/blehunter/d/m;->a(D)I

    move-result v3

    iput v3, v1, Lcom/nut/blehunter/entity/Nut;->L:I

    .line 2483
    iget-object v0, v0, Lcom/nut/blehunter/ui/b/ac;->b:Lcom/nut/blehunter/ui/a/q;

    invoke-virtual {v0, v2}, Lcom/nut/blehunter/ui/a/q;->c(I)V

    goto :goto_0

    .line 2479
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 2491
    :cond_3
    iget-object v1, v0, Lcom/nut/blehunter/ui/b/ac;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/ac;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3116
    const-string v2, "is_show_dfu"

    .line 3265
    invoke-static {v1}, Lcom/nut/blehunter/d/l;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2491
    if-eqz v1, :cond_0

    .line 2492
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 2493
    iget-object v1, v0, Lcom/nut/blehunter/ui/b/ac;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/nut/blehunter/entity/Nut;

    .line 2494
    invoke-virtual {v2}, Lcom/nut/blehunter/entity/Nut;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/provider/m;->a(Lcom/nut/blehunter/entity/Nut;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v2, Lcom/nut/blehunter/entity/Nut;->K:I

    if-ne v1, v10, :cond_4

    .line 2496
    iget v1, v2, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_5

    .line 2497
    iget v1, v2, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    const-string v6, "\u3001\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2500
    :cond_5
    iget v1, v2, Lcom/nut/blehunter/entity/Nut;->p:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 2505
    :cond_6
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2506
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/ac;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;Z)V

    .line 2507
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v2, v3

    .line 2508
    :goto_3
    if-ge v2, v5, :cond_0

    .line 2509
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2510
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v6

    .line 2511
    iget-object v7, v6, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    if-eqz v7, :cond_7

    .line 2512
    iget-object v6, v6, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3520
    new-instance v7, Lcom/nut/blehunter/ui/b/a/b;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/ac;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 3521
    const v8, 0x7f0600e0

    invoke-virtual {v7, v8}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v7

    const v8, 0x7f0600b5

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v3

    iget-object v1, v6, Lcom/nut/blehunter/entity/i;->c:Ljava/lang/String;

    aput-object v1, v9, v10

    invoke-virtual {v0, v8, v9}, Lcom/nut/blehunter/ui/b/ac;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    const v6, 0x7f06008c

    invoke-virtual {v1, v6, v11}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/ac;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 4060
    const-string v7, "baseDialog"

    invoke-virtual {v1, v6, v7}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 2508
    :cond_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 296
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/nut/blehunter/entity/CustomLatLng;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1378
    iput-object p1, p0, Lcom/nut/blehunter/ui/Main2Activity;->B:Lcom/nut/blehunter/entity/CustomLatLng;

    .line 1379
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 1380
    if-nez v0, :cond_1

    .line 1413
    :cond_0
    :goto_0
    return-void

    .line 1383
    :cond_1
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->w()V

    .line 1384
    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->e(Ljava/lang/String;)Lcom/nut/blehunter/entity/Friend;

    move-result-object v8

    .line 1385
    if-eqz v8, :cond_0

    .line 1386
    new-instance v1, Lcom/nut/blehunter/entity/Position;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->B:Lcom/nut/blehunter/entity/CustomLatLng;

    .line 25048
    iget-wide v4, v0, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 1386
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->B:Lcom/nut/blehunter/entity/CustomLatLng;

    .line 25052
    iget-wide v6, v0, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 1386
    invoke-direct/range {v1 .. v7}, Lcom/nut/blehunter/entity/Position;-><init>(JDD)V

    iput-object v1, v8, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    .line 1387
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->A:Lcom/nut/blehunter/entity/Friend;

    invoke-virtual {v8, v0}, Lcom/nut/blehunter/entity/Friend;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1388
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->D:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 1389
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->D:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1391
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1392
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->h:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1394
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1395
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->j:Landroid/widget/TextView;

    iget-object v1, v8, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    iget-wide v2, v1, Lcom/nut/blehunter/entity/Position;->e:J

    invoke-static {p0, v2, v3}, Lcom/nut/blehunter/d/e;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1397
    :cond_4
    invoke-direct {p0, v8}, Lcom/nut/blehunter/ui/Main2Activity;->c(Lcom/nut/blehunter/entity/Friend;)V

    .line 1398
    sget-object v0, Lcom/nut/blehunter/ui/b/i;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/b/i;

    .line 1399
    if-eqz v0, :cond_5

    .line 1400
    invoke-direct {p0, v8}, Lcom/nut/blehunter/ui/Main2Activity;->d(Lcom/nut/blehunter/entity/Friend;)V

    .line 25416
    :cond_5
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->d()Lcom/nut/blehunter/rxApi/service/FriendsService;

    move-result-object v0

    invoke-static {p1, v9}, Lcom/nut/blehunter/rxApi/model/FriendPositionRequestBody;->createRequestBody(Lcom/nut/blehunter/entity/CustomLatLng;Ljava/util/List;)Lcom/nut/blehunter/rxApi/model/FriendPositionRequestBody;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nut/blehunter/rxApi/service/FriendsService;->postPosition(Lcom/nut/blehunter/rxApi/model/FriendPositionRequestBody;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/rxApi/e;

    invoke-direct {v1}, Lcom/nut/blehunter/rxApi/e;-><init>()V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 1403
    :cond_6
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->z:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1404
    sget-object v0, Lcom/nut/blehunter/ui/b/i;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/b/i;

    .line 1405
    if-eqz v0, :cond_0

    .line 1406
    new-instance v1, Lcom/nut/blehunter/entity/CustomLatLng;

    iget-object v2, v8, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    iget-wide v2, v2, Lcom/nut/blehunter/entity/Position;->d:D

    iget-object v4, v8, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    iget-wide v4, v4, Lcom/nut/blehunter/entity/Position;->c:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DD)V

    .line 1407
    const/16 v2, 0x9

    iget-object v3, v8, Lcom/nut/blehunter/entity/Friend;->c:Ljava/lang/String;

    invoke-virtual {v0, v9, v1, v2, v3}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1408
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->z:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;)V
    .locals 3

    .prologue
    .line 1448
    sget-object v0, Lcom/nut/blehunter/ui/b/i;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/b/i;

    .line 1449
    if-eqz v0, :cond_0

    .line 1450
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/entity/CustomLatLng;Z)V

    .line 25463
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 25464
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 25465
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25466
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Friend;

    .line 1453
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->A:Lcom/nut/blehunter/entity/Friend;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/entity/Friend;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1454
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->v()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1455
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->u()V

    .line 1457
    :cond_2
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->A:Lcom/nut/blehunter/entity/Friend;

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/entity/Friend;Lcom/nut/blehunter/entity/Friend;)V

    .line 1458
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/entity/Friend;)V

    .line 1460
    :cond_3
    return-void

    .line 25469
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1188
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->removeAllViewsInLayout()V

    .line 1189
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1190
    if-eqz v0, :cond_3

    .line 1191
    sget-object v1, Lcom/nut/blehunter/ui/b/ac;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/Main2Activity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1192
    if-eqz v1, :cond_0

    .line 1193
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1195
    :cond_0
    sget-object v1, Lcom/nut/blehunter/ui/b/i;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/Main2Activity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1196
    if-eqz v1, :cond_1

    .line 1197
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1199
    :cond_1
    sget-object v1, Lcom/nut/blehunter/ui/b/w;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/Main2Activity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1200
    if-eqz v1, :cond_2

    .line 1201
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1203
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1205
    :cond_3
    return-void
.end method

.method public final c(I)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 986
    .line 987
    packed-switch p1, :pswitch_data_0

    move v1, v2

    .line 1005
    :goto_0
    invoke-direct {p0, v2}, Lcom/nut/blehunter/ui/Main2Activity;->a(Z)V

    .line 1006
    int-to-long v4, v1

    .line 20015
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 20016
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20017
    const-string v6, "com.nutspace.action.temp_not_disturb"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 20018
    const/16 v6, 0x3e8

    const/high16 v7, 0x10000000

    invoke-static {p0, v6, v3, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 20021
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 20022
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v4, v8

    invoke-virtual {v6, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 20023
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1007
    int-to-long v4, v1

    invoke-static {p0, v4, v5}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;J)V

    .line 1008
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->d:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->a(Landroid/view/Menu;)V

    .line 1009
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->x()V

    .line 1010
    const v0, 0x7f06013d

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 1011
    const-string v0, "NTStatsAppLifeCycle"

    const-string v2, "TEMPORARY_SILENT"

    const-string v3, "NTAccountEvent"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    return-void

    .line 989
    :pswitch_0
    const v0, 0x1b7740

    .line 990
    const-string v1, "interim_silent_30min"

    .line 16281
    invoke-static {p0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v1, v0

    .line 991
    goto :goto_0

    .line 993
    :pswitch_1
    const v0, 0x36ee80

    .line 994
    const-string v1, "interim_silent_60min"

    .line 17281
    invoke-static {p0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v1, v0

    .line 995
    goto :goto_0

    .line 997
    :pswitch_2
    const v0, 0x6ddd00

    .line 998
    const-string v1, "interim_silent_120min"

    .line 18281
    invoke-static {p0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v1, v0

    .line 999
    goto :goto_0

    .line 1001
    :pswitch_3
    const v0, 0xdbba00

    .line 1002
    const-string v1, "interim_silent_240min"

    .line 19281
    invoke-static {p0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v1, v0

    goto :goto_0

    .line 987
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 1359
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1360
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->u()V

    .line 1362
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1138
    invoke-super {p0, p1, p2, p3}, Lcom/nut/blehunter/ui/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 1139
    const/16 v0, 0x64

    if-ne p1, v0, :cond_5

    .line 1140
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1141
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->r()V

    .line 1142
    invoke-static {p0}, Lcom/nut/blehunter/d/b;->a(Landroid/content/Context;)V

    .line 1143
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->s()V

    .line 22165
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nut/blehunter/provider/j;->b()Lcom/nut/blehunter/provider/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22166
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/QuickAddActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->startActivity(Landroid/content/Intent;)V

    .line 1145
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1146
    sget-object v0, Lcom/nut/blehunter/ui/b/ac;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/b/ac;

    .line 1147
    if-eqz v0, :cond_1

    .line 22397
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/ac;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 1150
    :cond_1
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/l;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1151
    const/4 v0, 0x0

    iput v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    .line 1155
    :goto_0
    iget v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->d(I)V

    .line 1162
    :cond_2
    :goto_1
    return-void

    .line 1153
    :cond_3
    iput v2, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    goto :goto_0

    .line 1157
    :cond_4
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->finish()V

    goto :goto_1

    .line 1159
    :cond_5
    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    .line 1160
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nut/blehunter/u;->a(Lcom/nut/blehunter/ui/b/t;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->u()V

    .line 1178
    :goto_0
    return-void

    .line 23208
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23209
    const-string v1, "com.nutspace.action.app.background"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 23210
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1177
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const v5, 0x7f040010

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 776
    const/4 v4, -0x1

    .line 777
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v0, v4

    .line 837
    :goto_1
    iget v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    if-eq v1, v0, :cond_1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->A:Lcom/nut/blehunter/entity/Friend;

    if-nez v1, :cond_1

    .line 838
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->d(I)V

    .line 841
    :cond_1
    return-void

    :pswitch_1
    move v0, v1

    .line 780
    goto :goto_1

    :pswitch_2
    move v0, v2

    .line 784
    goto :goto_1

    :pswitch_3
    move v0, v3

    .line 788
    goto :goto_1

    .line 791
    :pswitch_4
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->A:Lcom/nut/blehunter/entity/Friend;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->A:Lcom/nut/blehunter/entity/Friend;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->b(Lcom/nut/blehunter/entity/Friend;)V

    .line 793
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->A:Lcom/nut/blehunter/entity/Friend;

    iget v0, v0, Lcom/nut/blehunter/entity/Friend;->e:I

    if-ne v0, v2, :cond_2

    const-string v0, "tab_map_refresh_friend_online_location"

    .line 13281
    :goto_2
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v4

    .line 793
    goto :goto_1

    :cond_2
    const-string v0, "tab_map_locate_friend_offline"

    goto :goto_2

    .line 798
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/nut/blehunter/ui/LocationFriendFailedTipsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->startActivity(Landroid/content/Intent;)V

    .line 799
    invoke-virtual {p0, v5, v1}, Lcom/nut/blehunter/ui/Main2Activity;->overridePendingTransition(II)V

    .line 800
    const-string v0, "tab_map_locate_friend_offline"

    .line 14281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v4

    .line 801
    goto :goto_1

    .line 804
    :pswitch_6
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->A:Lcom/nut/blehunter/entity/Friend;

    if-eqz v0, :cond_3

    .line 805
    iput-boolean v2, p0, Lcom/nut/blehunter/ui/Main2Activity;->x:Z

    .line 806
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->D:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 807
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->w()V

    .line 808
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/nut/blehunter/ui/LocationRecordActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 809
    const-string v2, "uuid"

    iget-object v3, p0, Lcom/nut/blehunter/ui/Main2Activity;->A:Lcom/nut/blehunter/entity/Friend;

    iget-object v3, v3, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    const-string v2, "name"

    iget-object v3, p0, Lcom/nut/blehunter/ui/Main2Activity;->A:Lcom/nut/blehunter/entity/Friend;

    iget-object v3, v3, Lcom/nut/blehunter/entity/Friend;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->startActivity(Landroid/content/Intent;)V

    .line 812
    invoke-virtual {p0, v5, v1}, Lcom/nut/blehunter/ui/Main2Activity;->overridePendingTransition(II)V

    .line 814
    :cond_3
    const-string v0, "tab_map_locate_footprints"

    .line 15281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v4

    .line 815
    goto :goto_1

    .line 818
    :pswitch_7
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->A:Lcom/nut/blehunter/entity/Friend;

    if-eqz v0, :cond_0

    .line 819
    iput-boolean v2, p0, Lcom/nut/blehunter/ui/Main2Activity;->x:Z

    .line 820
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->D:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 821
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->w()V

    .line 822
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 823
    const-string v2, "friend"

    iget-object v3, p0, Lcom/nut/blehunter/ui/Main2Activity;->A:Lcom/nut/blehunter/entity/Friend;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 824
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->startActivity(Landroid/content/Intent;)V

    .line 825
    invoke-virtual {p0, v5, v1}, Lcom/nut/blehunter/ui/Main2Activity;->overridePendingTransition(II)V

    move v0, v4

    .line 826
    goto/16 :goto_1

    .line 830
    :pswitch_8
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->A:Lcom/nut/blehunter/entity/Friend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->A:Lcom/nut/blehunter/entity/Friend;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 832
    new-instance v5, Lcom/nut/blehunter/entity/CustomMarker;

    const/16 v6, 0x9

    iget-object v7, p0, Lcom/nut/blehunter/ui/Main2Activity;->A:Lcom/nut/blehunter/entity/Friend;

    iget-object v7, v7, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    invoke-direct {v5, v6, v0, v7}, Lcom/nut/blehunter/entity/CustomMarker;-><init>(ILjava/lang/String;Lcom/nut/blehunter/entity/Position;)V

    .line 15846
    const-string v6, "geo:0,0?q=%f,%f(%s)"

    .line 15847
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 15848
    const-string v0, "marker"

    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15849
    const-string v0, "formatQuery"

    invoke-virtual {v7, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15850
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    new-array v9, v12, [Ljava/lang/Object;

    iget-wide v10, v5, Lcom/nut/blehunter/entity/CustomMarker;->g:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v9, v1

    iget-wide v10, v5, Lcom/nut/blehunter/entity/CustomMarker;->h:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v9, v2

    iget-object v10, v5, Lcom/nut/blehunter/entity/CustomMarker;->c:Ljava/lang/String;

    aput-object v10, v9, v3

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 15852
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v9, 0x10000

    invoke-virtual {v0, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 15854
    const-string v9, "resolveInfos"

    invoke-virtual {v7, v9, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 15856
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 15857
    :cond_4
    const v0, 0x7f060157

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    move v0, v4

    goto/16 :goto_1

    .line 15858
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v2, :cond_8

    .line 15859
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 15867
    if-eqz v0, :cond_0

    .line 15870
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 15871
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 15872
    if-eqz v7, :cond_6

    .line 15873
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15874
    const-string v9, "autonavi"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15876
    iget-wide v8, v5, Lcom/nut/blehunter/entity/CustomMarker;->g:D

    iget-wide v10, v5, Lcom/nut/blehunter/entity/CustomMarker;->h:D

    invoke-static {v8, v9, v10, v11}, Lcom/nut/blehunter/d/f;->a(DD)[D

    move-result-object v0

    .line 15877
    new-array v8, v12, [Ljava/lang/Object;

    aget-wide v10, v0, v1

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v1

    aget-wide v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v8, v2

    iget-object v0, v5, Lcom/nut/blehunter/entity/CustomMarker;->c:Ljava/lang/String;

    aput-object v0, v8, v3

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 15881
    :goto_3
    invoke-virtual {p0, v7}, Lcom/nut/blehunter/ui/Main2Activity;->startActivity(Landroid/content/Intent;)V

    :cond_6
    move v0, v4

    .line 15859
    goto/16 :goto_1

    .line 15879
    :cond_7
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3

    .line 15861
    :cond_8
    invoke-static {v7}, Lcom/nut/blehunter/ui/b/a/n;->a(Landroid/os/Bundle;)Lcom/nut/blehunter/ui/b/a/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "map_choose"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/n;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 777
    :pswitch_data_0
    .packed-switch 0x7f0d00e8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v7, 0x7f0d00ec

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 324
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 325
    const-string v0, "com.nutspace.action.back.launcher"

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->finish()V

    .line 357
    :goto_0
    return-void

    .line 329
    :cond_0
    new-instance v0, Lcom/nut/blehunter/n;

    const-class v3, Lcom/nut/blehunter/ui/Main2Activity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/nut/blehunter/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->b:Lcom/nut/blehunter/n;

    .line 330
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->e()V

    .line 331
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->setContentView(I)V

    .line 332
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->u:Landroid/content/IntentFilter;

    .line 333
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->u:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->u:Landroid/content/IntentFilter;

    const-string v3, "com.nutspace.action.request.friend.location"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->t()V

    .line 4380
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 4381
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 4382
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/n;->a(Landroid/content/Context;)Lcom/nut/blehunter/ui/b/i;

    move-result-object v3

    .line 4383
    if-eqz v3, :cond_1

    .line 4384
    invoke-virtual {v3, p0}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/u;)V

    .line 4385
    invoke-virtual {v3, v2}, Lcom/nut/blehunter/ui/b/i;->a(Z)V

    .line 4387
    :cond_1
    const v4, 0x7f0d00eb

    invoke-static {}, Lcom/nut/blehunter/ui/b/w;->a()Lcom/nut/blehunter/ui/b/w;

    move-result-object v5

    sget-object v6, Lcom/nut/blehunter/ui/b/w;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 4388
    if-nez v3, :cond_3

    .line 4389
    new-instance v3, Landroid/support/v4/app/Fragment;

    invoke-direct {v3}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v4, "fragment"

    invoke-virtual {v0, v7, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 4394
    :goto_1
    const v3, 0x7f0d00ed

    invoke-static {}, Lcom/nut/blehunter/ui/b/ac;->a()Lcom/nut/blehunter/ui/b/ac;

    move-result-object v4

    sget-object v5, Lcom/nut/blehunter/ui/b/ac;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 4395
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 4399
    iput-boolean v2, p0, Lcom/nut/blehunter/ui/Main2Activity;->v:Z

    .line 4400
    iput-boolean v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->w:Z

    .line 4401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    .line 4402
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->z:Ljava/util/HashMap;

    .line 4403
    const v0, 0x7f0d00ee

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 4404
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v3, p0, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/eg;)V

    .line 4405
    new-instance v0, Lcom/nut/blehunter/ui/a/g;

    new-instance v3, Lcom/nut/blehunter/ui/co;

    invoke-direct {v3, p0}, Lcom/nut/blehunter/ui/co;-><init>(Lcom/nut/blehunter/ui/Main2Activity;)V

    new-instance v4, Lcom/nut/blehunter/ui/cp;

    invoke-direct {v4, p0}, Lcom/nut/blehunter/ui/cp;-><init>(Lcom/nut/blehunter/ui/Main2Activity;)V

    invoke-direct {v0, v3, v4}, Lcom/nut/blehunter/ui/a/g;-><init>(Lcom/nut/blehunter/ui/widget/i;Lcom/nut/blehunter/ui/a/m;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->r:Lcom/nut/blehunter/ui/a/g;

    .line 4434
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->o:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/nut/blehunter/ui/Main2Activity;->r:Lcom/nut/blehunter/ui/a/g;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/dx;)V

    .line 4435
    new-instance v0, Lcom/nut/blehunter/ui/widget/r;

    iget-object v3, p0, Lcom/nut/blehunter/ui/Main2Activity;->r:Lcom/nut/blehunter/ui/a/g;

    invoke-direct {v0, v3}, Lcom/nut/blehunter/ui/widget/r;-><init>(Lcom/nut/blehunter/ui/widget/d;)V

    .line 4436
    new-instance v3, Landroid/support/v7/widget/a/a;

    invoke-direct {v3, v0}, Landroid/support/v7/widget/a/a;-><init>(Landroid/support/v7/widget/a/g;)V

    iput-object v3, p0, Lcom/nut/blehunter/ui/Main2Activity;->q:Landroid/support/v7/widget/a/a;

    .line 4437
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->q:Landroid/support/v7/widget/a/a;

    iget-object v3, p0, Lcom/nut/blehunter/ui/Main2Activity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 4439
    const v0, 0x7f0d00ef

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->f:Landroid/view/View;

    .line 4440
    const v0, 0x7f0d00d0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->g:Landroid/widget/TextView;

    .line 4441
    const v0, 0x7f0d00f1

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->h:Landroid/widget/TextView;

    .line 4442
    const v0, 0x7f0d00d1

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->i:Landroid/widget/TextView;

    .line 4443
    const v0, 0x7f0d00d3

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->j:Landroid/widget/TextView;

    .line 4444
    const v0, 0x7f0d00f0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->n:Landroid/widget/ImageView;

    .line 4445
    const v0, 0x7f0d00f2

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->k:Landroid/widget/TextView;

    .line 4446
    const v0, 0x7f0d00f3

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->l:Landroid/widget/TextView;

    .line 4447
    const v0, 0x7f0d00f4

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->m:Landroid/widget/TextView;

    .line 4448
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4449
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4450
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4451
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4452
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4453
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4455
    const v0, 0x7f04000d

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->p:Landroid/view/animation/Animation;

    .line 339
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.nutspace.action.resume.main"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 341
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "index"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    .line 347
    :goto_2
    iget v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->d(I)V

    .line 349
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 350
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->r()V

    .line 5052
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 5053
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5054
    const-string v4, "com.nutspace.action.sync.server"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5055
    const/high16 v4, 0x20000000

    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 5057
    if-eqz v3, :cond_2

    .line 5058
    const-string v4, "old sync alarm is exist"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5059
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 6035
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6036
    const-string v3, "com.nutspace.action.sync.server"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6037
    const/16 v3, 0x3e8

    const/high16 v4, 0x8000000

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 6039
    if-eqz v0, :cond_6

    move v0, v1

    .line 5044
    :goto_3
    if-nez v0, :cond_7

    .line 5045
    invoke-static {p0}, Lcom/nut/blehunter/d/b;->a(Landroid/content/Context;)V

    .line 352
    :goto_4
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->s()V

    .line 353
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_0

    .line 4391
    :cond_3
    sget-object v4, Lcom/nut/blehunter/ui/b/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v7, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_1

    .line 342
    :cond_4
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/l;->c()Z

    move-result v0

    if-nez v0, :cond_5

    .line 343
    iput v2, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    goto :goto_2

    .line 345
    :cond_5
    iput v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    goto :goto_2

    :cond_6
    move v0, v2

    .line 6039
    goto :goto_3

    .line 5047
    :cond_7
    const-string v0, "sync alarm is exist"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 355
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/Main2Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
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
    .line 1264
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 1265
    if-nez v0, :cond_0

    const-string v0, ""

    move-object v1, v0

    .line 1266
    :goto_0
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/nut/blehunter/provider/c;->a:Landroid/net/Uri;

    sget-object v3, Lcom/nut/blehunter/provider/j;->b:[Ljava/lang/String;

    const-string v4, "user_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const-string v6, "friend_index ASC"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1265
    :cond_0
    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 678
    iget v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    if-nez v0, :cond_2

    .line 679
    sget-object v0, Lcom/nut/blehunter/ui/b/ac;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/b/ac;

    .line 680
    if-eqz v0, :cond_0

    .line 11531
    iget-boolean v0, v0, Lcom/nut/blehunter/ui/b/ac;->d:Z

    .line 681
    if-eqz v0, :cond_1

    .line 682
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 698
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/nut/blehunter/ui/Main2Activity;->d:Landroid/view/Menu;

    .line 699
    return v2

    .line 684
    :cond_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 685
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/Main2Activity;->a(Landroid/view/Menu;)V

    goto :goto_0

    .line 688
    :cond_2
    iget v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    if-ne v0, v2, :cond_3

    .line 689
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    goto :goto_0

    .line 690
    :cond_3
    iget v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 691
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 692
    const v0, 0x7f0d024e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 693
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 694
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 695
    iget v0, v0, Lcom/nut/blehunter/entity/User;->q:I

    if-lez v0, :cond_4

    const v0, 0x7f020272

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    const v0, 0x7f0201e1

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 1182
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->c()V

    .line 1183
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onDestroy()V

    .line 1184
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 109
    check-cast p2, Landroid/database/Cursor;

    .line 26272
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 26276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26277
    if-eqz p2, :cond_1

    .line 26278
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26279
    invoke-static {}, Lcom/nut/blehunter/provider/j;->b()Lcom/nut/blehunter/provider/j;

    invoke-static {p2}, Lcom/nut/blehunter/provider/j;->a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/Friend;

    move-result-object v1

    .line 26280
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26281
    iget-object v2, p0, Lcom/nut/blehunter/ui/Main2Activity;->A:Lcom/nut/blehunter/entity/Friend;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nut/blehunter/ui/Main2Activity;->A:Lcom/nut/blehunter/entity/Friend;

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/entity/Friend;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26282
    iget-object v2, p0, Lcom/nut/blehunter/ui/Main2Activity;->A:Lcom/nut/blehunter/entity/Friend;

    iget-boolean v2, v2, Lcom/nut/blehunter/entity/Friend;->j:Z

    iput-boolean v2, v1, Lcom/nut/blehunter/entity/Friend;->j:Z

    .line 26283
    iput-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->A:Lcom/nut/blehunter/entity/Friend;

    goto :goto_0

    .line 26287
    :cond_1
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->a(Ljava/util/ArrayList;)Z

    move-result v8

    .line 26288
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 26289
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26291
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26292
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 26293
    new-instance v1, Lcom/nut/blehunter/entity/Friend;

    invoke-direct {v1}, Lcom/nut/blehunter/entity/Friend;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/nut/blehunter/entity/Friend;->a(Lcom/nut/blehunter/entity/User;I)Lcom/nut/blehunter/entity/Friend;

    move-result-object v0

    .line 26294
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->B:Lcom/nut/blehunter/entity/CustomLatLng;

    if-eqz v1, :cond_2

    .line 26295
    new-instance v1, Lcom/nut/blehunter/entity/Position;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/nut/blehunter/ui/Main2Activity;->B:Lcom/nut/blehunter/entity/CustomLatLng;

    .line 27048
    iget-wide v4, v4, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 26295
    iget-object v6, p0, Lcom/nut/blehunter/ui/Main2Activity;->B:Lcom/nut/blehunter/entity/CustomLatLng;

    .line 27052
    iget-wide v6, v6, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 26295
    invoke-direct/range {v1 .. v7}, Lcom/nut/blehunter/entity/Position;-><init>(JDD)V

    iput-object v1, v0, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    .line 26297
    :cond_2
    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26299
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->r:Lcom/nut/blehunter/ui/a/g;

    if-eqz v0, :cond_4

    .line 26300
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->r:Lcom/nut/blehunter/ui/a/g;

    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/a/g;->a(Ljava/util/List;)V

    .line 26302
    :cond_4
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->v:Z

    if-eqz v0, :cond_5

    if-eqz v8, :cond_5

    .line 26303
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->b(Ljava/util/ArrayList;)V

    .line 109
    :cond_5
    return-void
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
    .line 1355
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/16 v5, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1215
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onNewIntent(Landroid/content/Intent;)V

    .line 1216
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1217
    const-string v3, "com.nutspace.action.logout"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1218
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1219
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->r:Lcom/nut/blehunter/ui/a/g;

    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/a/g;->a(Ljava/util/List;)V

    .line 1220
    sget-object v0, Lcom/nut/blehunter/ui/b/i;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/b/i;

    .line 1221
    if-eqz v0, :cond_0

    .line 1222
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/i;->f_()V

    .line 1224
    :cond_0
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->z()V

    .line 1225
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/Main2Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1236
    :cond_1
    :goto_0
    return-void

    .line 1226
    :cond_2
    const-string v3, "com.nutspace.action.resume.main"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1227
    const-string v0, "index"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    .line 1228
    iget v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->w:Z

    .line 1229
    iget v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->d(I)V

    .line 1230
    const-string v0, "show_tips"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23239
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/nut/blehunter/ui/JumpWebViewActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23240
    const-string v3, "URL"

    sget-object v4, Lcom/nut/blehunter/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23241
    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 23242
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 23258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_5

    .line 23259
    :goto_2
    if-eqz v1, :cond_6

    const v0, 0x7f0201ff

    .line 23242
    :goto_3
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f06012a

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/Main2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f060129

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/Main2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 23247
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_3

    .line 23248
    const-string v1, "#35b68e"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 23250
    :cond_3
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 23251
    const/4 v0, 0x6

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 23252
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 23253
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 23254
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 1228
    goto :goto_1

    :cond_5
    move v1, v2

    .line 23258
    goto :goto_2

    .line 23259
    :cond_6
    const v0, 0x7f0201fe

    goto :goto_3

    .line 1233
    :cond_7
    const-string v1, "com.nutspace.action.back.launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1234
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->onBackPressed()V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 714
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 735
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 716
    :pswitch_1
    invoke-static {p0}, Lcom/nut/blehunter/d/l;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->a(Z)V

    .line 11757
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 11758
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11759
    const-string v2, "com.nutspace.action.temp_not_disturb"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11760
    const/16 v2, 0x3e8

    const/high16 v3, 0x20000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 11762
    if-eqz v1, :cond_0

    .line 11763
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 719
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;J)V

    .line 720
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->d:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->a(Landroid/view/Menu;)V

    .line 721
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->x()V

    .line 722
    const/4 v0, 0x0

    const v1, 0x7f06013c

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/Main2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 723
    const-string v0, "interim_silent_off"

    .line 12281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 725
    :cond_1
    invoke-static {}, Lcom/nut/blehunter/ui/b/a/r;->a()Lcom/nut/blehunter/ui/b/a/r;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "not_disturb_time_pick"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/r;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 731
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/NotificationCenterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 714
    :pswitch_data_0
    .packed-switch 0x7f0d024e
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 1095
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->z()V

    .line 1096
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onPause()V

    .line 1097
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1049
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onResume()V

    .line 1050
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1051
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->x()V

    .line 1052
    invoke-direct {p0}, Lcom/nut/blehunter/ui/Main2Activity;->y()V

    .line 1053
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->C:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->u:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/Main2Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 21037
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/u;->d()Z

    move-result v0

    .line 1054
    if-eqz v0, :cond_2

    .line 1055
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->a()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->b()Ljava/lang/String;

    move-result-object v0

    .line 1056
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1057
    const-string v1, "3"

    invoke-static {p0, v0, v1}, Lcom/nut/blehunter/push/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    const-string v0, "FCM getToken failure."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1062
    :cond_2
    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1063
    invoke-static {p0}, Lcom/umeng/message/UmengRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1065
    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->disable()V

    .line 21085
    :cond_3
    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/cm;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/cm;-><init>(Lcom/nut/blehunter/ui/Main2Activity;)V

    invoke-virtual {v0, v1}, Lcom/umeng/message/PushAgent;->enable(Lcom/umeng/message/IUmengRegisterCallback;)V

    .line 1073
    :goto_1
    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    const-class v1, Lcom/nut/blehunter/push/umeng/UmengPushIntentService;

    invoke-virtual {v0, v1}, Lcom/umeng/message/PushAgent;->setPushIntentServiceClass(Ljava/lang/Class;)V

    .line 1074
    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/umeng/message/PushAgent;->setDebugMode(Z)V

    goto :goto_0

    .line 1068
    :cond_4
    const-string v1, "4"

    invoke-static {p0, v0, v1}, Lcom/nut/blehunter/push/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22037
    :cond_5
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/u;->d()Z

    move-result v0

    .line 1077
    if-nez v0, :cond_0

    .line 1078
    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->disable()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 1028
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onStart()V

    .line 1029
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->f()V

    .line 1030
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->b:Lcom/nut/blehunter/n;

    invoke-virtual {v0}, Lcom/nut/blehunter/n;->a()V

    .line 20035
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20038
    sget-object v0, Lcom/nut/blehunter/ui/b/i;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/b/i;

    .line 20039
    if-eqz v0, :cond_0

    .line 20040
    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/s;)V

    .line 20041
    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/t;)V

    .line 20042
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/i;->b(Z)V

    .line 20043
    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/v;)V

    .line 1032
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1111
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/Main2Activity;->g()V

    .line 1112
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->b:Lcom/nut/blehunter/n;

    invoke-virtual {v0}, Lcom/nut/blehunter/n;->b()V

    .line 22124
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22127
    sget-object v0, Lcom/nut/blehunter/ui/b/i;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/b/i;

    .line 22128
    if-eqz v0, :cond_0

    .line 22129
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/i;->c()V

    .line 22130
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/s;)V

    .line 22131
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/t;)V

    .line 22132
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/v;)V

    .line 1114
    :cond_0
    invoke-static {}, Lcom/nut/blehunter/provider/j;->b()Lcom/nut/blehunter/provider/j;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/j;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1116
    const-string v1, "com.nutspace.action.sync.friends.index"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1117
    const-string v1, "friends"

    iget-object v2, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1118
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1120
    :cond_1
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onStop()V

    .line 1121
    return-void
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 1366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->v:Z

    .line 1367
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->s:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->b(Ljava/util/ArrayList;)V

    .line 1370
    :cond_0
    sget-object v0, Lcom/nut/blehunter/ui/b/i;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/b/i;

    .line 1371
    if-eqz v0, :cond_1

    .line 1372
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/i;->d()V

    .line 1374
    :cond_1
    return-void
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 1474
    iget v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    if-nez v0, :cond_0

    .line 1475
    iget v0, p0, Lcom/nut/blehunter/ui/Main2Activity;->t:I

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/Main2Activity;->d(I)V

    .line 1477
    :cond_0
    return-void
.end method
