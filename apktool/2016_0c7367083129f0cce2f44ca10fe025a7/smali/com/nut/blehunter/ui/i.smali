.class public Lcom/nut/blehunter/ui/i;
.super Lcom/nut/blehunter/ui/b;
.source "BaseSetRegionActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnSuggestionListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/nut/blehunter/ui/b/p;
.implements Lcom/nut/blehunter/ui/b/q;
.implements Lcom/nut/blehunter/ui/b/r;
.implements Lcom/nut/blehunter/ui/b/s;
.implements Lcom/nut/blehunter/ui/b/t;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field e:Lcom/nut/blehunter/entity/Nut;

.field f:Lcom/nut/blehunter/entity/Region;

.field g:Lcom/nut/blehunter/ui/m;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Landroid/widget/SeekBar;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/SearchView;

.field private p:Lcom/nut/blehunter/ui/b/i;

.field private q:Landroid/os/Handler;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Landroid/widget/ProgressBar;

.field private u:Landroid/widget/SimpleCursorAdapter;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/nut/blehunter/entity/CustomLatLng;

.field private x:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/nut/blehunter/ui/i;->a:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/nut/blehunter/ui/i;->b:I

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/nut/blehunter/ui/i;->c:I

    .line 48
    const/4 v0, 0x4

    iput v0, p0, Lcom/nut/blehunter/ui/i;->d:I

    .line 78
    new-instance v0, Lcom/nut/blehunter/entity/Region;

    invoke-direct {v0}, Lcom/nut/blehunter/entity/Region;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/i;->v:Ljava/util/ArrayList;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ui/i;->w:Lcom/nut/blehunter/entity/CustomLatLng;

    .line 88
    new-instance v0, Lcom/nut/blehunter/ui/j;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/j;-><init>(Lcom/nut/blehunter/ui/i;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/i;->x:Ljava/lang/Runnable;

    .line 460
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/i;Lcom/nut/blehunter/entity/CustomLatLng;)Lcom/nut/blehunter/entity/CustomLatLng;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/nut/blehunter/ui/i;->w:Lcom/nut/blehunter/entity/CustomLatLng;

    return-object p1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/i;)Lcom/nut/blehunter/ui/b/i;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    return-object v0
.end method

.method private a(Lcom/nut/blehunter/entity/Region;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    if-nez v1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    iget-object v2, p0, Lcom/nut/blehunter/ui/i;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/lang/String;)V

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/b/i;->e()V

    .line 172
    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {p1}, Lcom/nut/blehunter/entity/Region;->b()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v2

    iget-object v3, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    iget v3, v3, Lcom/nut/blehunter/entity/Region;->d:I

    int-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/entity/CustomLatLng;D)V

    .line 174
    iget v1, p0, Lcom/nut/blehunter/ui/i;->k:I

    packed-switch v1, :pswitch_data_0

    .line 184
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    const-string v2, ""

    invoke-virtual {p1}, Lcom/nut/blehunter/entity/Region;->b()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/i;->r:Ljava/lang/String;

    goto :goto_0

    .line 177
    :pswitch_1
    const/4 v0, 0x4

    .line 178
    goto :goto_1

    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/i;)Lcom/nut/blehunter/entity/Region;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    return-object v0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 289
    if-eqz p1, :cond_1

    .line 290
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->g:Lcom/nut/blehunter/ui/m;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->g:Lcom/nut/blehunter/ui/m;

    invoke-interface {v0}, Lcom/nut/blehunter/ui/m;->d_()V

    .line 293
    :cond_0
    const v0, 0x7f0d0087

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->t:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 301
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->g:Lcom/nut/blehunter/ui/m;

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->g:Lcom/nut/blehunter/ui/m;

    invoke-interface {v0}, Lcom/nut/blehunter/ui/m;->b()V

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->t:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/i;)Lcom/nut/blehunter/entity/CustomLatLng;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->w:Lcom/nut/blehunter/entity/CustomLatLng;

    return-object v0
.end method

.method static synthetic d(Lcom/nut/blehunter/ui/i;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/i;->b(Z)V

    return-void
.end method

.method static synthetic e(Lcom/nut/blehunter/ui/i;)Lcom/nut/blehunter/entity/Nut;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->e:Lcom/nut/blehunter/entity/Nut;

    return-object v0
.end method

.method static synthetic f(Lcom/nut/blehunter/ui/i;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/nut/blehunter/ui/i;->r()V

    return-void
.end method

.method static synthetic g(Lcom/nut/blehunter/ui/i;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/nut/blehunter/ui/i;->k:I

    return v0
.end method

.method private q()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/Region;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    iget v0, v0, Lcom/nut/blehunter/entity/Region;->d:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nut/blehunter/ui/i;->j:I

    goto :goto_0
.end method

.method private r()V
    .locals 4

    .prologue
    .line 276
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->q:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->q:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->x:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 286
    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/entity/CustomLatLng;)V
    .locals 4

    .prologue
    .line 372
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    if-nez v0, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/Region;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    .line 4048
    iget-wide v2, p1, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 376
    iput-wide v2, v0, Lcom/nut/blehunter/entity/Region;->b:D

    .line 377
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    .line 4052
    iget-wide v2, p1, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 377
    iput-wide v2, v0, Lcom/nut/blehunter/entity/Region;->c:D

    .line 378
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->m:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/nut/blehunter/ui/i;->i:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/nut/blehunter/entity/Region;->d:I

    .line 379
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/i;->a(Lcom/nut/blehunter/entity/Region;)V

    .line 380
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/entity/CustomLatLng;Z)V

    .line 381
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->q:Landroid/os/Handler;

    new-instance v1, Lcom/nut/blehunter/ui/l;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/l;-><init>(Lcom/nut/blehunter/ui/i;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;DDI)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    iput-object p1, v0, Lcom/nut/blehunter/entity/Region;->a:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    iput-wide p2, v0, Lcom/nut/blehunter/entity/Region;->b:D

    .line 129
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    iput-wide p4, v0, Lcom/nut/blehunter/entity/Region;->c:D

    .line 130
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    iput p6, v0, Lcom/nut/blehunter/entity/Region;->d:I

    .line 131
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 395
    .line 4253
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 4254
    :goto_0
    return-void

    .line 4256
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4257
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4258
    new-instance v2, Landroid/database/MatrixCursor;

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v1

    const-string v3, "cityName"

    aput-object v3, v0, v5

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move v0, v1

    .line 4259
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 4260
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 4259
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4262
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->u:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 246
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 247
    :goto_0
    const v1, 0x7f0d0084

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/i;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 248
    const v1, 0x7f0d0085

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/i;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 249
    const v1, 0x7f0d0089

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/i;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 250
    return-void

    .line 246
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final b(Lcom/nut/blehunter/entity/CustomLatLng;)V
    .locals 4

    .prologue
    .line 411
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    .line 5048
    iget-wide v2, p1, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 411
    iput-wide v2, v0, Lcom/nut/blehunter/entity/Region;->b:D

    .line 412
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    .line 5052
    iget-wide v2, p1, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 412
    iput-wide v2, v0, Lcom/nut/blehunter/entity/Region;->c:D

    .line 413
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/i;->a(Lcom/nut/blehunter/entity/Region;)V

    .line 414
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    if-nez v0, :cond_0

    .line 335
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/p;)V

    goto :goto_0
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 120
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nut/blehunter/ui/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/i;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final c(Lcom/nut/blehunter/entity/CustomLatLng;)V
    .locals 4

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/i;->s:Z

    if-eqz v0, :cond_0

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/i;->s:Z

    .line 426
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    .line 6048
    iget-wide v2, p1, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 422
    iput-wide v2, v0, Lcom/nut/blehunter/entity/Region;->b:D

    .line 423
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    .line 6052
    iget-wide v2, p1, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 423
    iput-wide v2, v0, Lcom/nut/blehunter/entity/Region;->c:D

    .line 424
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/i;->a(Lcom/nut/blehunter/entity/Region;)V

    .line 425
    invoke-direct {p0}, Lcom/nut/blehunter/ui/i;->r()V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 400
    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " "

    :goto_0
    iput-object v0, v1, Lcom/nut/blehunter/entity/Region;->a:Ljava/lang/String;

    .line 401
    const v0, 0x7f0d0087

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Region;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/i;->b(Z)V

    .line 403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-static {p0}, Lcom/nut/blehunter/d/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f06009c

    .line 405
    :goto_1
    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    .line 407
    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    .line 400
    goto :goto_0

    .line 404
    :cond_2
    const v0, 0x7f0600f3

    goto :goto_1
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    if-nez v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/p;)V

    goto :goto_0
.end method

.method public final d(I)V
    .locals 2

    .prologue
    const/16 v1, 0xc8

    .line 138
    iput p1, p0, Lcom/nut/blehunter/ui/i;->k:I

    .line 139
    packed-switch p1, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 142
    :pswitch_0
    iput v1, p0, Lcom/nut/blehunter/ui/i;->j:I

    .line 143
    const/16 v0, 0x1388

    iput v0, p0, Lcom/nut/blehunter/ui/i;->h:I

    .line 144
    iput v1, p0, Lcom/nut/blehunter/ui/i;->i:I

    goto :goto_0

    .line 148
    :pswitch_1
    iput v1, p0, Lcom/nut/blehunter/ui/i;->j:I

    .line 149
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/nut/blehunter/ui/i;->h:I

    .line 150
    iput v1, p0, Lcom/nut/blehunter/ui/i;->i:I

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 103
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/i;->setContentView(I)V

    .line 105
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/i;->a(Ljava/lang/String;)V

    .line 1197
    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/nut/blehunter/ui/i;->m:Landroid/widget/SeekBar;

    .line 1198
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->m:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/nut/blehunter/ui/i;->h:I

    iget v2, p0, Lcom/nut/blehunter/ui/i;->i:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1199
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->m:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/nut/blehunter/ui/i;->q()I

    move-result v1

    iget v2, p0, Lcom/nut/blehunter/ui/i;->i:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1201
    const v0, 0x7f0d008a

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/nut/blehunter/ui/i;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1202
    const v0, 0x7f0d008b

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/nut/blehunter/ui/i;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1204
    const v0, 0x7f0d0086

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/nut/blehunter/ui/i;->t:Landroid/widget/ProgressBar;

    .line 1205
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->t:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1207
    const v0, 0x7f0d0088

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/i;->n:Landroid/widget/TextView;

    .line 1208
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->n:Landroid/widget/TextView;

    const v1, 0x7f060192

    new-array v2, v7, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/nut/blehunter/ui/i;->q()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ui/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1210
    const v0, 0x7f0d0087

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2192
    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/Region;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Region;->a:Ljava/lang/String;

    .line 1210
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    new-array v4, v7, [Ljava/lang/String;

    const-string v0, "cityName"

    aput-object v0, v4, v8

    .line 1213
    new-array v5, v7, [I

    const v0, 0x1020014

    aput v0, v5, v8

    .line 1214
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090003

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/i;->u:Landroid/widget/SimpleCursorAdapter;

    .line 1217
    const v0, 0x7f0d0084

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/i;->o:Landroid/widget/SearchView;

    .line 1218
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->o:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 1219
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->o:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    .line 1220
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->o:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->u:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V

    .line 1222
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->o:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "android:id/search_src_text"

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 1224
    if-eqz v0, :cond_0

    .line 1225
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    .line 1226
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/AutoCompleteTextView;->setTextSize(IF)V

    .line 1229
    :cond_0
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/n;->a(Landroid/content/Context;)Lcom/nut/blehunter/ui/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    .line 1230
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    if-eqz v0, :cond_1

    .line 1231
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/s;)V

    .line 1232
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/t;)V

    .line 1233
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/r;)V

    .line 1234
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/q;)V

    .line 1235
    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/Region;->a()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v7

    :goto_1
    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/b/i;->a(Z)V

    .line 1236
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/i;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0d008d

    iget-object v2, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    iget-object v3, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v3}, Lcom/nut/blehunter/ui/b/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1240
    :cond_1
    iget v0, p0, Lcom/nut/blehunter/ui/i;->k:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lcom/nut/blehunter/ui/i;->k:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1241
    :cond_2
    invoke-virtual {p0, v8}, Lcom/nut/blehunter/ui/i;->a(Z)V

    .line 107
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/i;->q:Landroid/os/Handler;

    .line 108
    return-void

    .line 2192
    :cond_4
    const-string v1, ""

    goto/16 :goto_0

    :cond_5
    move v0, v8

    .line 1235
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onDestroy()V

    .line 113
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->q:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    .prologue
    .line 316
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->m:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_1

    .line 317
    iget v0, p0, Lcom/nut/blehunter/ui/i;->i:I

    add-int/2addr v0, p2

    .line 2325
    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    if-eqz v1, :cond_0

    .line 2326
    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/b/i;->a(I)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    iget v1, p0, Lcom/nut/blehunter/ui/i;->i:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/nut/blehunter/entity/Region;->d:I

    .line 319
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->n:Landroid/widget/TextView;

    const v1, 0x7f060192

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    iget v4, v4, Lcom/nut/blehunter/entity/Region;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ui/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    iget-object v2, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    iget v2, v2, Lcom/nut/blehunter/entity/Region;->d:I

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/i;->b(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/i;->a(F)V

    .line 322
    :cond_1
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, p1}, Lcom/nut/blehunter/ui/b/i;->b(Ljava/lang/String;)V

    .line 433
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 438
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, p1}, Lcom/nut/blehunter/ui/b/i;->c(Ljava/lang/String;)V

    .line 440
    iput-boolean v1, p0, Lcom/nut/blehunter/ui/i;->s:Z

    .line 442
    :cond_0
    return v1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public onSuggestionClick(I)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 447
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 452
    :cond_0
    :goto_0
    return v3

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 451
    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->o:Landroid/widget/SearchView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public onSuggestionSelect(I)Z
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public final p()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    .line 349
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->m:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 350
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->e:Lcom/nut/blehunter/entity/Nut;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->e:Lcom/nut/blehunter/entity/Nut;

    .line 3266
    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    if-nez v1, :cond_2

    .line 353
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/Region;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/i;->a(Lcom/nut/blehunter/entity/Region;)V

    .line 355
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    iget-object v1, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/Region;->b()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/entity/CustomLatLng;Z)V

    .line 356
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->q:Landroid/os/Handler;

    new-instance v1, Lcom/nut/blehunter/ui/k;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/k;-><init>(Lcom/nut/blehunter/ui/i;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 368
    :cond_1
    return-void

    .line 3269
    :cond_2
    iget-wide v2, v0, Lcom/nut/blehunter/entity/Nut;->b:J

    invoke-static {v2, v3}, Lcom/nut/blehunter/d/e;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 3270
    const v2, 0x7f06015c

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/nut/blehunter/ui/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3271
    iget-object v2, v0, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    .line 3272
    iget-object v3, p0, Lcom/nut/blehunter/ui/i;->p:Lcom/nut/blehunter/ui/b/i;

    new-instance v4, Lcom/nut/blehunter/entity/CustomLatLng;

    iget-wide v6, v2, Lcom/nut/blehunter/entity/PositionRecord;->e:D

    iget-wide v8, v2, Lcom/nut/blehunter/entity/PositionRecord;->d:D

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DD)V

    invoke-virtual {v3, v1, v4, v5, v0}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;ILcom/nut/blehunter/entity/Nut;)Ljava/lang/String;

    goto :goto_0
.end method
